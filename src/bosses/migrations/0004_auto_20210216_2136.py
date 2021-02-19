# Generated by Django 3.1.6 on 2021-02-17 03:36

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('hits', '0001_initial'),
        ('bosses', '0003_boss_hit'),
    ]

    operations = [
        migrations.AlterField(
            model_name='boss',
            name='hit',
            field=models.ForeignKey(blank=True, default=0, null=True, on_delete=django.db.models.deletion.CASCADE, to='hits.hit'),
        ),
    ]
