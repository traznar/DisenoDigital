#Importar librería cv2
import cv2
import numpy as np

imagen = cv2.imread("imagen100.png")

imgGris = cv2.cvtColor(imagen, cv2.COLOR_BGR2GRAY)
cv2.imshow('grises',imgGris)
print(imgGris)
x=0;
for i in imgGris:
        for j in i:
            print('['+str(x)+']' +' : ' + str(j) + ';')
            x=1+x;
        
        
