# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0005_auto_20160225_1836'),
    ]

    operations = [
        migrations.AlterField(
            model_name='giroutingvertexfrompatch',
            name='route',
            field=models.ForeignKey(related_name='vertices_from_patches', to='gidb.GIRoute'),
        ),
        migrations.AlterField(
            model_name='giroutingvertextogiinstance',
            name='route',
            field=models.ForeignKey(related_name='vertices_to_instances', to='gidb.GIRoute'),
        ),
        migrations.AlterField(
            model_name='giroutingvertextopatch',
            name='route',
            field=models.ForeignKey(related_name='vertices_to_patches', to='gidb.GIRoute'),
        ),
    ]
