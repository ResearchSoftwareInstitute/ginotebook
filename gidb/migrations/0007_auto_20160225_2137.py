# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0006_auto_20160225_1900'),
    ]

    operations = [
        migrations.AlterField(
            model_name='giscenario',
            name='watershed',
            field=models.ForeignKey(related_name='scenarios', to='gidb.Watershed'),
        ),
    ]
