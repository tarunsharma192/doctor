"""
Django settings for dr project.

For more information on this file, see
https://docs.djangoproject.com/en/1.6/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.6/ref/settings/
"""

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
import os
BASE_DIR = os.path.dirname(os.path.dirname(__file__))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.6/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '1bzcfp9ppni1bxeizypzf$k(isa(yeiz5*ryo%rld#@pb_jqg7'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

TEMPLATE_DEBUG = True

ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = (
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    #'django.contrib.gis',
    'web',
    'drprofile',
    'geoposition',
    'hospitals',
    'contact_info',
    'symptomchecker',
    'video_health_tips',
    'setting',
    'upcomingevents',
    'twitter_tag',
    #'cities',
    
)

# Your access token: Access token
TWITTER_OAUTH_TOKEN = '156941786-rPu3rBXReVa2vtXVKlFllHmkeUg3gaVztgaCXN2g'
# Your access token: Access token secret
TWITTER_OAUTH_SECRET = 'VN0IdQQP9aistOaYp5J3aYYMgOaeoPsvbWiB9MLUrL84o'
# OAuth settings: Consumer key
TWITTER_CONSUMER_KEY = 'E6jB2kkEddHVVImqBlwSxHOB0'
# OAuth settings: Consumer secret
TWITTER_CONSUMER_SECRET = 'tCqoGfzCxW3LZE6drt1eicDBJE4tlCNDSJm3ReGpF8boC7r3Vr'



# Maps or location settings
GEOPOSITION_MAP_OPTIONS = {
    'minZoom': 3,
    'maxZoom': 15,
}

GEOPOSITION_MARKER_OPTIONS = {
    'cursor': 'move'
}


MIDDLEWARE_CLASSES = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
)

ROOT_URLCONF = 'dr.urls'

WSGI_APPLICATION = 'dr.wsgi.application'


# Database
# https://docs.djangoproject.com/en/1.6/ref/settings/#databases
"""

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}
"""
DATABASES = {

    'default': {
        'NAME': 'dr',
        'ENGINE': 'django.db.backends.mysql',
        #'ENGINE': 'django.contrib.gis.db.backends.mysql',
        'USER': 'root',
        'PASSWORD': 'root',

    }
}

CITIES_FILES = {
    'city': {
       'filename': 'au.zip',
       'urls':     ['http://download.geonames.org/export/dump/'+'{filename}']
    },
}


# Internationalization
# https://docs.djangoproject.com/en/1.6/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True

SITE_URL = 'http://192.168.1.96:8000/web/'
# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.6/howto/static-files/

STATIC_URL = '/static/'
TEMPLATE_DIRS = [os.path.join(BASE_DIR, 'templates')]
STATICFILES_DIRS = [os.path.join(BASE_DIR, 'static')]
MEDIA_ROOT = os.path.join(STATICFILES_DIRS[0],'uploads')
MEDIA_URL = '/static/uploads/'

TEMPLATE_CONTEXT_PROCESSORS = (
    "django.contrib.auth.context_processors.auth",
    "django.contrib.messages.context_processors.messages",
    "django.core.context_processors.debug",
    "django.core.context_processors.i18n",
    "django.core.context_processors.static",
    "django.core.context_processors.media",
    "django.core.context_processors.request",
    "django.core.context_processors.tz",
)
