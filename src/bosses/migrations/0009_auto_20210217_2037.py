# Generated by Django 3.1.6 on 2021-02-18 02:37

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('catalogs', '0001_initial'),
        ('bosses', '0008_boss_pwd'),
    ]

    operations = [
        migrations.AlterField(
            model_name='boss',
            name='status',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='catalogs.statushitman'),
        ),
    ]
