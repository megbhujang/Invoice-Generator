from django.urls import path
from . import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
urlpatterns = [
    path('', views.home),
    path('display', views.display),
    path('store', views.store),
    path('email_generator', views.email_generator),

]
urlpatterns += staticfiles_urlpatterns()