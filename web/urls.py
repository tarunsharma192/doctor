from django.conf.urls import patterns, include, url
from web import views
#admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'dr.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^index/$', views.disease, name='disease'), #working on index page
    
    url(r'^index/(?P<id>[0-9]+)/$', views.diseaseinfo, name='diseaseinfo'), #working on Medical Services
    
    url(r'^hospitals/$', views.hospital, name='hsp'),
    url(r'^doctors/$', views.drprofile, name='dprofile'),
    
    url(r'^hospitalprofile/(?P<id>[0-9]+)/$', views.hprofile, name='hospitalprofile'),
    
    url(r'^$', 'web.views.disease', name='home'), #working on static url	
    
    url(r'^doctors/(?P<id>[0-9]+)/$', views.profile, name='drprofile'),
    
    url(r'^contactUs/$', views.contact, name='contactus'),
    
    url(r'^symptoms/symptomchecker/$', views.check_symptoms, name='symptomchecker'),
    
    url(r'^(?P<slug>[A-z]+)/$', views.pages, name='content'),
    
    url(r'^latestnews/(?P<id>[0-9]+)/$', views.shownews, name='latestnews'),

)
