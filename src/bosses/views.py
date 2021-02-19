from django.urls import reverse, reverse_lazy
from django.shortcuts import render, redirect

from django.views.generic import TemplateView, FormView, DetailView, CreateView

from bosses.models import Boss

from .forms import CreateHitForm


# Create your views here.
class Hits(TemplateView):
    template_name = "my-hits.html"

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(**kwargs)

        user = self.request.user
        context["hitmans"] = Boss.objects.filter(user_id=user.id)

        return context



class CreateHit(FormView):
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
            hit.save()

            url = reverse("giuseppi:hits")
            return HttpResponseRedirect(url)
        else:
            return super().form_invalid(form)

    def form_invalid(self, form):
        return super().form_invalid(form)
