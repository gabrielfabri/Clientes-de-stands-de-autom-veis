%Representação da Base de Dados

stand(vegas,
      [cliente(rui,2324,23,medico,[carro(audi,a2,20000),carro(bmw,serie3,30000)]),
       cliente(rita,2325,32,advogado,[carro(audi,a3,30000)]),
       cliente(joao,2326,26,professor,[moto(honda,gl1800,26000)]),
       cliente(ana,2327,49,medico,[carro(audi,a4,40000), carro(bmw,serie3,32000),carro(ford,focus,24000)]),
      ]).

stand(miami,[
          cliente(rui,3333,33,operario,[carro(fiat,panda,12000)]),
          cliente(paulo,3334,22,advogado,[carro(audi,a4,36000)]),
          cliente(pedro,3335,46,advogado,[carro(honda,accord,32000), carro(audi,a2,20000)])
 ]).

% 2.1: devolve a lista com o nome de todos os clientes de um stand
?- stand(X,L),
|    findall(C,member(cliente(C,_,_,_,_),L),LC).
X = vegas,
L = [cliente(rui, 2324, 23, medico, [carro(audi, a2, 20000), carro(bmw, serie3, 30000)]), cliente(rita, 2325, 32, advogado, [carro(audi, a3, 30000)]), cliente(joao, 2326, 26, professor, [moto(honda, gl1800, 26000)]), cliente(ana, 2327, 49, medico, [carro(audi, a4, 40000), carro(bmw, serie3, 32000), carro(ford, focus, 24000)]),  (miami, [cliente(rui, 3333, 33, operario, [carro(..., ..., ...)]), cliente(paulo, 3334, 22, advogado, [...]), cliente(..., ..., ..., ..., ...)])],
LC = [rui, rita, joao, ana].

% 2.2: devolve os dados de cliente (todos excepto o nome): 
?- stand(X,L),
|    findall((N,ID,P),member(cliente(C,N,ID,P,_),L),D).
X = vegas,
L = [cliente(rui, 2324, 23, medico, [carro(audi, a2, 20000), carro(bmw, serie3, 30000)]), cliente(rita, 2325, 32, advogado, [carro(audi, a3, 30000)]), cliente(joao, 2326, 26, professor, [moto(honda, gl1800, 26000)]), cliente(ana, 2327, 49, medico, [carro(audi, a4, 40000), carro(bmw, serie3, 32000), carro(ford, focus, 24000)]),  (miami, [cliente(rui, 3333, 33, operario, [carro(..., ..., ...)]), cliente(paulo, 3334, 22, advogado, [...]), cliente(..., ..., ..., ..., ...)])],
D = [(2324, 23, medico),  (2325, 32, advogado),  (2326, 26, professor),  (2327, 49, medico)].

% 2.3: Listar Carros
?- stand(X,L),
findall(C,member(cliente(_,_,_,_,C),L),LC),
 flatten(LC,LCC),
|    |     findall(M,member(carro(M,_,_),LCC),LM1).
X = vegas,
L = [cliente(rui, 2324, 23, medico, [carro(audi, a2, 20000), carro(bmw, serie3, 30000)]), cliente(rita, 2325, 32, advogado, [carro(audi, a3, 30000)]), cliente(joao, 2326, 26, professor, [moto(honda, gl1800, 26000)]), cliente(ana, 2327, 49, medico, [carro(audi, a4, 40000), carro(bmw, serie3, 32000), carro(ford, focus, 24000)]),  (miami, [cliente(rui, 3333, 33, operario, [carro(..., ..., ...)]), cliente(paulo, 3334, 22, advogado, [...]), cliente(..., ..., ..., ..., ...)])],
LC = [[carro(audi, a2, 20000), carro(bmw, serie3, 30000)], [carro(audi, a3, 30000)], [moto(honda, gl1800, 26000)], [carro(audi, a4, 40000), carro(bmw, serie3, 32000), carro(ford, focus, 24000)]],
LCC = [carro(audi, a2, 20000), carro(bmw, serie3, 30000), carro(audi, a3, 30000), moto(honda, gl1800, 26000), carro(audi, a4, 40000), carro(bmw, serie3, 32000), carro(ford, focus, 24000)],
LM1 = [audi, bmw, audi, audi, bmw, ford].

