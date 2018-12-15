from django.conf import settings
from django.contrib import admin
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.urls import path

urlpatterns = [
    path('api/admin/', admin.site.urls),
]


if settings.DEBUG:
    urlpatterns += staticfiles_urlpatterns()
