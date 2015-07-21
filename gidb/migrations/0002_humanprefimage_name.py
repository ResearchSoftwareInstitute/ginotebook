# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='humanprefimage',
            name='name',
            field=models.CharField(default='default name', max_length=64),
            preserve_default=False,
        ),
    ]
