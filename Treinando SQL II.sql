
-- Usando as 2 tabelas criadas anteriormente, fa�a o relacionamento entre Aluno e Curso.

create table AlunosCursos (
AlunoCPF varchar(11),
CursoId int,
primary key(AlunoCPF, CursoId)
)

alter table Alunos add CursoId int
alter table Alunos add ModuloId int

alter table Alunos add constraint FK_Alunos_Cursos_CursoId
foreign key (CursoId) references Cursos (Id)


-- Crie uma terceira tabela chamada Modulos, onde ser�o salvos os m�dulos que um curso pode ter, por exemplo: l�gica de programa��o, Java, banco de dados, etc.

create table Modulos (
ModuloId int identity(1,1),
Disciplina varchar(50) not null,
primary key(ModuloId)
)

insert into Modulos (Disciplina)
values 
('L�gica de Programa��o (Java)'),
('Programa��o Orientada a Objetos I'),
('Programa��o Orientada a Objetos II'),
('Banco de Dados (MSSQL)'),
('T�cnicas de Programa��o'),
('Testes Automatizados'),
('Deployment'),
('Servidos Cloud (AWS)')


-- Fa�a o relacionamento entre Curso e Modulo. Pense no Class, um curso pode ter N m�dulos. E um m�dulo pode fazer parte de v�rios cursos.

create table CursosModulos (
CursoId int,
ModuloId int,
primary key(CursoId, ModuloId)
)

alter table CursosModulos add constraint FK_CursosModulos_Cursos_CursoId
foreign key (CursoId) references Cursos (Id)

alter table CursosModulos add constraint FK_CursosModulos_Modulos_ModuloId
foreign key (ModuloId) references Modulos (ModuloId)


-- Insira registros de testes.

update Alunos set CursoId = 864
where CPF = '12345678912'

update Alunos set ModuloId = 4
where CPF = '12345678912'

select * from Alunos

select * from Cursos

select * from Modulos



