from django.contrib import admin
from symptomchecker.models import Cause,Symptom,Diagnosis
# Register your models here.
admin.site.register(Cause)
admin.site.register(Diagnosis)
admin.site.register(Symptom)
