from django.contrib import admin
from setting.models import Site_Configuration,Banner,Footer
# Register your models here.
admin.site.register(Site_Configuration)
admin.site.register(Banner)
admin.site.register(Footer)
