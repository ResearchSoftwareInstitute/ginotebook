# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0012_auto_20160301_2033'),
    ]

    operations = [
        migrations.AlterField(
            model_name='gitemplate',
            name='gi_type',
            field=models.ForeignKey(to='gidb.GIType'),
        ),
    ]
