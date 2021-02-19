from django.contrib import admin
from django.contrib.auth.models import Permission
from hits.models import Hit

class HitAdmin(admin.ModelAdmin):
    pass
admin.site.register(Hit, HitAdmin)
