from django.shortcuts import render,HttpResponse,render_to_response
from django.conf import settings
from drprofile.models import *
from django.core.context_processors import csrf
from contact_info.forms import ContactForm
from contact_info.models import Contact
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from symptomchecker.models import Symptom
from video_health_tips.models import Video_health_tip
from video_health_tips.models import News
from hospitals.models import Hospital
from web.forms import ContactForms
from web.models import Contact
from setting.models import Site_Configuration,Banner,Footer
from upcomingevents.models import Upcoming_event
from itertools import chain
# Create your views here.
"""
def index(request):
    return render(request,'web/index.html')
"""

#################### This function used for passing slug #######################
def pages(request,slug):
	video = Video_health_tip.objects.all()[:1]
	allvideo = Video_health_tip.objects.all()
	banner=Banner.objects.all()
	latest = News.objects.all()[:2]
	morenews = News.objects.all()
	doctorprofile = Drprofile.objects.all()
	site=Site_Configuration.objects.all()
	footerimage=Footer.objects.all()
	check = Symptom.objects.all()[:7]
	
	videos = Paginator(allvideo, 2)
	newspage = Paginator(morenews, 3)
	paginator = Paginator(doctorprofile, 4)
	
	page = request.GET.get('page')
	
	try:
		contacts = paginator.page(page)
		news = newspage.page(page)
		morevideos= videos.page(page)
	except PageNotAnInteger:
		contacts = paginator.page(1)
		news = newspage.page(1)
		morevideos= videos.page(1)
	except EmptyPage:
		contacts = paginator.page(paginator.num_pages)
		news = newspage.page(newspage.num_pages)
		morevideos= videos.page(videos.num_pages)
	return render(request,'web/'+ slug +'.html',{'site':site,'media':settings.MEDIA_URL,'drprofile':doctorprofile,'footer':footerimage,
    'contacts': contacts,'video':video,'latest':latest,'banner':banner,'videos':allvideo,'disease':check,'morenews':morenews,'news':news,'morevideos':morevideos})

#################### This function used for drprofile #######################
def profile(request,id):
    video = Video_health_tip.objects.all()[:1]
    banner=Banner.objects.all()
    latest = News.objects.all()[:3]
    doctorprofile = Drprofile.objects.get(pk=id)
    footerimage=Footer.objects.all()
    check = Symptom.objects.all()[:7]
    return render(request,'web/drprofile.html',{'media':settings.MEDIA_URL,'docprofile':doctorprofile,
    'video':video,'latest':latest,'banner':banner,'footer':footerimage,'disease':check,'disease':check})

#################### This function used for contact #######################
def contact(request):
    banner=Banner.objects.all()
    site=Site_Configuration.objects.all()
    form = ContactForm()
    footerimage=Footer.objects.all()
    check = Symptom.objects.all()[:7]
    message =""
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()
            message = "Data Saved"
   

    return render(request,'web/contactUs.html',{'footer':footerimage,'form':form,'banner':banner,
    'media':settings.MEDIA_URL,'site':site,'disease':check,'message':message})

"""
def webcontact(request):
    form = ContactForm()
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()
   

    return render(request,'web/contactUs.html',{'siteurl':settings.SITE_URL,'form':form})

"""




	
#################### This function used for Symptom checker #######################	
def check_symptoms(request):
    search = request.POST['search']
    video = Video_health_tip.objects.all()[:1]
    banner=Banner.objects.all()
    site=Site_Configuration.objects.all()
    latest = News.objects.all()[:2]
    footerimage=Footer.objects.all()
    check = Symptom.objects.all()[:7]
    nme=""
    if(search == ""):
        message = "No Result Found"
        return render(request,'web/symptoms.html',{'media':settings.MEDIA_URL,'siteurl':settings.SITE_URL,'footer':footerimage,
        'msg':message,'video':video,'latest':latest,'banner':banner,'disease':check,'site':site})
    
    check = Symptom.objects.filter(Symptom_Name = search)
    for ch in check:
		nme = ch.Symptom_Name
    if(nme != search):
		message = "No Result Found"
		return render(request,'web/symptoms.html',{'media':settings.MEDIA_URL,'siteurl':settings.SITE_URL,'footer':footerimage,
		'msg':message,'video':video,'latest':latest,'banner':banner,'disease':check,'site':site})
		  
    else:        
        check = Symptom.objects.filter(Symptom_Name = search)
        return render(request,'web/symptomsdiplay.html',{'media':settings.MEDIA_URL,'info':check,'video':video,'latest':latest,
        'banner':banner,'site':site,'disease':check,'footer':footerimage})



