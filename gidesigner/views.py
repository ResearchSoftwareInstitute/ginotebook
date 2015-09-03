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

def birdview(request, watershed_id):
    watershed_name = Watershed.objects.get(pk=watershed_id)
    context = {'watershed_id': watershed_id,
               'watershed_name': watershed_name }
    return render(request, 'gidesigner/birdview.html', context)

def streetview(request, watershed_id):
    watershed_name = Watershed.objects.get(pk=watershed_id)
    context = {'watershed_id': watershed_id,
               'watershed_name': watershed_name }
    return render(request, 'gidesigner/streetview.html', context)

def runmodel(request, watershed_id):
    watershed_name = Watershed.objects.get(pk=watershed_id)
    context = {'watershed_id': watershed_id,
               'watershed_name': watershed_name }
    return render(request, 'gidesigner/runmodel.html', context)

def viewresults(request, watershed_id):
    watershed_name = Watershed.objects.get(pk=watershed_id)
    context = {'watershed_id': watershed_id,
               'watershed_name': watershed_name }
    return render(request, 'gidesigner/viewresults.html', context)

def report(request, watershed_id):
    watershed_name = Watershed.objects.get(pk=watershed_id)
    context = {'watershed_id': watershed_id,
               'watershed_name': watershed_name }
    return render(request, 'gidesigner/report.html', context)