# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import geoposition.fields


class Migration(migrations.Migration):

    dependencies = [
        ('drprofile', '0002_auto_20140821_1759'),
    ]

    operations = [
        migrations.AlterField(
            model_name='drprofile',
            name='CurrentlyWorking',
            field=geoposition.fields.GeopositionField(max_length=42),
        ),
    ]
