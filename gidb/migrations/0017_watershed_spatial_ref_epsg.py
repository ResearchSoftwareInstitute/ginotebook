# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-04-07 01:01
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0016_auto_20160302_1950'),
    ]

    operations = [
        migrations.AddField(
            model_name='watershed',
            name='spatial_ref_epsg',
            field=models.IntegerField(default=b'4326'),
        ),
    ]
