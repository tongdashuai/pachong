from django.http import HttpResponse
from django.shortcuts import render
from TestModel.models import phone
from django.conf import settings
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
 
def phonedb(request):
    
    posts = phone.objects.all()
    paginator = Paginator(posts, settings.PAGE_NUM)  
    page = request.GET.get('page') 
    try:
        post_list = paginator.page(page)
    except PageNotAnInteger:
        post_list = paginator.page(1)
    except EmptyPage:
        post_list = paginator.page(paginator.num_pages)
    return render(request,'phone.html',{'post_list':post_list})
     