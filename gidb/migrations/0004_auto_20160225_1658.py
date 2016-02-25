# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0003_auto_20160224_1916'),
    ]

    operations = [
        migrations.AlterField(
            model_name='giroutes',
            name='from_patch',
            field=models.ManyToManyField(related_name='route_list', to='gidb.GIRoutingVertexFromPatch', blank=True),
        ),
        migrations.AlterField(
            model_name='giroutes',
            name='to_gi',
            field=models.ManyToManyField(related_name='route_list', to='gidb.GIRoutingVertexToGIInstance', blank=True),
        ),
        migrations.AlterField(
            model_name='giroutes',
            name='to_patch',
            field=models.ManyToManyField(related_name='route_list', to='gidb.GIRoutingVertexToPatch', blank=True),
        ),
    ]
