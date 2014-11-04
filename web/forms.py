from django.forms import ModelForm
#from web.models import Submit
from web.models import Contact

class ContactForms(ModelForm):
    class Meta:
        model = Contact
        fields = ('Name','Email','Subject','Datetime')
