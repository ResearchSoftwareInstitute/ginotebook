from django.shortcuts import render
from django.http import HttpResponse

from gidb.models import Watershed

def index(request):
    context = {'watersheds_url': '/api/watersheds/'}
    return render(request, 'gidesigner/index.html', context)

def main(request):
    watershed_id = request.POST['watershed']
    watershed_name = Watershed.objects.get(pk=watershed_id)
    context = {'watershed_id': watershed_id,
               'watershed_name': watershed_name }
    return render(request, 'gidesigner/main.html', context)