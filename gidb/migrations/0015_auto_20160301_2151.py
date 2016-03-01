# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0014_auto_20160301_2114'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='watershedmodel',
            options={'verbose_name': 'Watershed model'},
        ),
        migrations.AddField(
            model_name='gielement',
            name='ponding_depth',
            field=models.FloatField(null=True, blank=True),
        ),
        migrations.AddField(
            model_name='gielement',
            name='soil_depth',
            field=models.FloatField(null=True, blank=True),
        ),
    ]
