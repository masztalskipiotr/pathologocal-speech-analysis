% figure 
% 
% % scatter3(polipfaldow(:,1),polipfaldow(:,2),polipfaldow(:,3),10)
% % ylabel('Shimmer [%]');
% % xlabel('Jitter [%]');
% % zlabel('F0 [Hz]');
% % title('Jitt-Shimm-F0 MOWA PATOLOGICZNA AKUSTYKA');
% % axis([0 50 0 50 80 200]);
% % hold on
% % 
% % scatter3(polipkrtani(:,1),polipkrtani(:,2),polipkrtani(:,3),10)
% % ylabel('Shimmer [%]');
% % xlabel('Jitter [%]');
% % zlabel('F0 [Hz]');
% % title('Jitt-Shimm-F0 MOWA PATOLOGICZNA AKUSTYKA');
% % axis([0 50 0 50 80 200]);
% % hold on
% % 
% % scatter3(rakgardla(:,1),rakgardla(:,2),rakgardla(:,3),10)
% % ylabel('Shimmer [%]');
% % xlabel('Jitter [%]');
% % zlabel('F0 [Hz]');
% % title('Jitt-Shimm-F0 MOWA PATOLOGICZNA AKUSTYKA');
% % axis([0 50 0 50 80 200]);
% % hold on
% 
% scatter3(zapalenie(:,4),zapalenie(:,5),zapalenie(:,6),10)
% ylabel('Shimmer [%]');
% xlabel('Jitter [%]');
% zlabel('F0 [Hz]');
% title('Jitt-Shimm-F0 MOWA PATOLOGICZNA AKUSTYKA');
% axis([0 50 0 50 80 200]);
% hold on
% 
% scatter3(zmiany(:,4),zmiany(:,5),zmiany(:,6),10)
% ylabel('Shimmer [%]');
% xlabel('Jitter [%]');
% zlabel('F0 [Hz]');
% title('Jitt-Shimm-F0 MOWA PATOLOGICZNA AKUSTYKA');
% axis([0 50 0 50 80 200]);
% hold on
% 
% scatter3(rakkrtani(:,4),rakkrtani(:,5),rakkrtani(:,6),10)
% ylabel('Shimmer [%]');
% xlabel('Jitter [%]');
% zlabel('F0 [Hz]');
% title('Jitt-Shimm-F0 MOWA PATOLOGICZNA EGG');
% axis([0 50 0 50 80 200]);
% hold on
% scatter3(zdrowy(:,4),zdrowy(:,5),zdrowy(:,6),10)
% ylabel('Shimmer [%]');
% xlabel('Jitter [%]');
% zlabel('F0 [Hz]');
% axis([0 50 0 50 80 200]);
% title('Jitt-Shimm-F0 PORÓWNANIE EGG (poprawna-patologiczna)');
% 
% legend('Zapalenie gard³a i krtani', 'Zmiany przerostowe krtani', 'Rak krtani', 'MOWA POPRAWNA');
% % 'Polip fa³dów g³osowych','Polip krtani', 'Rak gard³a', 
% figure 

figure 

% scatter(polipfaldow(:,1),polipfaldow(:,2),10)
% ylabel('Shimmer [%]');
% xlabel('Jitter [%]');
% axis([0 50 0 50]);
% hold on
% 
% 
% scatter(polipkrtani(:,1),polipkrtani(:,2),10)
% ylabel('Shimmer [%]');
% xlabel('Jitter [%]');
% axis([0 50 0 50]);
% hold on
% 
% 
% scatter(rakgardla(:,1),rakgardla(:,2),10)
% ylabel('Shimmer [%]');
% xlabel('Jitter [%]');
% axis([0 50 0 50]);
% hold on
scatter(zapalenie(:,1),zapalenie(:,2),10)
ylabel('Shimmer [%]');
xlabel('Jitter [%]');
axis([0 35 0 35]);
hold on

scatter(zmiany(:,1),zmiany(:,2),10)
ylabel('Shimmer [%]');
xlabel('Jitter [%]');
axis([0 35 0 35]);
hold on


scatter(rakkrtani(:,1),rakkrtani(:,2),10)
ylabel('Shimmer [%]');
xlabel('Jitter [%]');
axis([0 35 0 35]);
hold on

scatter(zapalenie(:,4),zapalenie(:,5),10)
ylabel('Shimmer [%]');
xlabel('Jitter [%]');
axis([0 35 0 35]);
hold on

scatter(zmiany(:,4),zmiany(:,5),10)
ylabel('Shimmer [%]');
xlabel('Jitter [%]');
axis([0 35 0 35]);
hold on


scatter(rakkrtani(:,4),rakkrtani(:,5),10)
ylabel('Shimmer [%]');
xlabel('Jitter [%]');
axis([0 35 0 35]);
hold on

% scatter(zdrowy(:,1),zdrowy(:,2),10)
% ylabel('Shimmer [%]');
% xlabel('Jitter [%]');
% axis([0 35 0 35]);
title('Jitt-Shimm MOWA PATOLOGICZNA PORÓWNANIE');
legend('Zapalenie gard³a i krtani(akustyka)', 'Zmiany przerostowe krtani(akustyka)', 'Rak krtani(akustyka)','Zapalenie gard³a i krtani(egg)', 'Zmiany przerostowe krtani(egg)', 'Rak krtani(egg)' );
% 'Polip fa³dów g³osowych','Polip krtani', 'Rak gard³a', 'MOWA POPRAWNA','Zapalenie gard³a i krtani', 'Zmiany przerostowe krtani', 'Rak krtani'
figure 

% scatter(ac(:,1),ac(:,2),10)
% ylabel('Shimmer [%]');
% xlabel('Jitter [%]');
% title('Jitt-Shimm MOWA POPRAWNA');
% axis([0 20 0 20]);
% hold on
% 
% scatter(egg(:,1),egg(:,2),10)
% ylabel('Shimmer [%]');
% xlabel('Jitter [%]');
% title('Jitt-Shimm MOWA POPRAWNA');
% axis([0 20 0 20]);
% legend('AKUSTYKA','EGG');