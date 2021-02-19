from django.urls import path
from login.views import Login, Logout, EmailLoginView, Register

app_name = "login"

urlpatterns = [
    path("", Login, name="login"),
    path("logout/", Logout, name="logout"),
    path("registrar/", Register.as_view(), name="register"),    
]
