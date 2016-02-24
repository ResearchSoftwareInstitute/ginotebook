# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0002_auto_20151204_2154'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='giroutes',
            options={'verbose_name': 'Green infrastructure route'},
        ),
        migrations.AddField(
            model_name='giscenario',
            name='watershed',
            field=models.ForeignKey(default=1, to='gidb.Watershed'),
            preserve_default=False,
        ),
    ]
