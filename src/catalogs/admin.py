from django.contrib import admin
from catalogs.models import Profiles, StatusHitman, StatusHits

class ProfilesAdmin(admin.ModelAdmin):
    pass
admin.site.register(Profiles, ProfilesAdmin)


class StatusHitmanAdmin(admin.ModelAdmin):
    pass
admin.site.register(StatusHitman, StatusHitmanAdmin)


class StatusHitsAdmin(admin.ModelAdmin):
    pass
admin.site.register(StatusHits, StatusHitmanAdmin)
