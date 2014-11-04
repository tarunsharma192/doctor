from django.db import models

# Create your models here.

class Cause(models.Model):
	Descripton = models.CharField(max_length=50)
	def __str__(self):
		return self.Descripton

class Diagnosis(models.Model):
	Diagnosing = models.CharField(max_length=50)
	def __str__(self):
		return self.Diagnosing
	    
class Symptom(models.Model):
    Symptom_Name = models.CharField(max_length=100)
    Related_Info = models.TextField(max_length=500)
    Causes = models.ManyToManyField(Cause)
    Diagnosing = models.ManyToManyField(Diagnosis)
   # Symptom_Image= models.ImageField(upload_to='symptomimage')

    def __str__(self):
        return self.Symptom_Name
