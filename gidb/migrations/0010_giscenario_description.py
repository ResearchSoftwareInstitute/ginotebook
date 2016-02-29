# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0009_remove_giinstance_watershed'),
    ]

    operations = [
        migrations.AddField(
            model_name='giscenario',
            name='description',
            field=models.TextField(null=True, blank=True),
        ),
    ]
