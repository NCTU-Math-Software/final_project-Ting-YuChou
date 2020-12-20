# final_project 13-Ting-YuChou
final_project-Ting-YuChou created by GitHub Classroom
## Main purpose of the project 
試用crofton formula找出圓的弧長，並從公式延伸出較general的方法來估算curve length

## Method
1. >在使用公式前需討論直線與圓的焦點個數，圓很容易地可知道當P在[0,R)時n(theta,p)=2, p＝Ｒ n(theta,p)=1
 >>這時我們就能帶入crofton formula, double integral of n(theta,p)d(theta)dp, theta from 0 to 2*pi, p from 0 to R
 >>可得到 L=1/2*4*pi*R=2*pi*R 與我們原先知道的弧長相同