#################### These both functions showing the disease on web and index  #######################
def disease(request):
	footerimage=Footer.objects.all()
	check = Symptom.objects.all()[:7]
	site=Site_Configuration.objects.all()
	latest = News.objects.all()[:4	]
	banner=Banner.objects.all()
	message =""
	form = ContactForms()
	events = Upcoming_event.objects.all()[:5]
	doctorprofile = Drprofile.objects.all()
	video = Video_health_tip.objects.all()[:2]
	if request.method == 'POST':
		form = ContactForms(request.POST)
		if form.is_valid():
			form.save()
			message = "Data Saved"
	return render(request,'web/index.html',{'media':settings.MEDIA_URL,'disease':check,'form':form,
	'site':site,'banner':banner,'docprofile':doctorprofile,'events':events,'latest':latest,'video':video,'footer':footerimage,'message':message})

"""
def disease(request):
	check = Symptom.objects.all()[:7]	
	return render(request,'web/index.html',{'siteurl':settings.SITE_URL,'disease':check})
"""

def diseaseinfo(request,id):
	footerimage=Footer.objects.all()
	site=Site_Configuration.objects.all()
	check = Symptom.objects.all()[:2]
	checks = Symptom.objects.get(pk=id)
	video = Video_health_tip.objects.all()[:1]
	latest = News.objects.all()[:2]

	#return HttpResponse("hello")
	return render(request,'web/symptomsdiplay.html',{'infos':checks,
	'footer':footerimage,'disease':check,'video':video,'latest':latest,'media':settings.MEDIA_URL,'site':site})

#################### This function used for hospital page #######################
"""
def hospital(request):
	footerimage=Footer.objects.all()
	template = 'web/hospitals.html'
	video = Video_health_tip.objects.all()[:1]
	site=Site_Configuration.objects.all()
	banner=Banner.objects.all()
	latest = News.objects.all()[:1]
	check = Symptom.objects.all()[:7]
	search = request.GET.get('q')
	
	if search:
		
		sea = search.title()
		hspt = Hospital.objects.filter(Cities__city__startswith = sea)
		drprofile = Drprofile.objects.filter(Cities__city__startswith = sea)
		hsptl = list(chain(hspt,drprofile))
		paginator = Paginator(hsptl, 2)
		page = request.GET.get('page')
		try:
			contacts = paginator.page(page)
		except PageNotAnInteger:
			contacts = paginator.page(1)
		except EmptyPage:
			contacts = paginator.page(paginator.num_pages)
		
		
		return render(request,template,{'media':settings.MEDIA_URL,
			'contacts':contacts,'video':video,'latest':latest,'banner':banner,
			'site':site,'footer':footerimage,'disease':check,'search':search})
	 
			#return HttpResponse("hello")
		
				
	else:	
		
		hsptl = Hospital.objects.all()
		
	paginator = Paginator(hsptl, 2)
	page = request.GET.get('page')
	try:
		contacts = paginator.page(page)
	except PageNotAnInteger:
		contacts = paginator.page(1)
	except EmptyPage:
		contacts = paginator.page(paginator.num_pages)
		
	return render(request,template,{'media':settings.MEDIA_URL,
	'hsptl':hsptl,'contacts':contacts,'video':video,'latest':latest,'banner':banner,'site':site,'footer':footerimage,'disease':check})
"""




def hospital(request):
	footerimage=Footer.objects.all()
	template = 'web/search.html'
	video = Video_health_tip.objects.all()[:1]
	site=Site_Configuration.objects.all()
	banner=Banner.objects.all()
	latest = News.objects.all()[:1]
	check = Symptom.objects.all()[:7]
	search = request.GET.get('q')
	
	if search:
		
		#sea = search.title()
		#hspt = Hospital.objects.filter(Cities__city__startswith = sea)
		drprofile = Drprofile.objects.filter(Cities__city__startswith = "Mohali").filter(Specialities__speciality__startswith = "Anaesthesia")
		#Many to many Field Fetch = Cities(fieldname)__city(class fieldname inherit from main class)__startswith = search
		#hsptl = list(chain(hspt,drprofile))
		paginator = Paginator(drprofile, 2)
		page = request.GET.get('page')
		try:
			contacts = paginator.page(page)
		except PageNotAnInteger:
			contacts = paginator.page(1)
		except EmptyPage:
			contacts = paginator.page(paginator.num_pages)
		
		
		return render(request,template,{'media':settings.MEDIA_URL,
			'contacts':contacts,'video':video,'latest':latest,'banner':banner,
			'site':site,'footer':footerimage,'disease':check,'search':search})
	 
		#return HttpResponse("hello")
		
				
	else:	
		
		hsptl = Drprofile.objects.all()
		
	paginator = Paginator(hsptl, 2)
	page = request.GET.get('page')
	try:
		contacts = paginator.page(page)
	except PageNotAnInteger:
		contacts = paginator.page(1)
	except EmptyPage:
		contacts = paginator.page(paginator.num_pages)
	#return HttpResponse("hello")
		
	return render(request,template,{'media':settings.MEDIA_URL,
	'hsptl':hsptl,'contacts':contacts,'video':video,'latest':latest,'banner':banner,'site':site,'footer':footerimage,'disease':check})







