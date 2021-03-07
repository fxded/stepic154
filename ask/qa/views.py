from django.shortcuts import render
from django.http import HttpResponse
import datetime 

# Create your views here.
def test(request, *args, **kwargs):
    now = datetime.datetime.now()
    msg = f'Request is {request} at : {now}'
    print (request)
    return HttpResponse(msg, content_type='text/plain')
