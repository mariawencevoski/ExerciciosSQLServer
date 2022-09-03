
-- Crie um banco de dados com a seguinte estrutura:

create database Exercicio01 

use Exercicio01

set dateformat dmy


-- Uma tabela de Alunos que possua as colunas: nome (obrigatório), cpf (obrigatório), e-mail (obrigatório), data nascimento (opcional), informações de endereço (sendo complemento opcional). Identifique qual atributo será a chave primária!;

create table Alunos (
Nome varchar(150) not null,
CPF varchar(11) primary key,
Email varchar(150) not null,
DataNascimento date null,
Logradouro varchar(150) not null,
Complemento varchar(50) null,
CEP varchar(8) not null,
Bairro varchar(50) not null,
Cidade varchar(50) not null,
UF varchar(2) not null
)


-- Uma tabela de Cursos que possua as colunas: id (um número sendo esta a chave primária), nome (obrigatório), mensalidade (obrigatório);

create table Cursos (
Id int primary key,
Nome varchar(50) not null,
Mensalidade decimal(6,2) not null
)


-- Insira alguns registros utilizando as sintaxes possíveis no SQL, faça algumas inserções com valores nulos nas colunas possíveis;

insert into Alunos 
values (
'Maria Oliveira',
'12345678912',
'testem@gmail.com',
null,
'Rua João Gomes nº 290',
null,
'81020030',
'Novo Mundo',
'Curitiba',
'PR'
)


insert into Alunos 
values (
'Fabio da Silva',
'12345678978',
'testef@gmail.com',
'10/04/1986',
'Rua João Gomes nº 290',
'AP 24 BL M',
'81020030',
'Novo Mundo',
'Curitiba',
'PR'
)


insert into Cursos
values (
'864',
'upgrade.dev',
750
)

select * from Alunos

select * from Cursos

