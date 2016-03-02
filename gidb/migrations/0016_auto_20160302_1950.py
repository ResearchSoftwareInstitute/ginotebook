# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0015_auto_20160301_2151'),
    ]

    operations = [
        migrations.AlterField(
            model_name='giscenario',
            name='immutable',
            field=models.BooleanField(default=False),
        ),
    ]
