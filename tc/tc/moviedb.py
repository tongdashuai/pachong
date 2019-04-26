from django.http import HttpResponse
from django.shortcuts import render
from TestModel.models import movie
 

def moviedb(request):
    
    list = movie.objects.all()

    return render(request,'movie.html',{'list':list})