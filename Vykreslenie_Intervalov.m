function [] = Vykreslenie_Intervalov(Interval)
fig2 = figure();
set(fig2, 'Position', [450 0 720 1000])

subplot(3,1,1)     
plot(Interval(1,:))
title('Interval A1')
xlabel('Cyklus')
ylabel('Interval zelenej')
% ylim([0,25])

subplot(3,1,2)     
plot(Interval(3,:))
title('Interval A2')
xlabel('Cyklus')
ylabel('Interval zelenej')
% ylim([0,25])

subplot(3,1,3)     
plot(Interval(5,:))
title('Interval A3')
xlabel('Cyklus')
ylabel('Interval zelenej')
% ylim([0,25])

end

