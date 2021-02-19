import warnings
from django import forms
from django.contrib import messages
from django.contrib.auth import logout as do_logout
from django.contrib.auth.models import User
from django.contrib.auth.views import LoginView
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, redirect
from django.urls import reverse
from django.views.generic import TemplateView, FormView, DetailView, CreateView

from .forms import EmailAuthenticationForm, RegisterForm
from hitmans.models import Hitman


# Create your views here.
class EmailLoginView(LoginView):
	template_name = 'login.html'
	form_class = EmailAuthenticationForm

	def get_success_url(self):

		if self.request.user.is_superuser:
			return reverse("giuseppi:hits")
		else:

			if self.request.user.boss:
				return reverse("bosses:hits")

			if self.request.user.hitman:
				return reverse("hitmans:index")

def Login(request, *args, **kwargs):
	warnings.warn(
		'The login() view is superseded by the class-based LoginView().'
	)
	return EmailLoginView.as_view(**kwargs)(request, *args, **kwargs)


def Logout(request, *args, **kwargs):
    do_logout(request)

    return redirect('/')


class Register(FormView):
	template_name = "register.html"
	form_class = RegisterForm

	def get_context_data(self, *args, **kwargs):
		context = super().get_context_data()

		return context

	def form_valid(self, form):
		if form.is_valid():
			flagError = False
			data = form.cleaned_data

			if data["nickname"] == "" or len(data["nickname"]) == 0:
				form.add_error("nickname", "Introduzca un nickname")
				flagError = True

			if "@" not in data["email"]:
				form.add_error("email", "El email no es válido")
				flagError = True

			if len(data["password"]) == 0:
				form.add_error("password", "El password no es válido")
				flagError = True

			if flagError:
				return super().form_invalid(form)

			#Create Hitman
			hitman = create_hitman(data)

			return super().form_valid(form)

		else:
			return super().form_invalid(form)


	def form_invalid(self, form):
		return super().form_invalid(form)

	def get_success_url(self):
		return reverse("login:login")
