%{
Definizione variabili con e senza ";"
Comandi clear, clear var, clc
Definizione di vettori riga e colonna
Definizione di matrici
Moltiplicazione matrice per vettore, matrice trasposta
Estrarre determinati elementi dalla matrice (tutti e tre i modi)
Definizione vettori con v=x:step:y
Dimensione dei vettori e matrici: size()
Costruzione di matrice partendo da matrice/vettori già definiti
Matrice identità
Definizione ciclo for
Autovalori di una matrice con eig()

Esercizio
A=
0 1 0
-1 0 0
0 0 -2
Calcolare A', eig(A), A'A con due cicli for

esempio for
t=0:.1:5;x=sin(t);
for i=1:20
    r(i)=sqrt(i);
end
%}

clear;
A=[0 1 0;-1 0 0;0 0 -2];
lambda=eig(A);
At=A';n=max(size(A));B=zeros(n);
for i=1:n
    for j=1:n
        for k=1:n
            B(i,j)=B(i,j)+At(i,k)*A(k,j);
        end
    end
end
%oppure posso farlo come segue
for i=1:n
    for j=1:n
        C(i,j)=At(i,:)*A(:,j);
    end
end
