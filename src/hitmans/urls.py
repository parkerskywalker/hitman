from django.urls import path
from .views import MyHits

app_name = "hitmans"

urlpatterns = [
    path("hits/", MyHits.as_view(), name="hits"),

]
