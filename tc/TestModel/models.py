from django.db import models

# Create your models here.
from django.db import models
 
class movie(models.Model):
    title = models.CharField(max_length=20)
    img=models.CharField(max_length=255)
    objects=models.Manager()

class weather(models.Model):
    city=models.CharField(max_length=20)
    date=models.CharField(max_length=20)
    weather = models.CharField(max_length=70)
    temp=models.CharField(max_length=32)
    objects=models.Manager()

class phone(models.Model):
    mNO = models.CharField(max_length=32)
    mMark= models.CharField(max_length=256)
    mPrice= models.CharField(max_length=32)
    mNote= models.CharField(max_length=1024)
    mFile= models.CharField(max_length=256)
    objects=models.Manager()   

class shubao(models.Model):
    title = models.CharField(max_length=60)
    price = models.CharField(max_length=60)
    objects=models.Manager()  