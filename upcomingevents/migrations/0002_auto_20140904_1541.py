# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('upcomingevents', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='upcoming_event',
            name='Event_Date',
            field=models.DateField(default=datetime.datetime(2014, 9, 4, 15, 41, 50, 930681)),
        ),
    ]
