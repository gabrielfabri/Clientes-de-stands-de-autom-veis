
Atividade de Aula do dia 20/10/2021


Para Apresentação
Considere a seguinte Banco de Dados em anexo sobre clientes de stands de automóveis:


1)  Registe em Prolog todos os dados relevantes do Banco de Dados, utilizando fatos com a notação: stand(nome_stand,LC) onde LC é uma lista de clientes do tipo: 


[cliente(nome,num,id,prof,C1),cliente(nome2,num2,id2,prof2,C2) ,…]


onde C1, C2 são listas de compras do tipo:

[carro(marca1,modelo1,preco1),moto(marca2,modelo2,preco2),…]



2)  Defina em Prolog os seguintes predicados:

1)     listar_clientes(X,LC) – devolve a lista LC com o nome de todos clientes do stand X;
2)     listar_dados(X,C,D) – devolve a lista D com todos dados (i.e.: numero, idade e profissão) do cliente com o nome C do stand X;
3)     listar_carros(X,LM) – devolve a lista LM com o nome de todas as marcas de carros vendidos pelo stand X.
4)     listar_advogados(LA):- devolve a lista LA com o nome de todos os advogados de todos os stands;
5)     preco_medio(X,Med) - devolve o preço médio (Med) de todos os carros vendidos por um stand. Nota: pode re-utilizar o predicado media(X,L) do exercício anterior;
6)     altera_id(X,C,Id) - altera a idade do cliente C do stand X para Id. Nota: deve usar os predicados do Prolog assert e retract.

Utilize os seguintes predicados:  flatten(L1,L2) – remove todos os [] extra de L1, devolvendo o resultado em L2;  list_to_set_(L1,L2) – remove elementos repetidos de L1, devolvendo L2; 

Por exemplo, flatten([[1],[2,3]],[1,2,3]) e list_to_set([1,2,2,3],[1,2,3]) retornarão verdadeiro.

Explicação: 
Pretende-se aqui praticar a representação de bases de dados em Prolog. Neste caso, o enunciado já explicita qual o formato da representação. A resolução é conseguida à custa dos predicados findall e member. O fato stand tem de que ser definido como dinâmico, uma vez que é manipulado via predicados assert e retract.

Para Executar o programa basta executar os seguintes comandos:

?- [stand].

Yes ?- teste.


mudar idade da ana de:[(2327, 49, medico)] para: [ (2327, 50, medico)]
