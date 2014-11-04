# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('drprofile', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Country',
            fields=[
                ('id', models.AutoField(auto_created=True, verbose_name='ID', serialize=False, primary_key=True)),
                ('country', models.CharField(max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='State',
            fields=[
                ('id', models.AutoField(auto_created=True, verbose_name='ID', serialize=False, primary_key=True)),
                ('state', models.CharField(max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='City',
            fields=[
                ('id', models.AutoField(auto_created=True, verbose_name='ID', serialize=False, primary_key=True)),
                ('city', models.CharField(max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.RenameField(
            model_name='specility',
            old_name='name',
            new_name='speciality',
        ),
        migrations.AddField(
            model_name='drprofile',
            name='country',
            field=models.ManyToManyField(to='drprofile.Country'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='drprofile',
            name='state',
            field=models.ManyToManyField(to='drprofile.State'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='drprofile',
            name='city',
            field=models.ManyToManyField(to='drprofile.City'),
            preserve_default=True,
        ),
    ]
