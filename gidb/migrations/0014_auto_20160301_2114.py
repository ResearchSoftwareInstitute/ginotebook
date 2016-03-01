# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0013_auto_20160301_2042'),
    ]

    operations = [
        migrations.CreateModel(
            name='ModelType',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=64)),
                ('code', models.CharField(max_length=16)),
            ],
            options={
                'verbose_name': 'Model type',
            },
        ),
        migrations.CreateModel(
            name='WatershedModel',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('model_url', models.URLField(max_length=1024)),
                ('model_type', models.ForeignKey(related_name='models', to='gidb.ModelType')),
            ],
            options={
                'verbose_name': 'Watershed',
            },
        ),
        migrations.RemoveField(
            model_name='watershed',
            name='model_url',
        ),
        migrations.AddField(
            model_name='watershedmodel',
            name='watershed',
            field=models.ForeignKey(related_name='models', to='gidb.Watershed'),
        ),
    ]
