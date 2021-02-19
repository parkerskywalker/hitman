from django.contrib.auth.mixins import PermissionRequiredMixin
from django.shortcuts import render
from django.urls import reverse, reverse_lazy
from django.http import HttpResponse, HttpResponseRedirect
from django.views.generic import TemplateView, ListView, FormView, UpdateView

from app.services import create_boss, create_hitman

from hits.models import Hit
from bosses.models import Boss
from hitmans.models import Hitman
from catalogs.models import StatusHits

from .forms import CreateHitForm, CreateGenericHitmanForm

# Create your views here.
class Hits(TemplateView):
    template_name = "hits.html"
    model = Hit

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data()

        if self.request.user.is_superuser:
            context["hits"]=Hit.objects.all()
        elif self.request.user.boss:
            context["hits"]=Hit.objects.filter(registered=self.request.user.boss.user.id)

        return context

class Hitmans(TemplateView):
    template_name = "hitmans.html"

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data()

        if self.request.user.is_superuser:
            context["bosses"]=Boss.objects.all()
            context["hitmans"]=Hitman.objects.all()
        elif self.request.user.boss:
            context["hitmans"]=Hitman.objects.filter(boss_id=self.request.user.boss.id)

        return context

class UpdateBoss(UpdateView):
    model = Boss
    template_name = "update-hitman.html"
    fields = ["nickname", "description", "status"]
    success_url = reverse_lazy("giuseppi:hitmans")

class UpdateHitman(UpdateView):
    model = Hitman
    template_name = "update-hitman.html"
    fields = ["nickname", "description", "status"]
    success_url = reverse_lazy("giuseppi:hitmans")

class CreateBoss(FormView):
    template_name = "create-generic-hitman.html"
    form_class = CreateGenericHitmanForm
    success_url = reverse_lazy("giuseppi:hitmans")

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"]="Boss"

        return context

    def form_valid(self, form):
        if form.is_valid():
            data = form.cleaned_data

            new_boss = create_boss(data)

            url = reverse("giuseppi:hitmans")
            return HttpResponseRedirect(url)
        else:
            return super().form_invalid(form)

    def form_invalid(self, form):
        return super().form_invalid(form)


class CreateHitman(PermissionRequiredMixin, FormView):
    permission_required = 'hitmans.add_hitman'
    template_name = "create-generic-hitman.html"
    form_class = CreateGenericHitmanForm
    success_url = reverse_lazy("giuseppi:hitmans")

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(**kwargs)
        context["title"]="Hitman"

        return context


    def form_valid(self, form):
        if form.is_valid():
            data = form.cleaned_data
            creator = None

            if self.request.user.is_superuser:
                creator = None
            elif self.request.user.boss:
                creator = self.request.user.boss.id

            new_hitman = create_hitman(data, creator)
            url = reverse("giuseppi:hitmans")

            return HttpResponseRedirect(url)
        else:
            return super().fom_invalid(form)


    def form_invalid(self, form):
        return super().form_invalid(form)


class CreateHit(PermissionRequiredMixin, FormView):
    permission_required = 'hits.add_hit'
    template_name = "create-hit.html"
    form_class = CreateHitForm
    success_url = reverse_lazy("giuseppi:hits")

    def get_init(self):
        initial = super(CreateHit, self).get_initial()
        initial = initial.copy()
        status = StatusHits.objects.get(description="UNASSIGNED")
        initial["status"]=status

        return initial

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data()

        context["hits"]=Hit.objects.all()

        return context

    def form_valid(self, form):

        if form.is_valid():
            data = form.cleaned_data
            new_status = StatusHits.objects.get(description="UNASSIGNED")

            hit = Hit()
            hit.description = data["description"]
            hit.status = new_status
            if self.request.user.is_superuser:
                hit.registered = str(self.request.user.id)
            elif self.request.user.boss:
                hit.registered = str(self.request.user.boss.user.id)
            hit.save()

            url = reverse("giuseppi:hits")
            return HttpResponseRedirect(url)
        else:
            return super().form_invalid(form)

    def form_invalid(self, form):
        return super().form_invalid(form)

