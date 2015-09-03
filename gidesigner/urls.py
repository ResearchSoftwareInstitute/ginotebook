from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^main$', views.main, name='main'),
    url(r'^birdview/(?P<watershed_id>[0-9]+)/$', views.birdview, name='birdview'),
    url(r'^streetview/(?P<watershed_id>[0-9]+)/$', views.streetview, name='streetview'),
    url(r'^runmodel/(?P<watershed_id>[0-9]+)/$', views.runmodel, name='runmodel'),
    url(r'^viewresults/(?P<watershed_id>[0-9]+)/$', views.viewresults, name='viewresults'),
    url(r'^report/(?P<watershed_id>[0-9]+)/$', views.report, name='report'),
]