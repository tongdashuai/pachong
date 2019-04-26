import requests
from lxml import etree
import urllib.request
import pymysql
from bs4 import BeautifulSoup


conn=pymysql.connect(host='localhost',user='root',passwd='1234',db='test',charset="utf8")
cursor=conn.cursor()
headers={'user-agent':'Mozilla/5.0(Windows NT 6.1;Win64;x64)AppleWebKit/537.36(KHTML,like Gecko) Chrome/52.0.2743.82 Safari/537.36','Host':'movie.douban.com'}
for i in range(0,10):
      url = 'https://movie.douban.com/top250?start='+str(25*i)
      r = requests.get(url,headers=headers)
      html = etree.HTML(r.text)
      datas=html.xpath('//ol[@class="grid_view"]/li')
      a=0
      for data in datas:
            title=data.xpath('div/div[2]/div[@class="hd"]/a/span[1]/text()')
            img=data.xpath('div/div[1]/a/img/@src')
            urllib.request.urlretrieve(img[0],filename="G:top250/"+str(i*25+a+1)+".jpg")          
            a+=1
            cursor.execute("insert into testmodel_movie(title,img) values(%s,%s)",(title,img))
cursor.close()
conn.commit()
conn.close()     
 
