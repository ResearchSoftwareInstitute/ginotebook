# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='GIRoutes',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
            ],
            options={
                'verbose_name': 'Green infrastructure instance',
            },
        ),
        migrations.CreateModel(
            name='GIRoutingVertexFromPatch',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('flow_proportion', models.DecimalField(max_digits=2, decimal_places=2)),
                ('from_patch', models.CharField(max_length=32)),
            ],
            options={
                'verbose_name': 'Patch to green infrastructure connection',
            },
        ),
        migrations.CreateModel(
            name='GIRoutingVertexToGIInstance',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('flow_proportion', models.DecimalField(max_digits=2, decimal_places=2)),
                ('to_instance', models.ForeignKey(related_name='receives_from_gi', to='gidb.GIInstance')),
            ],
            options={
                'verbose_name': 'Green infrastructure to green infrastructure connection',
            },
        ),
        migrations.CreateModel(
            name='GIRoutingVertexToPatch',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('flow_proportion', models.DecimalField(max_digits=2, decimal_places=2)),
                ('to_patch', models.CharField(max_length=32)),
            ],
            options={
                'verbose_name': 'Green infrastructure to patch connection',
            },
        ),
        migrations.AddField(
            model_name='giroutes',
            name='from_patch',
            field=models.ManyToManyField(related_name='route_list', to='gidb.GIRoutingVertexFromPatch'),
        ),
        migrations.AddField(
            model_name='giroutes',
            name='instance',
            field=models.ForeignKey(related_name='routes', to='gidb.GIInstance'),
        ),
        migrations.AddField(
            model_name='giroutes',
            name='to_gi',
            field=models.ManyToManyField(related_name='route_list', to='gidb.GIRoutingVertexToGIInstance'),
        ),
        migrations.AddField(
            model_name='giroutes',
            name='to_patch',
            field=models.ManyToManyField(related_name='route_list', to='gidb.GIRoutingVertexToPatch'),
        ),
    ]
