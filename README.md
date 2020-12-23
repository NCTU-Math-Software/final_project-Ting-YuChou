# final_project 13-Ting-YuChou
final_project-Ting-YuChou created by GitHub Classroom
## Main purpose of the project 
試用crofton formula找出圓的弧長，並從公式延伸出較general的方法來估算curve length

## Method
#Crofton formula 
1. 在使用公式前需討論直線與圓的焦點個數，圓很容易地可知道當P在[0,R)時n(theta,p)=2, p＝Ｒ n(theta,p)=1
2. 這時我們就能帶入crofton formula, double integral of n(theta,p) d(theta)dp, theta from 0 to 2*pi, p from 0 to R
3. 可得到 2*L= 4 *pi *R, so L=2*pi*R 與我們原先知道的弧長相同

#General way
1. crofton formula這個公式在計算一般的曲線時較難去分case討論在theta和p的範圍內有幾個交點，所以我們將公式近似成 L=1/2* sigma n(theta(i),p(i)) *delta(theta(i)) *delta(p(i))   
   注意到delta(p(i))=delta(p), delta(theta(i))=delta(theta) 所以我們可以寫成 L=1/2 *n *delta(theta) *delta(p),where n is sum of intersection points.
2. 我以圓為範本，將半圓180度切成180份計算當p從0到R切99份的線與圓的交點個數乘以2，p=0的線單獨計算 theta=0上的直線也單獨計算，最後總和的點即為總交點個數
3. 我用極座標來找出直線方程式，再與圓聯立並利用root finding找出解的個數





