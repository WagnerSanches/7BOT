drop table setebot_material;
drop table SETEBOT_CONTEUDO;
drop table SETEBOT_DISCIPLINA;

create table SETEBOT_DISCIPLINA (
    ID_DISCIPLINA number primary key,
    NOME VARCHAR2(70)
);

create table SETEBOT_CONTEUDO (
    ID_CONTEUDO number primary key,
    NOME VARCHAR2(70),
    ID_DISCIPLINA NUMBER,
    FOREIGN KEY (ID_DISCIPLINA) REFERENCES SETEBOT_DISCIPLINA(ID_DISCIPLINA)
);

create table SETEBOT_MATERIAL (
    ID_MATERIAL number primary key,
    TITULO VARCHAR2(70),
    ESCOPO VARCHAR(4000),
    ESCOPO2 VARCHAR(4000) null,
    ID_CONTEUDO number,
    FOREIGN KEY (ID_CONTEUDO) REFERENCES SETEBOT_CONTEUDO(ID_CONTEUDO)
);


insert into setebot_disciplina values(1, 'Matematica');
insert into setebot_disciplina values(2, 'Portugues');
insert into setebot_disciplina values(3, 'Inglês');

insert into setebot_conteudo values(1, 'Matematica basica', 1);
insert into setebot_conteudo values(2, 'Matematica Media', 1);
insert into setebot_conteudo values(3, 'Matematica Dificil', 1);

insert into setebot_conteudo values(4, 'Portugues Portugal', 2);

insert into setebot_conteudo values(5, 'Ingles basic', 3);
insert into setebot_conteudo values(6, 'Matematica Hard', 3);



insert into setebot_material values(1, 'Principios', 'Analisando a fórmula acima temos, por exemplo, Ab, que representa a medida da área da base do prisma. Então, para calcular a área da base do prisma temos que verificar qual o formato da base; nesse sentido, se for uma base triangular, a área da base é calculada usando a fórmula da área do 
triângulo; se for uma base retangular, a área é calculada usando a área do retângulo, e assim por diante.', null, 1);

insert into setebot_material values(2, 'Principios', 'A diferença na pronúncia é a que mais se evidencia quando comparamos as duas variantes.
Os brasileiros possuem um ritmo de fala mais lento, no qual tanto as vogais átonas quanto as vogais tônicas são claramente pronunciadas. Em Portugal, por outro lado, os falantes costumam "eliminar" as vogais átonas
, pronunciando bem apenas as vogais tônicas', 'Ao compararmos as duas línguas, percebemos que uma série de palavras utilizadas no português do Brasil não são as mesmas encontradas no português lusitano.', 4);

insert into setebot_material values(3, 'Principios', 'Sim… hoje reunimos pra você as 50 palavras em inglês mais usadas nesse idioma. Palavras e frases, para sermos mais exatos. Porque a nossa lista inclui também algumas frases “de sobrevivência”. Afinal, não queremos que você saia por aí dizendo apenas “fome”, “sono” e “cansado”, certo? Não… nada de “mim Tarzan, tu Jane”…

As 50 palavras e frases em inglês que escolhemos são o básico do inglês básico. Ou seja: vamos traduzir palavras em inglês que são essenciais pra você começar a se virar nesse idioma. Nossa lista faz parte do conteúdo do app MosaLingua Inglês.
Então, pra memorizá-las e aprender também a pronúncia', 'Normalmente, uma pessoa com nível básico de inglês utiliza palavras simples e comuns, como “but” para dizer "mas". Quem tem inglês intermediário consegue usar sinônimos como “however, nevertheless”. Nas conversas, o vocabulário de quem tem inglês básico é mais limitado. Já quem tem inglês intermediário consegue se virar melhor em situações como ao fazer compras sozinho', 5);


select * from SETEBOT_DISCIPLINA;
select * from SETEBOT_CONTEUDO;
select escopo from setebot_material;
