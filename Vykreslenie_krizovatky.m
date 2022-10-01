


hFig = figure(1);
set(hFig, 'Position', [400 50 720 720])
% hold on
cla(hFig)

%% prisposobenie velkosti zobrazenia
maxA = 0; maxB = 0; maxC = 0;
for ii=1:6
    if pocet_aut_na_kriz(ii) <0
        pocet_aut_na_kriz(ii) = 0;%osetrenie zapornych hodnot poctu aut
    end
    
    if pocet_aut_na_kriz(ii) < 9
        dlzka_cesty = 250;
        maxA = 1;
    end
    if  pocet_aut_na_kriz(ii) > 9
        dlzka_cesty = 400;
        maxB =2;
    end
    if  pocet_aut_na_kriz(ii) > 15
        dlzka_cesty = 500;
        maxC = 3;
    end
    if maxA > 0
        dlzka_cesty = 250;
        if maxB > 0
            dlzka_cesty = 400;
            if maxC > 0
                dlzka_cesty = 500;
            end
        end
       
    end
    
end
maxA = 0; maxB = 0; maxC = 0;
d = dlzka_cesty; w = sirka_pruhu; s = 0.7*w;

%% biele pruhy
x2 = [0-w*0.5 0+w*1.5;
    0-w*1.5 0+w*0.5;
    0-w*1.5 0-w*1.5;]';
y2 = [0-w 0-w;
    0+w 0+w;
    0-w 0+w;]';

line(x2,y2, 'Color','cyan','LineStyle','-','LineWidth',1)


%% vykreslenie krajnic ciest
x =[0-w*1.5 0-w*1.5;
    0-w*1.5 0-w*1.5-d;0-w*1.5 0-w*1.5-d;
    0-w*1.5 0-w*1.5;0+w*1.5 0+w*1.5;
    0+w*1.5 0+w*1.5+d;0+w*1.5 0+w*1.5+d;
    0+w*1.5 0+w*1.5;]';
% 0-w*1.5-2*w 0-w*1.5;0-w*1.5-w 0-w*1.5
y =[0-w 0-w-d;
    0-w 0-w;0+w 0+w;
    0+w 0+w+d;0+w 0+w+d;
    0+w 0+w;0-w 0-w;
    0-w 0-w-d;]';
%  0-w 0-3*w;0-w 0-2*w

line(x,y, 'Color','black','LineStyle','-','LineWidth',2)

%% vykreslenie pruhov
x1 =[0-w*0.5 0-w*0.5;0+w*0.5 0+w*0.5;
    0-w*1.5 0-w*1.5-d;
    0+w*0.5 0+w*0.5;0-w*0.5 0-w*0.5;
    0+w*1.5 0+w*1.5+d]';
y1 =[0-w 0-w-d;0-w 0-w-d;
    0 0;
    0+w 0+w+d;0+w 0+w+d;
    0 0]';

line(x1,y1, 'Color','red','LineStyle','--','LineWidth',1)

