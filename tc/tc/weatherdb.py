from django.http import HttpResponse 
from TestModel.models import weather
from django.shortcuts import render

def weatherdb(request):   
    lists = weather.objects.all()
    return render(request,'weather.html',{'lists':lists})