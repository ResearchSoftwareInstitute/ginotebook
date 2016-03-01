# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0011_region_boundary'),
    ]

    operations = [
        migrations.CreateModel(
            name='GIType',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=64)),
            ],
            options={
                'verbose_name': 'Green infrastructure type',
            },
        ),
        migrations.AlterModelOptions(
            name='region',
            options={'verbose_name': 'Region'},
        ),
        migrations.AddField(
            model_name='gitemplate',
            name='gi_type',
            field=models.ForeignKey(blank=True, to='gidb.GIType', null=True),
        ),
    ]
