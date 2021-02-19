from django.db import models
from app.models import BaseModel

from catalogs.models import StatusHits

class Hit(BaseModel):
    description = models.CharField("Description", null=False, blank=False, max_length=250)
    status = models.ForeignKey(StatusHits, on_delete=models.CASCADE)
    registered = models.CharField("Registered", null=True, blank=True, default="", max_length=5)


    def get_hitman(self):
        from bosses.models import Boss
        from hitmans.models import Hitman

        hitmans = Hitman.objects.filter(hit=self.id)
        bosses = Boss.objects.filter(hit=self.id)

        lstHitmans=[]
        dicHitmans={}
        for hitman in hitmans:
            dicHitman={
                "id":hitman.id,
                "nickname":hitman.nickname
            }
            lstHitmans.append(hitman)

        for boss in bosses:
            dicHitman ={
                "id":boss.id,
                "nickname":boss.nickname
            }
            lstHitmans.append(dicHitman)

        return lstHitmans
