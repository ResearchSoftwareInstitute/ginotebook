# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0002_auto_20150725_0053'),
    ]

    operations = [
        migrations.AddField(
            model_name='gielement',
            name='major_axis',
            field=models.FloatField(null=True, blank=True),
        ),
        migrations.AddField(
            model_name='gielement',
            name='minor_axis',
            field=models.FloatField(null=True, blank=True),
        ),
    ]
