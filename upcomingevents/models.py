from django.db import models
from datetime import datetime 
# Create your models here.
class Upcoming_event(models.Model):
    Event_Title = models.CharField(max_length=100)
    Event_Description = models.TextField(max_length=1000)
    Event_Date = models.DateField(default=datetime.now())
    
    def __str__(self):
        return self.Event_Title
