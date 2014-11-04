# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='News',
            fields=[
                ('id', models.AutoField(primary_key=True, auto_created=True, verbose_name='ID', serialize=False)),
                ('Title', models.CharField(max_length=100)),
                ('Information', models.TextField(max_length=1000)),
                ('Image_src', models.ImageField(upload_to='latestnews')),
                ('Date', models.DateTimeField()),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Video_health_tip',
            fields=[
                ('id', models.AutoField(primary_key=True, auto_created=True, verbose_name='ID', serialize=False)),
                ('Video_Name', models.CharField(max_length=100)),
                ('Video_source', models.TextField(max_length=500)),
                ('Image_src', models.ImageField(upload_to='video_image')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
