from django.db import models

# Create your models here.
class Video_health_tip(models.Model):
    Video_Name = models.CharField(max_length=100)
    Video_source = models.TextField(max_length=500)
    Image_src = models.ImageField(upload_to='video_image')
    
    def __str__(self):
        return self.Video_Name

class News(models.Model):
    Title = models.CharField(max_length=100)
    Information = models.TextField(max_length=1000)
    Image_src = models.ImageField(upload_to='latestnews')
    Date = models.DateTimeField()

    def __str__(self):
        return self.Title