class UpdateHit(UpdateView):
    template_name = "update-hit.html"
    model = Hit
    fields = ["description", "status"]
    success_url = reverse_lazy("giuseppi:hits")


class AssignHit(TemplateView):
    template_name = "assign-hit.html"

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(**kwargs)
        context["hits"]=Hit.objects.filter(id=self.kwargs["pk"])

        lstHitman=[]
        dicHitman={}
        if self.request.user.is_superuser:
            for hitman in Hitman.objects.filter(status=1):
                dicHitman = {
                    "id":hitman.id,
                    "nickname":hitman.nickname,
                    "type":"H",
                }
                lstHitman.append(dicHitman)

            for boss in Boss.objects.filter(status=1):
                dicHitman = {
                    "id":boss.id,
                    "nickname":boss.nickname,
                    "type":"B"
                }
                lstHitman.append(dicHitman)

            #

        elif self.request.user.boss:
            for hitman in Hitman.objects.filter(status=1, boss_id=self.request.user.boss.id):
                dicHitman = {
                    "id":hitman.id,
                    "nickname":hitman.nickname,
                    "type":"H",
                }
                lstHitman.append(dicHitman)

        context.update({"hitmans":lstHitman})

        return context


    def post(self, *args, **kwargs):

        statusHit = StatusHits.objects.get(description="ASSIGNED")

        if "-H" in self.request.POST["hitman"]:
            pk_hitman = self.request.POST["hitman"].replace("-H", "")
            hit = Hit.objects.get(id=self.kwargs["pk"])
            hitman = Hitman.objects.filter(id=pk_hitman).update(hit=hit)

            updateHit = Hit.objects.filter(id=self.kwargs["pk"]).update(status=statusHit)
        elif "-B" in self.request.POST["hitman"]:
            pk_boss = self.request.POST["hitman"].replace("-B", "")
            hit = Hit.objects.get(id=self.kwargs["pk"])

            boss = Boss.objects.filter(id=pk_boss).update(hit=hit)

            updateHit = Hit.objects.filter(id=pk_boss).update(status=statusHit)


        url = reverse("giuseppi:hits")
        return HttpResponseRedirect(url)

class ReassignHit(TemplateView):
    template_name = "reassign-hit.html"

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data()

        context["hits"]=Hit.objects.get(id=self.kwargs["pk"])

        lstHitman=[]
        dicHitman={}
        for hitman in Hitman.objects.filter(status=1):
            dicHitman = {
                "id":hitman.id,
                "nickname":hitman.nickname,
                "type": "H"
            }
            lstHitman.append(dicHitman)

        for boss in Boss.objects.filter(status=1):
            dicHitman = {
                "id":boss.id,
                "nickname":boss.nickname,
                "type":"B"
            }
            lstHitman.append(dicHitman)

        context.update({"hitmans":lstHitman})
        return context


    def post(self, *args, **kwargs):

        statusHit = StatusHits.objects.get(description="ASSIGNED")

        if "-H" in self.request.POST["hitman"]:
            pk_hitman = self.request.POST["hitman"].replace("-H", "")
            hit = Hit.objects.get(id=self.kwargs["pk"])
            hitman = Hitman.objects.filter(id=pk_hitman).update(hit=hit)

            updateHit = Hit.objects.filter(id=self.kwargs["pk"]).update(status=statusHit)

        elif "-B" in self.request.POST["hitman"]:
            pk_boss = self.request.POST["hitman"].replace("-B", "")
            hit = Hit.objects.get(id=self.kwargs["pk"])
            boss = Boss.objects.filter(id=pk_boss).update(hit=hit)

            updateHit = Hit.objects.filter(id=self.kwargs["pk"]).update(status=statusHit)

        url = reverse("giuseppi:hits")
        return HttpResponseRedirect(url)
