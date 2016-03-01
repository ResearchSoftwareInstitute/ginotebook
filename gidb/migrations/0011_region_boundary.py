# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import django.contrib.gis.db.models.fields


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0010_giscenario_description'),
    ]

    operations = [
        migrations.AddField(
            model_name='region',
            name='boundary',
            field=django.contrib.gis.db.models.fields.PolygonField(srid=4326, null=True, blank=True),
        ),
    ]
