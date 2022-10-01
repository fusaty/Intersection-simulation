
figure(1)

%% vykreslenie aut
%  vykreslenie aut A11 (z lava vlavo)
 for i = 1:pocet_aut_na_kriz(1)
     a=i*0.5+0.55;
   
    rectangle('Position',[-2.6*w*a 0.2*w 1.1*w 0.6*w],'Curvature',0.5, 'FaceColor','b')
%      drawnow
 end

%  vykreslenie aut A12 (z lava rovno)
for i = 1:pocet_aut_na_kriz(2)
     a=i*0.5+0.55;
   
    rectangle('Position',[-2.6*w*a -0.8*w 1.1*w 0.6*w],'Curvature',0.5, 'FaceColor','b')
%      drawnow
end
 
% vykreslenie aut A21 (z hora rovno)
 for i = 1:pocet_aut_na_kriz(3)
     b=i*1.3-1.3;
   
    rectangle('Position',[-1.3*w w*b+1.1*w 0.6*w 1.1*w],'Curvature',0.5, 'FaceColor','b')
%      drawnow
 end
 % vykreslenie aut A22 (z hora vlavo)
for i = 1:pocet_aut_na_kriz(4)
     b=i*1.3-1.3;
   
    rectangle('Position',[-0.3*w w*b+1.1*w 0.6*w 1.1*w],'Curvature',0.5, 'FaceColor','b')
%      drawnow
end
  % vykreslenie aut A31 (z dola rovno)
 for i = 1:pocet_aut_na_kriz(5)
     b=-i*1.3-1.4;
   
    rectangle('Position',[-0.3*w w*b+0.5*w 0.6*w 1.1*w],'Curvature',0.5, 'FaceColor','b')
%      drawnow
 end
 
 % vykreslenie aut A32 (z dola vpravo)
for i = 1:pocet_aut_na_kriz(6)
     b=-i*1.3-1.4;
   
    rectangle('Position',[0.7*w w*b+0.5*w 0.6*w 1.1*w],'Curvature',0.5, 'FaceColor','b')
%      drawnow
end
