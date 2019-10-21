drop table SETEBOT_ALUNO;

create sequence id_alunos;

create table SETEBOT_ALUNO (
    ID_ALUNO number primary key,
    NOME VARCHAR2(70),
    EMAIL VARCHAR2(80) unique,
    SENHA VARCHAR2(40),
    DATA_NASC CHAR(11)
);

insert into SETEBOT_ALUNO values(id_alunos.nextval, 'Wagner Aguiar Sanches', 'wagner@hotmail.com', '123456789', '11-08-2019');

insert into SETEBOT_ALUNO values(id_alunos.nextval, 'Douglas Silva Santos', 'douglas@hotmail.com', '123456789', '19-02-2011');



SELECT * FROM setebot_aluno;