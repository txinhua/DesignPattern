#!/usr/bin/python 
# -*- coding: utf-8 -*-

import threading

from PIL import Image
imagesize_name = [{'size':40,'name':'20@2x'}, {'size':60,'name':'20@3x'}, {'size':58,'name':'29@2x'}, {'size':87,'name':'29@3x'}, {'size':80,'name':'40@2x'}, {'size':120,'name':'40@3x'},{'size':120,'name':'60@2x'}, {'size':180,'name':'60@3x'}, {'size':20,'name':'20'}, {'size':40,'name':'20_2@2x'}, {'size':29,'name':'29'}, {'size':58,'name':'29_2@2x'}, {'size':40,'name':'40'}, {'size':80,'name':'40_2@2x'}, {'size':76,'name':'76'}, {'size':152,'name':'76@2x'}, {'size':167,'name':'83.5@2x'}, {'size':1024,'name':'1024'}]
 
 
def start():
  for size in imagesize_name:
    t = threading.Thread(target=create_image, args=(size['size'],size['name']))
    t.start()
 
def create_image(size,name):
  pri_image = Image.open("icon.png")
  pri_image.resize((size, size), Image.ANTIALIAS).save("img/icon_%s.png" % name,quality=100)
 
 
if __name__ == "__main__":
  start()