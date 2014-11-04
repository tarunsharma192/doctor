# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Specility',
            fields=[
                ('id', models.AutoField(auto_created=True, serialize=False, primary_key=True, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Drprofile',
            fields=[
                ('id', models.AutoField(auto_created=True, serialize=False, primary_key=True, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('image', models.ImageField(upload_to='doctors')),
                ('age', models.IntegerField(max_length=50)),
                ('Qualification', models.CharField(max_length=50)),
                ('Experience', models.CharField(max_length=50)),
                ('Email', models.CharField(max_length=50)),
                ('Phone', models.IntegerField(max_length=10)),
                ('CurrentlyWorking', models.CharField(max_length=50)),
                ('Speciality', models.ManyToManyField(to='drprofile.Specility')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
