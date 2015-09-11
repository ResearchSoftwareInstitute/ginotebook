# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django.contrib.gis.db.models.fields


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0003_auto_20150806_1437'),
    ]

    operations = [
        migrations.AddField(
            model_name='watershed',
            name='location_poly',
            field=django.contrib.gis.db.models.fields.PolygonField(srid=4326, null=True, blank=True),
        ),
    ]
