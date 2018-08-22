a=1:1:180;
dr = a*(pi/180);
pm=input('pmax=');
pe=pm*sin(dr);
%plot(dr,pe);
d0 = input('d0= ');
d1= pi-(d0*(pi/180));
a1=cos(d1);
%disp(a1);
pmax1=pm*sin(d1);


for i=1:180
    s=i*(pi/180);
    b=(((d1-s)*sin(s))-cos(s)+cos(d1));
if(b==-abs(b) && b~=0 )
    l=i;
else
end
    a1=num2str(b);
   b1=[i,b]; 
end

delta=l;
dd=delta*(pi/180);
de1= pi-(delta*(pi/180));

do1=180-delta;

pmax2=pm*sind(delta);
disp('pef=');
disp(pmax2);


inShaftP=(pmax2-pmax1)*3;

disp('input shaft power=');
disp(inShaftP);

disp(do1);

dellmax =[0:0.1:do1/180*pi];

dell0=[0:0.005:d0*pi/180];
pe0=pm*[sin(d0*pi/180)];

pey0=[0:25:pmax2];
delly0=pi*d0/180;
delly1=dd;
dellym=pi*do1/180;

plot(dr,pe,'b',dellmax,pmax2,'r+',dell0,pe0,'k',delly0,pey0,'r+',delly1,pey0,'r+',dellym,pey0,'r+')








