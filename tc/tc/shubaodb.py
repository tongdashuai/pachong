from django.http import HttpResponse 
from TestModel.models import shubao
from django.shortcuts import render

def shubaodb(request):   
    lists = shubao.objects.all()
    return render(request,'shubao.html',{'lists':lists})