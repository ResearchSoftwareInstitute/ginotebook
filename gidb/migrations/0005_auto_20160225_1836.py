# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gidb', '0004_auto_20160225_1658'),
    ]

    operations = [
        migrations.CreateModel(
            name='GIRoute',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('instance', models.ForeignKey(related_name='routes', to='gidb.GIInstance')),
            ],
            options={
                'verbose_name': 'Green infrastructure route',
            },
        ),
        migrations.RemoveField(
            model_name='giroutes',
            name='from_patch',
        ),
        migrations.RemoveField(
            model_name='giroutes',
            name='instance',
        ),
        migrations.RemoveField(
            model_name='giroutes',
            name='to_gi',
        ),
        migrations.RemoveField(
            model_name='giroutes',
            name='to_patch',
        ),
        migrations.RenameField(
            model_name='giroutingvertexfrompatch',
            old_name='from_patch',
            new_name='patch',
        ),
        migrations.RenameField(
            model_name='giroutingvertextopatch',
            old_name='to_patch',
            new_name='patch',
        ),
        migrations.RemoveField(
            model_name='giroutingvertextogiinstance',
            name='to_instance',
        ),
        migrations.AddField(
            model_name='giroutingvertextogiinstance',
            name='instance',
            field=models.ForeignKey(related_name='vertex_from', default=None, to='gidb.GIInstance'),
            preserve_default=False,
        ),
        migrations.DeleteModel(
            name='GIRoutes',
        ),
        migrations.AddField(
            model_name='giroutingvertexfrompatch',
            name='route',
            field=models.ForeignKey(related_name='vertices_from_patch', default=None, to='gidb.GIRoute'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='giroutingvertextogiinstance',
            name='route',
            field=models.ForeignKey(related_name='vertices_to_instance', default=None, to='gidb.GIRoute'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='giroutingvertextopatch',
            name='route',
            field=models.ForeignKey(related_name='vertices_to_patch', default=None, to='gidb.GIRoute'),
            preserve_default=False,
        ),
    ]
