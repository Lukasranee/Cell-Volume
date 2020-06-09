%Cell Volume, @Lukas Rane
clc
close all
clear all

results = importdata('results.txt');
xaxis = results((24:end),1);
ROI1 = results(:,2);
ROI1norm = ROI1/max(ROI1);
ROI2 = results(:,3);
ROI2norm = ROI2/max(ROI2);
ROI3 = results(:,4);
ROI3norm = ROI3/max(ROI3);
ROI4 = results(:,5);
ROI4norm = ROI4/max(ROI4);

%analyzis of ROI1, first transfected cell
ROI1plot = [];
count = 24;
for i = 1:1:length(xaxis)
   ROI1plot(i) = ROI1norm(count);
   count = count + 1;
end
figure(1);
plot(xaxis,ROI1plot, 'linewidth', 2)
hold on
plot(24,0.996,'*r')
hold on
plot(26,0.879,'*r')
hold on
y = [0.996 0.879];
x = [24 26];
plot(x, y, 'r', 'linewidth', 2);
annotation('textbox', [0.3, 0.72, 0.1, 0.1], 'FontSize', 20, 'String', "k = -0.0585")
grid on
title('Region of interest 1', 'Fontsize',20)
xlabel('Time [s]', 'FontSize', 20);
ylabel('I/I_0', 'FontSize', 20)
slope1 = (ROI1plot(3)-ROI1plot(1))/(xaxis(3)-xaxis(1));
fprintf('ROI1 slope: %d .\n', slope1);

%analyzis of ROI2, second transfected cell

ROI2plot = [];
count = 24;
for i = 1:1:length(xaxis)
   ROI2plot(i) = ROI2norm(count);
   count = count + 1;
end
figure(2);
plot(xaxis,ROI2plot,'g', 'linewidth', 2)
hold on
plot(24,0.9984,'*r')
hold on
plot(26,0.8825,'*r')
hold on
y = [0.9984 0.8825];
x = [24 26];
plot(x, y, 'r', 'linewidth', 2);
annotation('textbox', [0.3, 0.72, 0.1, 0.1], 'FontSize', 20, 'String', "k = -0.0579")
grid on
title('Region of interest 2', 'Fontsize',20)
xlabel('Time [s]', 'FontSize', 20);
ylabel('I/I_0', 'FontSize', 20)
slope2 = (ROI2plot(3)-ROI2plot(1))/(xaxis(3)-xaxis(1));
fprintf('ROI2 slope: %d .\n', slope2);

%analysis of ROI3, first untransfected cell

ROI3plot = [];
count = 26;
xaxis3 = results((26:end),1);
for i = 1:1:length(xaxis3)
   ROI3plot(i) = ROI3norm(count);
   count = count + 1;
end
figure(3);
plot(xaxis3,ROI3plot,'k', 'linewidth', 2)
hold on
plot(26,1,'*r')
hold on
plot(40,0.9191,'*r')
hold on
y = [1 0.9191];
x = [26 40];
plot(x, y, 'r', 'linewidth', 2);
annotation('textbox', [0.3, 0.72, 0.1, 0.1], 'FontSize', 20, 'String', "k = -0.0066")
grid on
title('Region of interest 3', 'Fontsize',20)
xlabel('Time [s]', 'FontSize', 20);
ylabel('I/I_0', 'FontSize', 20)
slope3 = (ROI3plot(14)-ROI3plot(1))/(xaxis3(14)-xaxis3(1));
fprintf('ROI3 slope: %d .\n', slope3);

%analysis of ROI4, second transfected cell


ROI4plot = [];
count = 23;
for i = 1:1:length(xaxis)
   ROI4plot(i) = ROI4norm(count);
   count = count + 1;
end
figure(4);
plot(xaxis,ROI4plot,'c', 'linewidth', 2)
hold on
plot(24,1,'*r')
hold on
plot(40,0.9043,'*r')
hold on
y = [1 0.9043];
x = [24 40];
plot(x, y, 'r', 'linewidth', 2);
annotation('textbox', [0.3, 0.72, 0.1, 0.1], 'FontSize', 20, 'String', "k = -0.0061")
grid on
title('Region of interest 4', 'Fontsize',20)
xlabel('Time [s]', 'FontSize', 20);
ylabel('I/I_0', 'FontSize', 20)
slope4 = (ROI4plot(15)-ROI4plot(1))/(xaxis(15)-xaxis(1));
fprintf('ROI4 slope: %d .\n', slope4);


fprintf('ROI1 slope: %d .\n', slope1);

ROI2plot = [];
count = 24;
for i = 1:1:length(xaxis)
   ROI2plot(i) = ROI2norm(count);
   count = count + 1;
end
figure(5);
plot(xaxis,ROI2plot,'g', 'linewidth', 2)
hold on
plot([xaxis(1) xaxis(end)],[0.83 0.83], 'r','linewidth',2)
hold on
plot(24,0.83,'r*')
grid on
title('Region of interest 2', 'Fontsize',20)
xlabel('Time [s]', 'FontSize', 20);
ylabel('I/I_0', 'FontSize', 20)
slope2 = (ROI2plot(3)-ROI2plot(1))/(xaxis(3)-xaxis(1));
fprintf('ROI2 slope: %d .\n', slope2);

ROI3plot = [];
count = 26;
xaxis3 = results((26:end),1);
for i = 1:1:length(xaxis3)
   ROI3plot(i) = ROI3norm(count);
   count = count + 1;
end
figure(6);
plot(xaxis3,ROI3plot,'k', 'linewidth', 2)
hold on
plot([xaxis(1) 90],[0.86 0.86],'r','linewidth',2)
hold on
plot(24,0.86,'r*')
grid on
title('Region of interest 3', 'Fontsize',20)
xlabel('Time [s]', 'FontSize', 20);
ylabel('I/I_0', 'FontSize', 20)
slope3 = (ROI3plot(14)-ROI3plot(1))/(xaxis3(14)-xaxis3(1));
fprintf('ROI3 slope: %d .\n', slope3);







