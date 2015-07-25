# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='gielement',
            name='model_3d',
            field=models.ForeignKey(blank=True, to='gidb.Representation3D', null=True),
        ),
        migrations.AlterField(
            model_name='gielement',
            name='model_planview',
            field=models.ForeignKey(blank=True, to='gidb.Representation2D', null=True),
        ),
        migrations.AlterField(
            model_name='gielement',
            name='soil_type',
            field=models.ForeignKey(blank=True, to='gidb.RHESSysSoilType', null=True),
        ),
        migrations.AlterField(
            model_name='gielement',
            name='stratum_type',
            field=models.ForeignKey(blank=True, to='gidb.RHESSysStratumType', null=True),
        ),
    ]
