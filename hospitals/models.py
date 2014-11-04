from django.db import models
from geoposition.fields import GeopositionField
from drprofile.models import *
# Create your models here.

class Hospital(models.Model):
	
    Hospitalname = models.CharField(max_length=100)
    Specialities = models.ManyToManyField(Specility)
    image = models.ImageField(upload_to='hospitals')
    PhoneNo=models.IntegerField()
    Email=models.EmailField()
    address=models.CharField(max_length=200)
    Location = GeopositionField()
    Countaries = models.ManyToManyField(Country)
    States = models.ManyToManyField(State)
    Cities = models.ManyToManyField(City)
    Description = models.TextField()
    
    def __str__(self):
        return self.Hospitalname
