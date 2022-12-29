t=linspace(0,2*pi,100);

subplot(1,2,1);
y1=cos(t);
plot(t/pi,y1,'-ro');
grid on

title('Plot of cos(t)','Color','r','FontSize',18);
xlabel('X-axis','FontSize',16);
ylabel('Y-axis','FontSize',16);
hold; 

plot(1.2,1.5,'-ro');
text(1.25,1.5,'cos(t)','Color','r','FontSize',16);

axis([-1,3,-2,2])





subplot(1,2,1);
y2=cos(t).^2;
plot(t/pi,y2,'-ro');
grid on

title('Plot of cos(t).^2','Color','r','FontSize',18);
xlabel('X-axis','FontSize',16);
ylabel('Y-axis','FontSize',16);