function m3=prodotto(m1,m2)
%PRODOTTO: prodotto di due matrici
%   funzione che prende in ingresso 2 matrici e restituisce il
%   prodotto se si può fare (m1,m2, m3=m1*m2 fatto con regole algebra), se non
%   si può fare si restituisce errore

[rm1,cm1]=size(m1); [rm2,cm2]=size(m2);
if ne(cm1,rm2)
    error('Errore: numero colonne matrice 1 diverso dal numero di righe della matrice 2')
else
    for i=1:rm1
        for j=1:cm2
            m3(i,j)=m1(i,:)*m2(:,j);
        end
    end
end

