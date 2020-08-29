f = scf(); // Cria uma nova figura
f.background = color("white") // Define o fundo da figura na cor branca

// Plotar uma senoide
t = 0:0.01:10; // gerar um conjunto de pontos no tempo
T = 2; // período da onda
A = 1; // amplitude da onda
y = A*sin(2*%pi*t/T);
plot(t,y)

// *** Exemple: To=T/8, t=0 ***
//T0 = T/8;
//t_first = 0;
//t2 = t_first:T0:10;
// *** Ex1: To = T,t = 0 ***
//T0 = T;
//t_first = 0;
//t2 = t_first:T0:10;
// *** Ex2: To = T,t = T/8 ***
//T0 = T;
//t_first = T/8; 
//t2 = t_first:T0:10;
// *** Ex3: To = T/2,t = 0 ***
//T0 = T/2;
//t_first = 0; 
//t2 = t_first:T0:10;
// *** Ex4: To = T/2,t = T/4 ***
//T0 = T/2;
//t_first = T/4; 
//t2 = t_first:T0:10;
// *** Ex5: To = T/2,t = T/8 ***
//T0 = T/2;
//t_first = T/8; 
//t2 = t_first:T0:10;
// *** Ex6: To = 0.9T/2,t = 0 ***
T0 = 0.9*(T/2);
t_first = 0; 
t2 = t_first:T0:10;

y2 = sin(2*%pi*t2/T);
plot2d2(t2,y2,style=[color("red")])
set(gca(),"data_bounds",matrix([0,10,-1.4,1.4],2,-1));
set(gca(),"grid",[1 1]);
legend(['continuo';'discreto'],"in upper right");
title(["Senoide,","$y(t)=sin(2\pi f t)$","Período de amostragem "+string(T0)+" inicio em t= "+string(t_first)],'fontsize',2);
xlabel("$t$",'fontsize',2);
ylabel("$y(t)$",'fontsize',2);