"""
def hospital(request):
	footerimage=Footer.objects.all()
	template = 'web/hospitals.html'
	video = Video_health_tip.objects.all()[:1]
	site=Site_Configuration.objects.all()
	banner=Banner.objects.all()
	latest = News.objects.all()[:1]
	check = Symptom.objects.all()[:7]
	search = request.GET.get('q')
	
	if search:
		
		sea = search.title()
		hspt = Hospital.objects.filter(Cities__city__startswith = sea)
		drprofile = Drprofile.objects.filter(Cities__city__startswith = sea)
		hsptl = list(chain(hspt,drprofile))
		paginator = Paginator(hsptl, 2)
		page = request.GET.get('page')
		try:
			contacts = paginator.page(page)
		except PageNotAnInteger:
			contacts = paginator.page(1)
		except EmptyPage:
			contacts = paginator.page(paginator.num_pages)
		
		
		return render(request,template,{'media':settings.MEDIA_URL,
			'contacts':contacts,'video':video,'latest':latest,'banner':banner,
			'site':site,'footer':footerimage,'disease':check,'search':search})
	 
			#return HttpResponse("hello")
		
				
	else:	
		
		hsptl = Hospital.objects.all()
		
	paginator = Paginator(hsptl, 2)
	page = request.GET.get('page')
	try:
		contacts = paginator.page(page)
	except PageNotAnInteger:
		contacts = paginator.page(1)
	except EmptyPage:
		contacts = paginator.page(paginator.num_pages)
		
	return render(request,template,{'media':settings.MEDIA_URL,
	'hsptl':hsptl,'contacts':contacts,'video':video,'latest':latest,'banner':banner,'site':site,'footer':footerimage,'disease':check})
"""


"""
def hospital(request):
	footerimage=Footer.objects.all()
	template = 'web/hospitals.html'
	video = Video_health_tip.objects.all()
	site=Site_Configuration.objects.all()
	banner=Banner.objects.all()
	latest = News.objects.all()[:1]
	check = Symptom.objects.all()[:7]
	if request.method == 'POST':
		search = request.POST['search']
		hsptl = Hospital.objects.filter(Cities__city__startswith = search)#Many to many Field Fetch = Cities(fieldname)__city(classname)__startswith = search
		
	else:	
		hsptl = Hospital.objects.all()
		
	paginator = Paginator(hsptl, 2)
	page = request.GET.get('page')
	try:
		contacts = paginator.page(page)
	except PageNotAnInteger:
		contacts = paginator.page(1)
	except EmptyPage:
		contacts = paginator.page(paginator.num_pages)
		
	return render(request,template,{'media':settings.MEDIA_URL,
	'hsptl':hsptl,'contacts':contacts,'video':video,'latest':latest,'banner':banner,'site':site,'footer':footerimage,'disease':check})
	"""






#################### This function used for hospital profile #######################
def hprofile(request,id):
	footerimage=Footer.objects.all()
	video = Video_health_tip.objects.all()[:1]
	site=Site_Configuration.objects.all()
	latest = News.objects.all()[:1]
	hospitalprofile = Hospital.objects.get(pk=id,)
	check = Symptom.objects.all()[:7]

	return render(request,'web/hospitalprofile.html',{'media':settings.MEDIA_URL,'site':site,
	'hospitalprofile':hospitalprofile,'video':video,'latest':latest,'footer':footerimage,'disease':check})


#################### This function used for drprofile city wise #######################

def drprofile(request):
	footerimage=Footer.objects.all()
	template = 'web/doctors.html'
	video = Video_health_tip.objects.all()[:1]
	site=Site_Configuration.objects.all()
	banner=Banner.objects.all()
	latest = News.objects.all()[:1]
	check = Symptom.objects.all()[:7]
	if request.method == 'POST':
		search = request.POST['search']
		drprofile = Drprofile.objects.filter(Cities__city__startswith = search) #Many to many Field Fetch = Cities(classname)__city(fieldname)__startswith = search
	else:	
		drprofile = Drprofile.objects.all()
		
	paginator = Paginator(drprofile, 2)
	page = request.GET.get('page')
	try:
		contacts = paginator.page(page)
	except PageNotAnInteger:
		contacts = paginator.page(1)
	except EmptyPage:
		contacts = paginator.page(paginator.num_pages)
		
	return render(request,template,{'media':settings.MEDIA_URL,
	'drprofile':drprofile,'contacts':contacts,'video':video,'latest':latest,'banner':banner,
	'site':site,'footer':footerimage,'disease':check})
	
#################### This function used for showing latest news #######################
def shownews(request,id):
	footerimage=Footer.objects.all()
	latest = News.objects.get(pk=id)
	site=Site_Configuration.objects.all()
	video = Video_health_tip.objects.all()[:1]
	check = Symptom.objects.all()[:7]
	return render(request,'web/latestnews.html',{'siteurl':settings.SITE_URL,'media':settings.MEDIA_URL,
	'latest':latest,'footer':footerimage,'disease':check,'site':site,'video':video})
