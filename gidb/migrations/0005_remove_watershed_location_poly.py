# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0004_watershed_location_poly'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='watershed',
            name='location_poly',
        ),
    ]
