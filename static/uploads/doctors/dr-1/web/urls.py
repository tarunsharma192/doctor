from django.conf.urls import patterns, include, url
from web import views
#admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'dr.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^$', 'web.views.index', name='home'),
    #url(r'^career/$', 'web.views.career', name='career'),
    url(r'^(?P<slug>[A-z]+)/$', views.pages, name='content'),
)
