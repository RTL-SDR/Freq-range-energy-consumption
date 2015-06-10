clear;
close all;
clc;
%%
ftsz = 16;
r500=load('freq-ranges/470-500/query-stats.txt');
r530=load('freq-ranges/470-530/query-stats.txt');
r560=load('freq-ranges/470-560/query-stats.txt');
r590=load('freq-ranges/470-590/query-stats.txt');
r620=load('freq-ranges/470-620/query-stats.txt');
r650=load('freq-ranges/470-650/query-stats.txt');
r680=load('freq-ranges/470-680/query-stats.txt');
r710=load('freq-ranges/470-710/query-stats.txt');
r740=load('freq-ranges/470-740/query-stats.txt');


v = [r500(:,4), r530(:,4), r560(:,4), r590(:,4)...
    r620(:,4) r650(:,4) r680(:,4) r710(:,4)...
    r740(:,4)];
labels = {'500','530','560', '590' , '620' , '650' , '680', '710' , '740'};

x= [30 60 90 120 150 180 210 240 270]

%%
%Plot figure: Box plots for delay per location

%Select maximum Y axis

    figure('Position',[440 378 560 620/3]);
    box on;
    boxplot(v ,x,'labels',labels,'symbol','g+','jitter',0,'notch','on',...
        'factorseparator',1);
    set(gca,'FontSize',ftsz);
    ylabel('Energy(Joule)','FontSize',ftsz);
    set(findobj(gca,'Type','text'),'FontSize',ftsz); 