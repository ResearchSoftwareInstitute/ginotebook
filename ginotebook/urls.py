from django.conf.urls import patterns, include, url
from django.contrib import admin

from gidb.urls import router


urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'ginotebook.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    #url(r'^gidesigner/', include('gidesigner.urls', namespace='gidesigner')),

    url(r'ginotebook/admin/', include(admin.site.urls)),

    url(r'ginotebook/api/', include(router.urls)),

)
