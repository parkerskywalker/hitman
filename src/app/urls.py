from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path("", include("login.urls", namespace="login")),

    path("hits/", include("giuseppi.urls", namespace="giuseppi")),
    path("hitmans/", include("hitmans.urls", namespace="hitmans")),
    path("bosses/", include("bosses.urls", namespace="bosses")),
]
