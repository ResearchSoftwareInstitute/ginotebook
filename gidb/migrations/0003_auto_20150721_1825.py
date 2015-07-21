# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0002_humanprefimage_name'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='RHESSSysSoilType',
            new_name='RHESSysSoilType',
        ),
        migrations.AlterModelOptions(
            name='gielement',
            options={'verbose_name': 'Green infrastructure element'},
        ),
        migrations.AlterModelOptions(
            name='giinstance',
            options={'verbose_name': 'Green infrastructure instance'},
        ),
        migrations.AlterModelOptions(
            name='gitemplate',
            options={'verbose_name': 'Green infrastructure template'},
        ),
        migrations.AlterModelOptions(
            name='giveggrowthstate',
            options={'verbose_name': 'Green infrastructure growth state'},
        ),
        migrations.AlterModelOptions(
            name='humanprefimage',
            options={'verbose_name': 'Human preference image'},
        ),
        migrations.AlterModelOptions(
            name='representation2d',
            options={'verbose_name': '2D visual representation'},
        ),
        migrations.AlterModelOptions(
            name='representation3d',
            options={'verbose_name': '3D visual representation'},
        ),
        migrations.AlterModelOptions(
            name='rhessyssoiltype',
            options={'verbose_name': 'RHESSys soil type'},
        ),
        migrations.AlterModelOptions(
            name='rhessysstratumtype',
            options={'verbose_name': 'RHESSys stratum type'},
        ),
        migrations.AlterModelOptions(
            name='templatesforecoclimate',
            options={'verbose_name': 'Eco-climate GI template'},
        ),
        migrations.AlterModelOptions(
            name='watershed',
            options={'verbose_name': 'Watershed'},
        ),
    ]
