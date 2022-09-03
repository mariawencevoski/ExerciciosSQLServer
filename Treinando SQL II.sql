
-- Usando as 2 tabelas criadas anteriormente, faça o relacionamento entre Aluno e Curso.

create table AlunosCursos (
AlunoCPF varchar(11),
CursoId int,
primary key(AlunoCPF, CursoId)
)

alter table Alunos add CursoId int
alter table Alunos add ModuloId int

alter table Alunos add constraint FK_Alunos_Cursos_CursoId
foreign key (CursoId) references Cursos (Id)


-- Crie uma terceira tabela chamada Modulos, onde serão salvos os módulos que um curso pode ter, por exemplo: lógica de programação, Java, banco de dados, etc.

create table Modulos (
ModuloId int identity(1,1),
Disciplina varchar(50) not null,
primary key(ModuloId)
)

insert into Modulos (Disciplina)
values 
('Lógica de Programação (Java)'),
('Programação Orientada a Objetos I'),
('Programação Orientada a Objetos II'),
('Banco de Dados (MSSQL)'),
('Técnicas de Programação'),
('Testes Automatizados'),
('Deployment'),
('Servidos Cloud (AWS)')


-- Faça o relacionamento entre Curso e Modulo. Pense no Class, um curso pode ter N módulos. E um módulo pode fazer parte de vários cursos.

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



