from django.conf.urls import url

from hostmanagement import views

urlpatterns = [
    url(r'^hosts/$', views.hosts),
    url(r'^list/$', views.list),
]