# Diverse infos on elawyer
## Set up
First run init script to create a new project

Then for django-debug-tool config:
- settings
	- Replace DATABASES with 
		`DATABASES = {
		    'default': {
		        'ENGINE': 'django.db.backends.postgresql',
		        'NAME': 'postgres',
		        'USER': 'postgres',
		        'HOST': 'db',
		        'PORT': 5432,
		    }
		}`
	- Add to INSTALLED_APPS
		`'debug_toolbar',`
	- Add to MIDDLEWARE
		`MIDDLEWARE = [
		    # ...
		    'debug_toolbar.middleware.DebugToolbarMiddleware',
		    # ...
		]`	
- URL.CONF
	- On top add 
	`from django.urls import include, path`
	- On bottom add
	`if settings.DEBUG:
    import debug_toolbar
    urlpatterns = [
        path('__debug__/', include(debug_toolbar.urls)),
        # For django versions before 2.0:
        # url(r'^__debug__/', include(debug_toolbar.urls)),
    ] + urlpatterns`	

