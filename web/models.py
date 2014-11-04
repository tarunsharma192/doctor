from django.db import models

#from datetime import datetime  
# Create your models here.

class Contact(models.Model):
    Name = models.CharField(max_length=100)
    Email = models.EmailField(max_length=70)
    Subject = models.CharField(max_length=100)
    Datetime = models.DateTimeField() 
    #Recieved_on = models.DateTimeField(default=datetime.now())
    
    def __str__(self):
        return self.Name
