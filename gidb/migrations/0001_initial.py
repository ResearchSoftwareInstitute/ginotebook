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
        ),
        migrations.CreateModel(
            name='GIInstance',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('placement_poly', django.contrib.gis.db.models.fields.PolygonField(srid=4326)),
            ],
        ),
        migrations.CreateModel(
            name='GITemplate',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(unique=True, max_length=64)),
                ('gi_elements', models.ManyToManyField(to='gidb.GIElement')),
            ],
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
        ),
        migrations.CreateModel(
            name='HumanPrefImage',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('pref_image', models.FileField(upload_to=b'')),
                ('gi_instance', models.ForeignKey(to='gidb.GIInstance')),
            ],
        ),
        migrations.CreateModel(
            name='Representation',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('rep_file', models.FileField(upload_to=b'')),
                ('rep_thumbnail', models.FileField(upload_to=b'')),
            ],
        ),
        migrations.CreateModel(
            name='RHESSSysSoilType',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(unique=True, max_length=128)),
                ('rhessys_default_id', models.IntegerField(unique=True)),
            ],
        ),
        migrations.CreateModel(
            name='RHESSysStratumType',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(unique=True, max_length=128)),
                ('rhessys_default_id', models.IntegerField(unique=True)),
            ],
        ),
        migrations.CreateModel(
            name='TemplatesForEcoClimate',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(unique=True, max_length=64)),
                ('templates', models.ManyToManyField(to='gidb.GITemplate')),
            ],
        ),
        migrations.CreateModel(
            name='Watershed',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=64)),
                ('model_url', models.URLField(max_length=512)),
                ('template_menu', models.ForeignKey(to='gidb.TemplatesForEcoClimate')),
            ],
        ),
        migrations.CreateModel(
            name='Representation2D',
            fields=[
                ('representation_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='gidb.Representation')),
            ],
            bases=('gidb.representation',),
        ),
        migrations.CreateModel(
            name='Representation3D',
            fields=[
                ('representation_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='gidb.Representation')),
            ],
            bases=('gidb.representation',),
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
            name='soil_type',
            field=models.ForeignKey(to='gidb.RHESSSysSoilType', null=True),
        ),
        migrations.AddField(
            model_name='gielement',
            name='stratum_type',
            field=models.ForeignKey(to='gidb.RHESSysStratumType', null=True),
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
            model_name='gielement',
            name='model_3d',
            field=models.ForeignKey(to='gidb.Representation3D', null=True),
        ),
        migrations.AddField(
            model_name='gielement',
            name='model_planview',
            field=models.ForeignKey(to='gidb.Representation2D', null=True),
        ),
    ]
