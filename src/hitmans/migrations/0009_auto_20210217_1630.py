# Generated by Django 3.1.6 on 2021-02-17 22:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('hits', '0001_initial'),
        ('hitmans', '0008_auto_20210217_1628'),
    ]

    operations = [
        migrations.AlterField(
            model_name='hitman',
            name='hit',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='hits.hit'),
        ),
    ]
