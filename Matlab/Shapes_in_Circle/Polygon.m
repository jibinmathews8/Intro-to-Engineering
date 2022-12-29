function [Xc,Yc,Xpoly,Ypoly] = Polygon(Radius,Nterms,Phase)
%Xc,Yc: Coordinates of circle
%Xpoly,Ypoly: Coordinates of the polygon
%Radius: Radius of the circle
%Nsides: Number of verticies of polygon
%Phase: allows for rotation of polygon


%Creates the circle
N=1000;
ThetaCircle=zeros(1,N+1);
for k=1:N+1
    ThetaCircle(k)=2*pi*(k-1)/N;
end

Xc=Radius*cos(ThetaCircle);
Yc=Radius*sin(ThetaCircle);
plot(Xc,Yc,' - ');
hold;
%Create Polygon
ThetaPolygon=zeros(1,Nterms+1);
for k=1:Nterms+1
    ThetaPolygon(k)=2*pi*(k-1)/Nterms;
end

Xpoly=Radius*cos(ThetaPolygon+Phase);
Ypoly=Radius*sin(ThetaPolygon+Phase);
plot(Xpoly,Ypoly,'-r','LineWidth',2);
end

