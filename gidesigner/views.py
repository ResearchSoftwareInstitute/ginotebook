from django.shortcuts import render
from django.http import HttpResponse


def index(request):
    context = {'watersheds_url': '/api/watersheds/'}
    return render(request, 'gidesigner/index.html', context)

def main(request):
    watershed = request.POST['watershed']
    return HttpResponse("Watershed {0} was selected.".format(watershed))