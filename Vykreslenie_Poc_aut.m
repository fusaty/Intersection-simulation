% Funkcia na vykreslenie grafov
function [] = Vykreslenie_Poc_aut(Poc_aut)

% auta
fig2 = figure();
set(fig2, 'Position', [0 0 720 1000])

subplot(6,1,1)     
plot(Poc_aut(1,:))
title('Pocet aut A11')
ylim([0,15])

subplot(6,1,2)     
plot(Poc_aut(2,:))
title('Pocet aut A12')
ylim([0,15])

subplot(6,1,3)     
plot(Poc_aut(3,:))
title('Pocet aut A21')
ylim([0,15])

subplot(6,1,4)     
plot(Poc_aut(4,:))
title('Pocet aut A22')
ylim([0,15])

subplot(6,1,5)     
plot(Poc_aut(5,:))
title('Pocet aut A31')
ylim([0,15])

subplot(6,1,6)     
plot(Poc_aut(6,:))
title('Pocet aut A32')
ylim([0,15])




end
