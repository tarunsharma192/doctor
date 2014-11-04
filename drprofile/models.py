from django.db import models
from django.contrib import admin
from geoposition.fields import GeopositionField
#from django_countries.fields import CountryField
# Create your models here.



"""
class Person(models.Model):
    name = models.CharField(max_length=100)
    country = CountryField()
    
    def __str__(self):
		return self.name
"""

class Specility(models.Model):
	speciality = models.CharField(max_length=50)
	
	def __str__(self):
		return self.speciality


class Country(models.Model):
	country = models.CharField(max_length=50)
	
	def __str__(self):
		return self.country


class State(models.Model):
	state = models.CharField(max_length=50)
	
	def __str__(self):
		return self.state
		

class City(models.Model):
	city = models.CharField(max_length=50)
	
	def __str__(self):
		return self.city
		
				
class Drprofile(models.Model):
	name = models.CharField(max_length=50)
	
	image = models.ImageField(upload_to='doctors')
	
	Qualification = models.CharField(max_length=50)
	
	Description = models.TextField()
	
	Experience = models.CharField(max_length=50)
	
	Specialities = models.ManyToManyField(Specility)
	
	Countaries = models.ManyToManyField(Country)
	
	States = models.ManyToManyField(State)
	
	Cities = models.ManyToManyField(City)

	Email = models.CharField(max_length=50)
	
	Phone = models.IntegerField(max_length=10)
	
	CurrentlyWorking = GeopositionField()
	

	
	def __str__(self):
		return self.name
	
