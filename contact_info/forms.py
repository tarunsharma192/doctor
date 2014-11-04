from django.forms import ModelForm
#from web.models import Submit
from contact_info.models import Contact

class ContactForm(ModelForm):
    class Meta:
        model = Contact
        fields = ('Name','Email','Subject','Message')
	
