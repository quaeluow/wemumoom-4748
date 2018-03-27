% fundamental properties of s_jk and s_kj
%
% program name: plot_hfm_properties.m
%                    written on April 12 by N. Chino.
%                    revised on April 14 by N. Chino.
%
figure(1);
t=[0: 0.01: 2*pi];
ysin=sin(t);
ycos=cos(t);
sumsc=ysin+ycos;
plot(t,ysin,'-g',t,ycos,'-b',t,sumsc,'-r');
set(gca,'XTick',0:pi/4:2*pi)
set(gca,'XTickLabel',{'0','pi/4','pi/2','3pi/4','pi','5pi/4','3pi/2','7pi/4','2pi'})
grid on;
% 
% Plot command should precede the following properties.
%
title('Fundamental properties of s_{kj}','fontsize',18);
xlabel('radian','fontname','times');
ylabel('magnitude');
text(1.4,1.3,'s_{kj}','fontweight','bold');
text(1.5,0.2,'cos','fontweight','bold');
text(2.7,0.6,'sin','fontweight','bold');
print -depsc eps-files/hfm_properties_s_kj.eps
pause;
%
figure(2);
% t=[0: 0.01: 4*pi];
% ysin=sin(t);
% ycos=cos(t);
difsc=ycos-ysin;
plot(t,ysin,'-g',t,ycos,'-b',t,difsc,'-r');
set(gca,'XTick',0:pi/4:2*pi)
set(gca,'XTickLabel',{'0','pi/4','pi/2','3pi/4','pi','5pi/4','3pi/2','7pi/4','2pi'})
grid on;
% 
% Plot command should precede the following properties.
%
title('Fundamental properties of s_{jk}','fontsize',18);
xlabel('radian','fontname','times');
ylabel('magnitude');
text(4.6,1.3,'s_{jk}','fontweight','bold');
text(1.5,0.2,'cos','fontweight','bold');
text(2.7,0.6,'sin','fontweight','bold');
print -depsc eps-files/hfm_properties_s_jk.eps
pause;
%
figure(3);
plot(t,sumsc,'-r',t,difsc,'-b');
set(gca,'XTick',0:pi/4:2*pi)
set(gca,'XTickLabel',{'0','pi/4','pi/2','3pi/4','pi','5pi/4','3pi/2','7pi/4','2pi'})
title('Fundamental properties of s_{jk} and s_{kj}','fontsize',18);
xlabel('radian','fontname','times');
ylabel('s_{kj} (red) and s_{jk} (blue)');
text(1.4,1.3,'s_{kj}','fontweight','bold');
text(4.0,1,'s_{jk}','fontweight','bold');
grid on;
print -depsc eps-files/hfm_properties_s_kj-and-s_jk.eps
pause;
%
figure(4);
avsumsc=sumsc/2; avdifsc=difsc/2;
plot(t,ysin,'-g',t,ycos,'-b',t,avsumsc,'-r',t,avdifsc,'-k');
set(gca,'XTick',0:pi/4:2*pi)
set(gca,'XTickLabel',{'0','pi/4','pi/2','3pi/4','pi','5pi/4','3pi/2','7pi/4','2pi'})
title('Fundamental properties of s_{jk}','fontsize',18);
xlabel('radian','fontname','times');
ylabel('s_{kj} (red) and s_{jk} (blue)');
text(1.4,0.6,'s_{kj}','fontweight','bold');
text(4.0,0.3,'s_{jk}','fontweight','bold');
text(1.5,0.2,'cos','fontweight','bold');
text(2.7,0.6,'sin','fontweight','bold');
grid on;
