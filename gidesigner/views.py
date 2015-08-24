from django.shortcuts import render

from django.http import HttpResponse


def index(request):
    mesg = "Hello, world. You're at the gidesigner index."
    context = {'mesg': mesg}
    return render(request, 'gidesigner/index.html', context)