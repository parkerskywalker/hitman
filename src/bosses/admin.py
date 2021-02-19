from django.contrib import admin

from bosses.models import Boss

class BossAdmin(admin.ModelAdmin):
    pass
admin.site.register(Boss, BossAdmin)
