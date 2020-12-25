
function crofton_formula(R)
    %input: R,radius
    %output: length of circle
    %example: crofton_formula(1)
    
    %crofton formula
    fun= @(x,y) 2+zeros(size(x));
    Len=1/2*integral2(fun,0,2*pi,0,R);
    disp(['curve length=',num2str(Len)])

    
    %general way of approximation
    n=0;
    p=linspace(0,R);
    theta=linspace(0,pi,181);
    x=linspace(-R,R,10^4+1);
    
    for ii=2:180
        for jj=2:99
            xp=p(jj)*cos(theta(ii));
            yp=p(jj)*sin(theta(ii));
            c=xp^2+yp^2;
            
            for kk=1:10^4
                if f(x(kk))*f(x(kk+1))<0
                    n=n+1;
                end
            end
        
        end
    end
    
    n=n*2;
    
    for ii=2:90
        k=sin(theta(ii))/cos(theta(ii));
        for kk=1:10^4
            if g(x(kk))*g(x(kk+1))<0
                n=n+1;
            end
        end
    end
    
    for ii=92:180
        k=sin(theta(ii))/cos(theta(ii));
        for kk=1:10^4
            if g(x(kk))*g(x(kk+1))<0
                n=n+1;
            end
        end
    end
    
    n=n+360+98*2*2;     %加上切線及theta=0的線與元的交點
    disp(['total points=',num2str(n)])            %total number of points
    
    function y=f(x).    %解交點的方程式
        y=(1+(xp/yp)^2)*x^2-(2*xp*c/(yp^2))*x+(c/yp)^2-R^2;
    end
    
    
    function y=g(x)     %當p=0 解交點的方程式
        y=(1+k^2)*x^2-R^2;
    end

    curve_length=1/2*n*pi/180*R/99;
   disp(['modified curve length=',num2str(curve_length)])

end
