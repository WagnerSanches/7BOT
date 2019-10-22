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
insert into setebot_disciplina values(3, 'Ingl�s');

insert into setebot_conteudo values(1, 'Matematica basica', 1);
insert into setebot_conteudo values(2, 'Matematica Media', 1);
insert into setebot_conteudo values(3, 'Matematica Dificil', 1);

insert into setebot_conteudo values(4, 'Portugues Portugal', 2);

insert into setebot_conteudo values(5, 'Ingles basic', 3);
insert into setebot_conteudo values(6, 'Matematica Hard', 3);



insert into setebot_material values(1, 'Principios', 'Analisando a f�rmula acima temos, por exemplo, Ab, que representa a medida da �rea da base do prisma. Ent�o, para calcular a �rea da base do prisma temos que verificar qual o formato da base; nesse sentido, se for uma base triangular, a �rea da base � calculada usando a f�rmula da �rea do 
tri�ngulo; se for uma base retangular, a �rea � calculada usando a �rea do ret�ngulo, e assim por diante.', null, 1);

insert into setebot_material values(2, 'Principios', 'A diferen�a na pron�ncia � a que mais se evidencia quando comparamos as duas variantes.
Os brasileiros possuem um ritmo de fala mais lento, no qual tanto as vogais �tonas quanto as vogais t�nicas s�o claramente pronunciadas. Em Portugal, por outro lado, os falantes costumam "eliminar" as vogais �tonas
, pronunciando bem apenas as vogais t�nicas', 'Ao compararmos as duas l�nguas, percebemos que uma s�rie de palavras utilizadas no portugu�s do Brasil n�o s�o as mesmas encontradas no portugu�s lusitano.', 4);

insert into setebot_material values(3, 'Principios', 'Sim� hoje reunimos pra voc� as 50 palavras em ingl�s mais usadas nesse idioma. Palavras e frases, para sermos mais exatos. Porque a nossa lista inclui tamb�m algumas frases �de sobreviv�ncia�. Afinal, n�o queremos que voc� saia por a� dizendo apenas �fome�, �sono� e �cansado�, certo? N�o� nada de �mim Tarzan, tu Jane��

As 50 palavras e frases em ingl�s que escolhemos s�o o b�sico do ingl�s b�sico. Ou seja: vamos traduzir palavras em ingl�s que s�o essenciais pra voc� come�ar a se virar nesse idioma. Nossa lista faz parte do conte�do do app MosaLingua Ingl�s.
Ent�o, pra memoriz�-las e aprender tamb�m a pron�ncia', 'Normalmente, uma pessoa com n�vel b�sico de ingl�s utiliza palavras simples e comuns, como �but� para dizer "mas". Quem tem ingl�s intermedi�rio consegue usar sin�nimos como �however, nevertheless�. Nas conversas, o vocabul�rio de quem tem ingl�s b�sico � mais limitado. J� quem tem ingl�s intermedi�rio consegue se virar melhor em situa��es como ao fazer compras sozinho', 5);


select * from SETEBOT_DISCIPLINA;
select * from SETEBOT_CONTEUDO;
select escopo from setebot_material;
