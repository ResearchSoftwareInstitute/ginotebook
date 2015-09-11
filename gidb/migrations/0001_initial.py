# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django.contrib.gis.db.models.fields


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='GIElement',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=64)),
            ],
            options={
                'verbose_name': 'Green infrastructure element',
            },
        ),
        migrations.CreateModel(
            name='GIInstance',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('placement_poly', django.contrib.gis.db.models.fields.PolygonField(srid=4326)),
            ],
            options={
                'verbose_name': 'Green infrastructure instance',
            },
        ),
        migrations.CreateModel(
            name='GITemplate',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(unique=True, max_length=64)),
                ('gi_elements', models.ManyToManyField(to='gidb.GIElement')),
            ],
            options={
                'verbose_name': 'Green infrastructure template',
            },
        ),
        migrations.CreateModel(
            name='GIVegGrowthState',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('leaf_area_index', models.FloatField(null=True, blank=True)),
                ('stem_density', models.FloatField(null=True, blank=True)),
                ('height', models.FloatField(null=True, blank=True)),
                ('gi_element', models.ForeignKey(to='gidb.GIElement')),
                ('gi_instance', models.ForeignKey(to='gidb.GIInstance')),
            ],
            options={
                'verbose_name': 'Green infrastructure growth state',
            },
        ),
        migrations.CreateModel(
            name='HumanPrefImage',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=64)),
                ('pref_image', models.FileField(upload_to=b'')),
                ('gi_instance', models.ForeignKey(to='gidb.GIInstance')),
            ],
            options={
                'verbose_name': 'Human preference image',
            },
        ),
        migrations.CreateModel(
            name='Representation2D',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(unique=True, max_length=64)),
                ('rep_file', models.FileField(upload_to=b'')),
                ('rep_thumbnail', models.FileField(null=True, upload_to=b'', blank=True)),
            ],
            options={
                'verbose_name': '2D visual representation',
            },
        ),
        migrations.CreateModel(
            name='Representation3D',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(unique=True, max_length=64)),
                ('rep_file', models.FileField(upload_to=b'')),
                ('rep_thumbnail', models.FileField(upload_to=b'')),
            ],
            options={
                'verbose_name': '3D visual representation',
            },
        ),
        migrations.CreateModel(
            name='RHESSysSoilType',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(unique=True, max_length=64)),
                ('rhessys_default_id', models.CharField(unique=True, max_length=8)),
            ],
            options={
                'verbose_name': 'RHESSys soil type',
            },
        ),
        migrations.CreateModel(
            name='RHESSysStratumType',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(unique=True, max_length=64)),
                ('rhessys_default_id', models.CharField(unique=True, max_length=8)),
            ],
            options={
                'verbose_name': 'RHESSys stratum type',
            },
        ),
        migrations.CreateModel(
            name='TemplatesForEcoClimate',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(unique=True, max_length=64)),
                ('templates', models.ManyToManyField(to='gidb.GITemplate')),
            ],
            options={
                'verbose_name': 'Eco-climate GI template',
            },
        ),
        migrations.CreateModel(
            name='Watershed',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=64)),
                ('model_url', models.URLField(max_length=1024)),
                ('template_menu', models.ForeignKey(to='gidb.TemplatesForEcoClimate')),
            ],
            options={
                'verbose_name': 'Watershed',
            },
        ),
        migrations.AddField(
            model_name='gitemplate',
            name='model_3d',
            field=models.ForeignKey(to='gidb.Representation3D'),
        ),
        migrations.AddField(
            model_name='gitemplate',
            name='model_planview',
            field=models.ForeignKey(to='gidb.Representation2D'),
        ),
        migrations.AddField(
            model_name='giinstance',
            name='template',
            field=models.ForeignKey(to='gidb.GITemplate'),
        ),
        migrations.AddField(
            model_name='giinstance',
            name='watershed',
            field=models.ForeignKey(to='gidb.Watershed'),
        ),
        migrations.AddField(
            model_name='gielement',
            name='model_3d',
            field=models.ForeignKey(to='gidb.Representation3D', null=True),
        ),
        migrations.AddField(
            model_name='gielement',
            name='model_planview',
            field=models.ForeignKey(to='gidb.Representation2D', null=True),
        ),
        migrations.AddField(
            model_name='gielement',
            name='soil_type',
            field=models.ForeignKey(to='gidb.RHESSysSoilType', null=True),
        ),
        migrations.AddField(
            model_name='gielement',
            name='stratum_type',
            field=models.ForeignKey(to='gidb.RHESSysStratumType', null=True),
        ),
    ]
