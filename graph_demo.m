function graph_demo()
    
    p=linspace(0,1,6);
    theta=linspace(0,pi/2,10);
    x=linspace(-1.5,1.5);
    k=linspace(0,2);
    
    
    r=1;
    t=linspace(0,2*pi);
    plot(r*cos(t),r*sin(t))
    hold on
    axis equal
    
    for ii=2:10
        for jj=2:5
            xp=p(jj)*cos(theta(ii));
            yp=p(jj)*sin(theta(ii));
            c=xp^2+yp^2;
            q=-yp*xp+xp*yp;
            plot(x,f(x),'g')
            hold on
            plot(k,g(k),'--r')
            hold on
            
            
        end
    end
    axis([-1.5 1.5 -1.5 1.5])
    
    function y=f(x)
        y=c/yp-xp/yp*x;
    end
    
    function y=g(x)
        y=q/xp+yp/xp*x;
    end


end