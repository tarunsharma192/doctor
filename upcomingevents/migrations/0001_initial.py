# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Upcoming_Event',
            fields=[
                ('id', models.AutoField(verbose_name='ID', primary_key=True, auto_created=True, serialize=False)),
                ('Event_Title', models.CharField(max_length=100)),
                ('Event_Description', models.TextField(max_length=1000)),
                ('Event_Date', models.DateField(default=datetime.datetime(2014, 9, 1, 15, 37, 27, 954894))),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
