# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django.contrib.gis.db.models.fields


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0005_remove_watershed_location_poly'),
    ]

    operations = [
        migrations.CreateModel(
            name='WatershedBoundary',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=64)),
                ('boundary', django.contrib.gis.db.models.fields.PolygonField(srid=4326)),
            ],
        ),
        migrations.AddField(
            model_name='watershed',
            name='boundary',
            field=models.ForeignKey(blank=True, to='gidb.WatershedBoundary', null=True),
        ),
    ]
