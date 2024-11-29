% matrice A (3x2) come prodotto di v1 e v2
v1 = [1; 2; 3]; % Vettore colonna 3x1
v2 = [3; 4];    % Vettore colonna 2x1

A = v1 * v2';  % Prodotto esterno: matrice 3x2

B = [A(1,:); A(2,:)]; % Prime due righe di A
C = [A(1,:); A(3,:)]; % 1° e 3° riga di A
C(2,2) = 0; % Importo l'elemto 2,2 uguale a 0

% Polinomi caratteristici
%charpoly(B);
%charpoly(C);

% Autovalori di B e C
%eig(B);
%eig(C);

% Verifico gli autovalori calcolando le radici dei polinomi caratteristici
%roots(charpoly(B));
%roots(charpoly(C));

% Calcolo rango di B e C e li memorizzo nel vettore v3
v3 = [rank(B); rank(C)];

% Trova gli indici degli elementi di A maggiori di 5
[r, c] = find(A > 5);

% Crea la matrice D che memorizza le coppie (riga, colonna)
D = [r, c];