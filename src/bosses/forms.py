from django import forms
from django.forms import ModelForm

from hits.models import Hit
from catalogs.models import StatusHits



class CreateHitForm(forms.Form):
    description = forms.CharField(label="Description")