% 2.4:  Listar Advogados
?- findall(L,stand(_,L),LL),
flatten(LL,LL2),
|    findall(C,member(cliente(C,_,_,advogado,_),LL2),LA1).
LL = [[cliente(rui, 2324, 23, medico, [carro(audi, a2, 20000), carro(bmw, serie3, 30000)]), cliente(rita, 2325, 32, advogado, [carro(audi, a3, 30000)]), cliente(joao, 2326, 26, professor, [moto(honda, gl1800, 26000)]), cliente(ana, 2327, 49, medico, [carro(audi, a4, 40000), carro(bmw, serie3, 32000), carro(..., ..., ...)]),  (miami, [cliente(rui, 3333, 33, operario, [...]), cliente(..., ..., ..., ..., ...)|...])]],
LL2 = [cliente(rui, 2324, 23, medico, [carro(audi, a2, 20000), carro(bmw, serie3, 30000)]), cliente(rita, 2325, 32, advogado, [carro(audi, a3, 30000)]), cliente(joao, 2326, 26, professor, [moto(honda, gl1800, 26000)]), cliente(ana, 2327, 49, medico, [carro(audi, a4, 40000), carro(bmw, serie3, 32000), carro(ford, focus, 24000)]),  (miami, [cliente(rui, 3333, 33, operario, [carro(..., ..., ...)]), cliente(paulo, 3334, 22, advogado, [...]), cliente(..., ..., ..., ..., ...)])],
LA1 = [rita].

% 2.5: Preço Médio
?- stand(X,L),
findall(C,member(cliente(_,_,_,_,C),L),LP),
 flatten(LP,LP2),
|    |     findall(P,member(carro(_,_,P),LP2),LP3).
X = vegas,
L = [cliente(rui, 2324, 23, medico, [carro(audi, a2, 20000), carro(bmw, serie3, 30000)]), cliente(rita, 2325, 32, advogado, [carro(audi, a3, 30000)]), cliente(joao, 2326, 26, professor, [moto(honda, gl1800, 26000)]), cliente(ana, 2327, 49, medico, [carro(audi, a4, 40000), carro(bmw, serie3, 32000), carro(ford, focus, 24000)]),  (miami, [cliente(rui, 3333, 33, operario, [carro(..., ..., ...)]), cliente(paulo, 3334, 22, advogado, [...]), cliente(..., ..., ..., ..., ...)])],
LP = [[carro(audi, a2, 20000), carro(bmw, serie3, 30000)], [carro(audi, a3, 30000)], [moto(honda, gl1800, 26000)], [carro(audi, a4, 40000), carro(bmw, serie3, 32000), carro(ford, focus, 24000)]],
LP2 = [carro(audi, a2, 20000), carro(bmw, serie3, 30000), carro(audi, a3, 30000), moto(honda, gl1800, 26000), carro(audi, a4, 40000), carro(bmw, serie3, 32000), carro(ford, focus, 24000)],
LP3 = [20000, 30000, 30000, 40000, 32000, 24000].

% 2.6: Altera ID 
?- retract(stand(X,L)),
 altera_id(L,L2,C,Id),
|     assert(stand(X,L2)).|    
ERROR: Unknown procedure: altera_id/4 (DWIM could not correct goal)

%Predicado Auxiliar
?- select(cliente(C,N,_,P,V),L,L1),
|     append([cliente(C,N,NID,P,V)],L1,L2).
L = [cliente(C, N, _, P, V)|L1],
L2 = [cliente(C, N, NID, P, V)|L1] .

%Teste
?- write('mudar idade da ana\nde:'),
 listar_dados(vegas,ana,D),write(D),
 altera_id(vegas,ana,50),listar_dados(vegas,ana,D1),
|    |     write(' para: '),write(D1).|    
ERROR: Unknown procedure: listar_dados/3 (DWIM could not correct goal)