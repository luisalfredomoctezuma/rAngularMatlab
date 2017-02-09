global alfa beta theta;
Rotx=[ 1 0          0           0;
       0 cosd(alfa) -sind(alfa) 0;
       0 sind(alfa)  cosd(alfa) 0;
       0 0           0          1];

Roty=[ cosd(beta) 0 sind(beta) 0;
      0           1 0          0;
      sind(beta)  0 cosd(beta) 0;
      0           0 0           1];

Rotz=[cosd(theta) -sind(theta) 0 0;
      sind(theta) cosd(theta)  0 0;
      0           0            1 0;
      0           0            0 1];

trasP1=[1 0 0 0;
        0 1 0 0;
        0 0 1 5;
        0 0 0 1];
    
trasP2=[1 0 0 0;
        0 1 0 0;
        0 0 1 3;
        0 0 0 1];
trasP3=[1 0 0 0;
        0 1 0 0;
        0 0 1 5;
        0 0 0 1];

p1=Rotz*trasP1;  p2=p1*Roty*trasP2;   p3=p2*Rotx*trasP3;

hold off
plot3(p1(1,4),p1(2,4),p1(3,4),'ro')
line([0 p1(1,4)],[0 p1(2,4)],[0 p1(3,4)],'color','r','LineWidth',10)
line([p1(1,4) p2(1,4)],[p1(2,4) p2(2,4)],[p1(3,4) p2(3,4)],'color','b','LineWidth',5)
line([p2(1,4) p3(1,4)],[p2(2,4) p3(2,4)],[p2(3,4) p3(3,4)],'color','r','LineWidth',7)

axis([-15 15 -15 15 0 15]),grid on, xlabel('x'),ylabel('y'),zlabel('z')

