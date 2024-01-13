printf('Name of software house: FAST ISB \nTEAM MEMBERS: \n');
printf('Name          : Student Id  :\n');
printf('Maaz Ali      : 22i-1042    : \n');

choice=1;
while(choice!=0)


xyear=input('Enter a year for prediction:');
key=input('Enter any key to continue:');
printf('\nPart 1:For the plot of x vs y agaist the given values in excel sheet check the graph window.\n');

 x=[0:1:71];
 y=[13.75, 13.90, 13.94, 14.03, 13.80, 13.77, 13.72, 13.97, 14.02, 13.98, 13.95, 14.00, 14.01, 14.02, 13.76, 13.83, 13.89, 13.90, 13.87, 14.01, 13.96, 13.83, 13.94, 14.09, 13.84, 13.91, 13.83, 14.11, 14.02, 14.13, 14.18, 14.22, 14.09, 14.26, 14.07, 14.06, 14.14, 14.28, 14.29, 14.19, 14.35, 14.29, 14.14, 14.18, 14.24, 14.37, 14.22, 14.41, 14.55, 14.34, 14.32, 14.47, 14.52, 14.54, 14.48, 14.57, 14.53, 14.52, 14.44, 14.54, 14.62, 14.47, 14.53, 14.57, 14.64, 14.82, 14.89, 14.80, 14.72, 14.84, 14.88, 14.74];
 grid on;
 plot(x,y,'bo');
 hold on;
 title('PLOT X vs Y');
 set(gca,'fontsize',24);
 xlabel('X = Years after 1950');
 ylabel('Y = Ave Global Temp in C');

 key=input('Enter any key to continue:');
 printf('\nPart 2: \n');

 p=polyfit(x,y,2);
 printf('\nThe values of coefficents of T(x) returned by polyfit ftn are:%d',p);
 printf('\nT(x)=1.5912e-04x^2 + 2.8208e-03x + 1.3854e+01\n');

 y1=1.5912e-04.*x.^2 + 2.8208e-03.*x + 1.3854e+01;
 key=input('Enter any key to continue:');
 printf('\nPart 3: For the plot T(x) on same graph of first plot check the graph window.\n');
 plot(x,y1,'rx');
 key=input('Enter any key to continue:');
 printf('\nPart 4: \n');

 x1=mod(xyear,1950);
 y2=1.5912e-04.*x1.^2 + 2.8208e-03.*x1 + 1.3854e+01;
 printf('For year %d:',xyear);
 printf('\nGlobal Average Temperature:%d',y2);

 x1=71;
 y2021=1.5912e-04.*x1.^2 + 2.8208e-03.*x1 + 1.3854e+01;
 printf('\nFor year:2021');
 printf('\nGlobal Average Temperature:%d',y2021);
 yconst=y2021;

 x1=75;
 y2=1.5912e-04.*x1.^2 + 2.8208e-03.*x1 + 1.3854e+01;
 printf('\nFor year:2025');
 printf('\nGlobal Average Temperature:%d',y2);
 diff=y2-yconst;
 printf('\nDifference between Global Average Temperature of 2021 and 2025:%d',diff);

 x1=100;
 y2=1.5912e-04.*x1.^2 + 2.8208e-03.*x1 + 1.3854e+01;
 printf('\nFor year:2050');
 printf('\nGlobal Average Temperature:%d',y2);
 diff=y2-yconst;
 printf('\nDifference between Global Average Temperature of 2021 and 2050:%d',diff);


 x1=150;
 y2=1.5912e-04.*x1.^2 + 2.8208e-03.*x1 + 1.3854e+01;
 printf('\nFor year:2100');
 printf('\nGlobal Average Temperature:%d',y2);
 diff=y2-yconst;
 printf('\nDifference between Global Average Temperature of 2021 and 2100:%d',diff);
 printf('\n');
 key=input('Enter any key to continue:');
 printf('\nPart 5:\n')
 derivative= polyder(p);
 printf('The polinomials of dT/dt=%d',derivative);
 printf('\ndT/dt=3.1824e-04x + 2.8208e-03\n');
 xx=71;
 x1=mod(xyear,1950);
 y2=3.1824e-04.*x1 + 2.8208e-03;
 printf('\nFor Year :%d',xyear);
 printf('\ndT/dt(rate of change of global average temperature):%d',y2);


 x1=71;
 y2=3.1824e-04.*x1 + 2.8208e-03;
 yrate=y2;
 printf('\nFor Year :2021');
 printf('\ndT/dt(rate of change of global average temperature):%d',yrate);


  predictedrate=y2.*4;
  predictedtemp=y2.*4 +14.856;
  printf('\nFor Year :2025');
  printf('\nPredicted dT/dt(rate of change of global average temperature):%d',predictedrate);
  printf('\nPredicted global average temperature:%d',predictedtemp);
  x1=75;
  y2=3.1824e-04.*x1 + 2.8208e-03;
  printf('\nOriginal dT/dt(rate of change of global average temperature):%d',y2);


  predictedrate=yrate.*29;
  predictedtemp=yrate.*29 +14.856;
  printf('\nFor Year :2050');
  printf('\nPredicted dT/dt(rate of change of global average temperature):%d',predictedrate);
  printf('\nPredicted global average temperature:%d',predictedtemp);
  x1=100;
  y2=3.1824e-04.*x1 + 2.8208e-03;
  printf('\nOriginal dT/dt(rate of change of global average temperature):%d',y2);


  predictedrate=yrate.*79;
  predictedtemp=yrate.*79 +14.856;
  printf('\nFor Year :2100');
  printf('\nPredicted dT/dt(rate of change of global average temperature):%d',predictedrate);
  printf('\nPredicted global average temperature:%d',predictedtemp);
  x1=150;
  y2=3.1824e-04.*x1 + 2.8208e-03;
  printf('\nOriginal dT/dt(rate of change of global average temperature):%d',y2);
  printf('\n');

  choice=input('If you want to QUIT press 0 else to continue press 1:');

endwhile;


