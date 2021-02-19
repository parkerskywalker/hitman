from django.db import models
from app.models import BaseModel

# Create your models here.
class Profiles(BaseModel):
    description = models.CharField("Description", null=False, blank=False, max_length=50)

    class Meta:
        verbose_name = "Profile"
        verbose_name_plural = "Profiles"

    def __str__(self):
        return self.description


class StatusHitman(BaseModel):
    description = models.CharField("Description", null=False, blank=False, max_length=50)

    class Meta:
        verbose_name = "Status"
        verbose_name_plural = "Status hitman's"

    def __str__(self):
        return self.description


class StatusHits(BaseModel)        :
    description = models.CharField("Description", null=False, blank=False, max_length=50)

    class Meta:
        verbose_name ="Status"
        verbose_name_plural = "Status hit's"

    def __str__(self):
        return self.description
