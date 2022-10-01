function [] = Vykreslenie_Stavu_semaforov(Stav_Semafor)


fig2 = figure();
set(fig2, 'Position', [740 0 720 1000])

subplot(6,1,1)     
plot(Stav_Semafor(1,:))
title('STAV SEMAFORU A11')
ylim([0,1])

subplot(6,1,2)     
plot(Stav_Semafor(2,:))
title('STAV SEMAFORU A12')
ylim([0,1])

subplot(6,1,3)     
plot(Stav_Semafor(3,:))
title('STAV SEMAFORU A21')
ylim([0,1])

subplot(6,1,4)     
plot(Stav_Semafor(4,:))
title('STAV SEMAFORU A22')
ylim([0,1])

subplot(6,1,5)     
plot(Stav_Semafor(5,:))
title('STAV SEMAFORU A31')
ylim([0,1])

subplot(6,1,6)     
plot(Stav_Semafor(6,:))
title('STAV SEMAFORU A32')
ylim([0,1])

end
