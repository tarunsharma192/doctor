# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import geoposition.fields


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='City',
            fields=[
                ('id', models.AutoField(primary_key=True, auto_created=True, verbose_name='ID', serialize=False)),
                ('city', models.CharField(max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Specility',
            fields=[
                ('id', models.AutoField(primary_key=True, auto_created=True, verbose_name='ID', serialize=False)),
                ('speciality', models.CharField(max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='State',
            fields=[
                ('id', models.AutoField(primary_key=True, auto_created=True, verbose_name='ID', serialize=False)),
                ('state', models.CharField(max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Country',
            fields=[
                ('id', models.AutoField(primary_key=True, auto_created=True, verbose_name='ID', serialize=False)),
                ('country', models.CharField(max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Drprofile',
            fields=[
                ('id', models.AutoField(primary_key=True, auto_created=True, verbose_name='ID', serialize=False)),
                ('name', models.CharField(max_length=50)),
                ('image', models.ImageField(upload_to='doctors')),
                ('Qualification', models.CharField(max_length=50)),
                ('Description', models.TextField()),
                ('Experience', models.CharField(max_length=50)),
                ('Email', models.CharField(max_length=50)),
                ('Phone', models.IntegerField(max_length=10)),
                ('CurrentlyWorking', geoposition.fields.GeopositionField(max_length=42)),
                ('Specialities', models.ManyToManyField(to='drprofile.Specility')),
                ('Countaries', models.ManyToManyField(to='drprofile.Country')),
                ('States', models.ManyToManyField(to='drprofile.State')),
                ('Cities', models.ManyToManyField(to='drprofile.City')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
