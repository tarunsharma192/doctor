from django.shortcuts import render,HttpResponse,render_to_response
from django.conf import settings
from drprofile.models import *
# Create your views here.
def index(request):
    return render(request,'web/index.html')

def pages(request,slug):
    doctorprofile=Drprofile.objects.all()
    for i in doctorprofile:
        print(i.city.all())
    return render(request,'web/'+ slug +'.html',{'siteurl':settings.SITE_URL,'drprofile':doctorprofile})
