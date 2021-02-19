from django.contrib import admin
from django.urls import path, include

from .views import Hits, Hitmans, CreateHit, UpdateHit, AssignHit, ReassignHit, UpdateBoss, UpdateHitman, CreateBoss, CreateHitman

app_name = "giuseppi"

urlpatterns = [
    path("", Hits.as_view(), name="hits"),
    path("hitmans/", Hitmans.as_view(), name="hitmans"),
    path("create/", CreateHit.as_view(), name="create-hit"),
    path("update/<int:pk>/", UpdateHit.as_view(), name="update-hit"),
    path("assign-hit/<int:pk>/", AssignHit.as_view(), name="assign-hit"),
    path("reassign-hit/<int:pk>/", ReassignHit.as_view(), name="reassign-hit"),

    path("create-boss/", CreateBoss.as_view(), name="create-boss"),
    path("update-boss/<int:pk>/", UpdateBoss.as_view(), name="update-boss"),

    path("create-hitman/", CreateHitman.as_view(), name="create-hitman"),
    path("update-hitman/<int:pk>/", UpdateHitman.as_view(), name="update-hitman"),
]
