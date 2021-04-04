from django.shortcuts import render, render_to_response
from django.http import HttpResponse
import datetime 

# Create your views here.
def test(request, *args, **kwargs):
    now = datetime.datetime.now()
    msg = f'Request is {request} at : {now}'
    print (request)
    return HttpResponse(msg, content_type='text/plain')

def root_views (request, *args, **kwargs):
    return render(request, 'index.html', {
        'date': datetime.datetime.now(),
        'request': request,
    })
