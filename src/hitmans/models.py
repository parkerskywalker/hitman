from django.db import models
from django.utils import timezone
from app.models import BaseModel
from django.contrib.auth.models import User

from app.services import generate_password

from catalogs.models import Profiles, StatusHitman
from bosses.models import Boss
from hits.models import Hit

class Hitman(BaseModel):
    user = models.OneToOneField(User, null=True, blank=True, default=0, on_delete=models.CASCADE)
    giuseppi = models.CharField("Giuseppi", default=1, blank=True, null=True, max_length=1, editable=False)
    boss = models.ForeignKey(Boss, null=True, blank=True, on_delete=models.CASCADE)
    nickname = models.CharField("Nickname", null=False, blank=False, max_length=50)
    description = models.CharField("Description", null=False, blank=False, max_length=50)
    profile = models.ForeignKey(Profiles, default=2, verbose_name="Profile", editable=False, on_delete=models.CASCADE)
    status = models.ForeignKey(StatusHitman, default=1, on_delete=models.CASCADE)
    hit = models.ForeignKey(Hit, null=True, blank=True, default=None, on_delete=models.CASCADE)
    pwd = models.CharField("pwd", null=True, blank=True, default="", max_length=50)

    class Meta:
        verbose_name = "Hitman"
        verbose_name_plural = "Hitman's"

    def __str__(self):
        return self.nickname

    def save(self, *args, **kwargs):
        exists = User.objects.filter(id=self.user_id)
        if not exists:

            email = self.nickname.replace(" ", "").lower() + "@" + self.nickname.replace(" ", "").lower() + ".com"

            user = User()
            user.password = self.pwd if self.pwd else ""
            user.last_login = timezone.now()
            user.is_superuser = False
            user.username = self.nickname
            user.first_name = ""
            user.last_name = ""
            user.email = email
            user.is_staff = False
            user.is_active = True
            user.date_joined = timezone.now()
            user.save()

            pwd = generate_password(user)

            self.user_id = user.id

        super().save(*args, **kwargs)
