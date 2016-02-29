# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0008_giscenario_immutable'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='giinstance',
            name='watershed',
        ),
    ]