%% Vykreslenie šípok na ceste
% A11
x11 = ([-1.5*w w-w/4]');
y11 = [w/2 w/2]';
line(x11,y11, 'Color','black','LineStyle','-','LineWidth',0.5)

% A12
x12 = ([-1.5*w 1.5*w;-1.5*w -w]');
y12 = [-w/2 -w/2;-w/2 -w]';
line(x12,y12, 'Color','black','LineStyle','-','LineWidth',0.5)

% A21
x21 = ([-w/2 -w/2;-w/2 -w/2;-w/2 -w/3;-w/2 -w+w/3]')-w/2;
y21 = ([-w w;w w+w;w+w 1.25*w;2*w 1.25*w]')*(-1);
line(x21,y21, 'Color','black','LineStyle','-','LineWidth',0.5)

% A22
x22 = ([-w/2 w;w w+w;w+w 1.25*w;2*w 1.25*w]')+w/2;
y22 = ([0 -w/2;-w/2 -w/2;-w/2 -w/3;-w/2 -w+w/3]')+w;
line(x22,y22, 'Color','black','LineStyle','-','LineWidth',0.5)

% A31
x31 = ([-1.5*w -0.5*w;-w/2 -w/2;-w/2 -w/3;-w/2 -w+w/3]')+1.5*w;
y31 = ([-w w;w w+w;w+w 1.25*w;2*w 1.25*w]');
line(x31,y31, 'Color','black','LineStyle','-','LineWidth',0.5)

% A32
x32 = ([w/2 w;w w+w;w+w 1.25*w;2*w 1.25*w]')+w/2;
y32 = [-w -w/2;-w/2 -w/2;-w/2 -w/3;-w/2 -w+w/3]';
line(x32,y32, 'Color','black','LineStyle','-','LineWidth',0.5)

%% semafory
%% semafor lavy vlavo A11
if semafory(1) == 0
    rectangle('Position',[-4.5*s,1.7*s,s,s],'EdgeColor','k','LineWidth',0.5,'Facecolor','r')
    rectangle('Position',[-5.5*s,1.7*s,s,s],'EdgeColor','k','LineWidth',0.5)
else
    rectangle('Position',[-4.5*s,1.7*s,s,s],'EdgeColor','k','LineWidth',0.5)
    rectangle('Position',[-5.5*s,1.7*s,s,s],'EdgeColor','k','LineWidth',0.5,'Facecolor','g')
end
%% semafor lavy vpravo A12
if semafory(2) == 0
    rectangle('Position',[-4.5*s,-2.7*s,s,s],'EdgeColor','k','LineWidth',0.5,'Facecolor','r')
    rectangle('Position',[-5.5*s,-2.7*s,s,s],'EdgeColor','k','LineWidth',0.5)
else
    rectangle('Position',[-4.5*s,-2.7*s,s,s],'EdgeColor','k','LineWidth',0.5)
    rectangle('Position',[-5.5*s,-2.7*s,s,s],'EdgeColor','k','LineWidth',0.5,'Facecolor','g')
end

%% semafor horny vlavo A21
if semafory(3) == 0
    rectangle('Position',[-3.5*s,3*s,s,s],'EdgeColor','k','LineWidth',0.5,'Facecolor','r')
    rectangle('Position',[-3.5*s,4*s,s,s],'EdgeColor','k','LineWidth',0.5)
else
    rectangle('Position',[-3.5*s,3*s,s,s],'EdgeColor','k','LineWidth',0.5)
    rectangle('Position',[-3.5*s,4*s,s,s],'EdgeColor','k','LineWidth',0.5,'Facecolor','g')
end

%% semafor horny vpravo A22
if semafory(4) == 0
    rectangle('Position',[2.5*s,3*s,s,s],'EdgeColor','k','LineWidth',0.5,'Facecolor','r')
    rectangle('Position',[2.5*s,4*s,s,s],'EdgeColor','k','LineWidth',0.5)
else
    rectangle('Position',[2.5*s,3*s,s,s],'EdgeColor','k','LineWidth',0.5)
    rectangle('Position',[2.5*s,4*s,s,s],'EdgeColor','k','LineWidth',0.5,'Facecolor','g')
end
%% semafor dolny rovno A31
if semafory(5) == 0
    rectangle('Position',[2.5*s,-4*s,s,s],'EdgeColor','k','LineWidth',0.5,'Facecolor','r')
    rectangle('Position',[2.5*s,-5*s,s,s],'EdgeColor','k','LineWidth',0.5)
else
    rectangle('Position',[2.5*s,-4*s,s,s],'EdgeColor','k','LineWidth',0.5)
    rectangle('Position',[2.5*s,-5*s,s,s],'EdgeColor','k','LineWidth',0.5,'Facecolor','g')
end
%% semafor dolny vpravo A32
if semafory(6) == 0
    rectangle('Position',[-3.5*s,-4*s,s,s],'EdgeColor','k','LineWidth',0.5,'Facecolor','r')
    rectangle('Position',[-3.5*s,-5*s,s,s],'EdgeColor','k','LineWidth',0.5)
else
    rectangle('Position',[-3.5*s,-4*s,s,s],'EdgeColor','k','LineWidth',0.5)
    rectangle('Position',[-3.5*s,-5*s,s,s],'EdgeColor','k','LineWidth',0.5,'Facecolor','g')
end

%% pocty aut (label)
%% pocet aut vlavo hore A11
s = -10*w;
v = 1.7*w;
hodnota = num2str(pocet_aut_na_kriz(1));
str = ['A11 = ',hodnota];
text(s*d/333 ,v*d/300 ,str,'FontSize',13);

%% pocet aut vlavo dole A12
% s = -15*w;
v = -1.7*w;
hodnota = num2str(pocet_aut_na_kriz(2));
str1 = ['A12 = ',hodnota];
text(s*d/333 ,v*d/300 ,str1,'FontSize',13);

%% pocet aut hore vpravo A21
% s = -12*w;
v = -1.7*w;
hodnota = num2str(pocet_aut_na_kriz(3));
str = ['A21 = ',hodnota];
text((-2.3*w)*d/333-3 ,-2.8*(2*v)*d/300 ,str,'FontSize',13,'Rotation',-90);

%% pocet aut hore vlavo A22
% s = -12*w;
v = -1.7*w;
hodnota = num2str(pocet_aut_na_kriz(4));
str = ['A22 = ',hodnota];
text((2.5*w)*d/333 , -2.8*(2*v)*d/300 ,str,'FontSize',13,'Rotation',-90);

%% pocet aut dole vlavo A31
% s = -12*w;
v = -1.7*w;
hodnota = num2str(pocet_aut_na_kriz(5));
str = ['A31 = ',hodnota];
text((-2.3*w)*d/333-3 ,(3*v)*d/300 ,str,'FontSize',13,'Rotation',-90);

%% pocet aut dole vpravo A32
% s = -12*w;
v = -1.7*w;
hodnota = num2str(pocet_aut_na_kriz(6));
str = ['A32 = ',hodnota];
text((2.5*w)*d/333 ,(3*v)*d/300 ,str,'FontSize',13,'Rotation',-90);

%% Vykreslenie intervalu a cyklu
hodnota = num2str(Interval);
str = ['Interval = ',hodnota, ' s'];
cas = num2str(cas);
str1 = ['Režim = ', cas];
if d == 250
    text(-200 ,-200 ,str,'FontSize',15);
    text(100 ,-200 ,str1,'FontSize',15);
elseif d==400
    text(-350 ,-350 ,str,'FontSize',15);  
    text(150 ,-350 ,str1,'FontSize',15);  
else
    text(-450 ,-450 ,str,'FontSize',15);
     text(200 ,-450 ,str1,'FontSize',15);
end



%%
axis equal
xlim([-d d])
ylim([-d d])

