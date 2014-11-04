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
	state= models.CharField(max_length=50)
	
	def __str__(self):
		return self.state

class City(models.Model):
	city = models.CharField(max_length=50)
	
	def __str__(self):
		return self.city

class Drprofile(models.Model):
	name = models.CharField(max_length=50)
	image = models.ImageField(upload_to='doctors')
	age = models.IntegerField(max_length=50)
	Qualification = models.CharField(max_length=50)
	Experience = models.CharField(max_length=50)
	Speciality = models.ManyToManyField(Specility)
	country= models.ManyToManyField(Country)
	state = models.ManyToManyField(State)
	city= models.ManyToManyField(City)
	Email = models.CharField(max_length=50)
	Phone = models.IntegerField(max_length=10)
	CurrentlyWorking = GeopositionField()
	
	
	def __str__(self):
		return self.name
	
