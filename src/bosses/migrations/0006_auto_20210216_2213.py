# Generated by Django 3.1.6 on 2021-02-17 04:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bosses', '0005_auto_20210216_2213'),
    ]

    operations = [
        migrations.AlterField(
            model_name='boss',
            name='giuseppi',
            field=models.CharField(blank=True, default=1, editable=False, max_length=1, null=True, verbose_name='Giuseppi'),
        ),
    ]
