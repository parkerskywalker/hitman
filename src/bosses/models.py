import datetime
from django.db import models
from app.models import BaseModel
from app.services import generate_password
from django.contrib.auth.models import User

from catalogs.models import Profiles, StatusHitman
from hits.models import Hit



class Boss(BaseModel):
    user = models.OneToOneField(User, blank=True, null=True, default=0, on_delete=models.CASCADE)
    giuseppi = models.CharField("Giuseppi", default=1, blank=True, null=True, max_length=1, editable=False)
    nickname = models.CharField("Nickname", null=False, blank=False, max_length=50)
    description = models.CharField("Description", null=False, blank=False, max_length=50)
    profile = models.ForeignKey(Profiles, default=1, verbose_name="Profile", editable=False, on_delete=models.CASCADE)
    status = models.ForeignKey(StatusHitman, default=1, on_delete=models.CASCADE)
    hit = models.ForeignKey(Hit, blank=True, null=True, default=None, on_delete=models.CASCADE)
    pwd = models.CharField("pwd", null=True, blank=True, default="", max_length=50)

    class Meta:
        verbose_name = "Boss"
        verbose_name_plural = "Bosse's"

    def __str__(self):
        return self.nickname

    def get_hitmans(self):
        from hitmans.models import Hitman

        hitmans = Hitman.objects.filter(boss=self.id)
        return hitmans

    def save(self, *args, **kwargs):
        exists = User.objects.filter(id=self.user_id)
        if not exists:

            email = self.nickname.replace(" ", "").lower() + "@" + self.nickname.replace(" ", "").lower() + ".com"            

            user = User()
            user.password = self.pwd if self.pwd else ""
            user.last_login = datetime.datetime.now()
            user.is_superuser = False
            user.username = self.nickname
            user.first_name = ""
            user.last_name = ""
            user.email = email
            user.is_staff = False
            user.is_active = True
            user.date_joined = datetime.datetime.now()
            user.save()

            pwd = generate_password(user)

            self.user_id = user.id

        super().save(*args, **kwargs)
