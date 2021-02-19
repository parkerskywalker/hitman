# Generated by Django 3.1.6 on 2021-02-17 03:23

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Profiles',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('create_date', models.DateTimeField(auto_now_add=True, verbose_name='Created')),
                ('modified_date', models.DateTimeField(auto_now_add=True, verbose_name='Modified')),
                ('description', models.CharField(max_length=50, verbose_name='Description')),
            ],
            options={
                'verbose_name': 'Profile',
                'verbose_name_plural': 'Profiles',
            },
        ),
        migrations.CreateModel(
            name='StatusHitman',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('create_date', models.DateTimeField(auto_now_add=True, verbose_name='Created')),
                ('modified_date', models.DateTimeField(auto_now_add=True, verbose_name='Modified')),
                ('description', models.CharField(max_length=50, verbose_name='Description')),
            ],
            options={
                'verbose_name': 'Status',
                'verbose_name_plural': "Status hitman's",
            },
        ),
        migrations.CreateModel(
            name='StatusHits',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('create_date', models.DateTimeField(auto_now_add=True, verbose_name='Created')),
                ('modified_date', models.DateTimeField(auto_now_add=True, verbose_name='Modified')),
                ('description', models.CharField(max_length=50, verbose_name='Description')),
            ],
            options={
                'verbose_name': 'Status',
                'verbose_name_plural': "Status hit's",
            },
        ),
    ]