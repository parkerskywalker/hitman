from django import forms
from django.forms import ModelForm

from hits.models import Hit
from catalogs.models import StatusHits


class CreateGenericHitmanForm(forms.Form):
    nickname = forms.CharField(label="Nickname")
    description = forms.CharField(label="Description")
    #email = forms.EmailField(label="Email")
    password = forms.CharField(label="Password")

class CreateHitForm(forms.Form):
    description = forms.CharField(label="Description")
