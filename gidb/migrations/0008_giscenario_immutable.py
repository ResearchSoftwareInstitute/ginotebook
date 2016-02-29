# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0007_auto_20160225_2137'),
    ]

    operations = [
        migrations.AddField(
            model_name='giscenario',
            name='immutable',
            field=models.BooleanField(default=False),
            preserve_default=False,
        ),
    ]
