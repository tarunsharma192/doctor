from django.db import models

# Create your models here.

class Contact(models.Model):
    Name = models.CharField(max_length=100)
    Email = models.EmailField(max_length=70)
    Subject = models.CharField(max_length=100)
    Message = models.TextField(max_length=500)
    #Date = models.DateField(blank=True,null=True)
    #Recieved_on = models.DateTimeField(default=datetime.now())
    
    def __str__(self):
        return self.Name
