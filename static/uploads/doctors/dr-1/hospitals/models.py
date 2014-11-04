from django.db import models
from django.contrib import admin
from geoposition.fields import GeopositionField
from drprofile.models import Country,State,City
# Create your models here.

class Hospital(models.Model):
	
    Hospitalname = models.CharField(max_length=100)
    PhoneNo=models.IntegerField()
    Email=models.EmailField()
    address=models.CharField(max_length=200)
    Location = GeopositionField()
    country= models.ManyToManyField(Country)
    state = models.ManyToManyField(State)
    city= models.ManyToManyField(City)
    
    def __str__(self):
        return self.Hospitalname
