from django.contrib import admin
from django.contrib.auth.models import Permission
from hitmans.models import Hitman


class HitmanAdmin(admin.ModelAdmin):
    pass
admin.site.register(Hitman, HitmanAdmin)
admin.site.register(Permission)
