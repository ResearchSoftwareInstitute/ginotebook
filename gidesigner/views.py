from django.shortcuts import render
from django.core.urlresolvers import reverse


def index(request):
    context = {'watersheds_url': '/api/watersheds/'}
    return render(request, 'gidesigner/index.html', context)