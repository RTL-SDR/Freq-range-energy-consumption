clear;
close all;
clc;
%%
ftsz = 16;
r10=load('r100-110-1m.txt');
r20=load('r100-120-1m.txt');
r30=load('r100-130-1m.txt');

v = [r10(:,4), r20(:,4), r30(:,4)];

%%
%Plot figure: Box plots for delay per location

%Select maximum Y axis

    figure('Position',[440 378 560/2.5 420/2]);
    boxplot(v ,[10 20 30],'labels',{'10','20','30'},'symbol','g+','jitter',0,'notch','on',...
        'factorseparator',1);
    set(gca,'FontSize',ftsz);
    ylabel('Energy(Joule)','FontSize',ftsz);
    set(findobj(gca,'Type','text'),'FontSize',ftsz); %Boxplot labels size
    %Move boxplot labels below to avoid overlap with x axis
    txt=findobj(gca,'Type','text');
    set(txt,'VerticalAlignment','Top');
