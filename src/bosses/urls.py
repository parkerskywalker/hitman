from django.contrib import admin
from django.urls import path, include

from .views import Hits, CreateHit

app_name = "boss"

urlpatterns = [
    path("", Hits.as_view(), name="hits"),
    path("create/", CreateHit.as_view(), name="create-hit"),
]
