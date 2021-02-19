# Generated by Django 3.1.6 on 2021-02-17 03:28

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('bosses', '0002_auto_20210216_2128'),
        ('catalogs', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Hitman',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('create_date', models.DateTimeField(auto_now_add=True, verbose_name='Created')),
                ('modified_date', models.DateTimeField(auto_now_add=True, verbose_name='Modified')),
                ('giuseppi', models.CharField(blank=True, default=1, max_length=1, null=True, verbose_name='Giuseppi')),
                ('nickname', models.CharField(max_length=50, verbose_name='Nickname')),
                ('description', models.CharField(max_length=50, verbose_name='Description')),
                ('boss', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='bosses.boss')),
                ('profile', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='catalogs.profiles', verbose_name='Profile')),
                ('status', models.ForeignKey(default='Active', on_delete=django.db.models.deletion.CASCADE, to='catalogs.statushitman')),
                ('user', models.OneToOneField(default=0, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Hitman',
                'verbose_name_plural': "Hitman's",
            },
        ),
    ]
