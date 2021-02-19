from django.shortcuts import render
from django.views.generic import TemplateView, FormView, DetailView, CreateView, ListView

from hitmans.models import Hitman


# Create your views here.
class MyHits(ListView):
    model = Hitman
    template_name = "my-hits.html"

    def get_context_data(self, *args, **kwargs):
        context = super().get_context_data(**kwargs)

        user = self.request.user

        context["object_list"]=Hitman.objects.filter(user_id=user.id).exclude(hit_id=None)

        return context
