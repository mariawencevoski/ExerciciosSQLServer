CREATE DATABASE Atividade
GO

USE Atividade
GO

create TABLE Alunos (
	Id int identity(1,1) PRIMARY KEY,
	Nome varchar(150) not null,
	CPF varchar(11) not null,
	Email varchar(150) not null,
	DataNascimento date not null,
	CEP varchar(8) not null,
	Logradouro varchar(150) not null,
	Complemento varchar(50),
	Numero varchar(10) not null,
	Cidade varchar(50) not null,
	Bairro varchar(50) not null,
	Estado varchar(50) not null
)
GO

SET DATEFORMAT DMY
GO

BEGIN TRAN

insert into Alunos (Nome, Cpf, Email, DataNascimento, CEP, Logradouro, Numero, Complemento, Cidade, Bairro, Estado)
values 
('Ale Skora', '89936450434', 'ale.skora@hotmail.com', '07/09/1996', '29420561', 'Belo Horizonte', '95', null, 'Caucaia', 'Centro', 'CE'),
('Beatriz Zezilia Onofre', '62613796456', 'bz.onofre@gmail.com', '28/12/1998', '68909486', 'da Paz', '6084', null, 'Boa Vista', 'São Francisco', 'RR'),
('Bela Reis', '72645520391', 'belareis@gmail.com', '29/06/1986', '65303417', 'Dom Pedro II', '129', 'Subsolo 6', 'São Francisco', 'Caucaia', 'CE'),
('Bonayre', '94319111591', 'bonayre@outlook.com', '11/03/1999', '49148594', 'Belo Horizonte', '8677', null, 'Vila Nova', 'Rio Branco', 'AC'),
('Bruna Vernalha', '56120846417', 'b.vernalha@hotmail.com', '01/06/1993', '89515879', 'Vinte e Dois', '2714', null, 'São Francisco', 'Parintins', 'AM'),
('Cristiane Rosa Peyerl', '70929171233', 'crisrosa.peyerl@outlook.com', '08/04/1992', '96707159', 'Santo Antônio', '3845', 'Casa 9', 'Vila Nova', 'Parnaíba', 'PI'),
('Davi Nascimento', '03026270571', 'davign20@gmail.com', '21/05/2000', '89737692', 'Projetada', '8547', null, 'Santo Antônio', 'Porto Velho', 'RO'),
('Felipe Dionizio', '94532822947', 'dionizio.fe@yahoo.com.br', '03/03/1983', '89605047', 'das Flores', '5978', null, 'São José', 'Guarapari', 'ES'),
('Julia Duarte', '61672628539', 'jduarte@bol.com.br', '05/06/1990', '68382216', 'Paraná', '332', 'Casa A', 'São José', 'Itapecerica da Serra', 'SP'),
('Juliana Almeida', '92048183522', 'ju.almeida@hotmail.com', '28/07/1999', '49171518', 'Dom Pedro II', '1915', 'Apartamento 9', 'Vila Nova', 'Marabá', 'PA'),
('Jéssica Macedo', '05076371357', 'macedoju@hotmail.com', '24/08/1991', '76840268', 'Castro Alves', '753', null, 'Santo Antônio', 'Ji-Paraná', 'RO'),
('Lais Laur Piccoli', '22819315798', 'lais.laurp@gmail.com', '27/04/2000', '58561480', 'Doze', '1276', null, 'Santo Antônio', 'Petrolina', 'PE'),
('Letícia Libério', '40534444202', 'lliberio@yahoo.com.br', '22/03/1993', '59520765', 'Maranhão', '3341', 'Apartamento 4', 'Boa Vista', 'Tubarão', 'SC'),
('Lucas Malvone', '80498473651', 'lucas.mlv@hotmail.com', '16/05/1995', '57634345', 'São Sebastião', '1118', null, 'São José', 'Novo Gama', 'GO'),
('Luisa Dantas Duarte', '46095184738', 'ldantas.duarte@gmail.com', '18/08/1987', '64659282', 'Vinte', '6930', null, 'Centro', 'Sinop', 'MT'),
('Marcelo Miucci', '02367965854', 'mmarcelo.mucci@yahoo.com.br', '19/08/1986', '99567360', 'Dom Pedro II', '1839', 'Casa 2', 'São Cristóvão', 'Cariacica', 'ES'),
('Marcio Cadamuro', '52017340812', 'cadamuro@hotmail.com', '16/02/2000', '76817528', 'Bahia', '79', 'Apartamento 9', 'Boa Vista', 'Brasília', 'DF'),
('Maria Marcilene Oliveira', '89744395060', 'm.marcileneo@outlook.com', '26/01/1998', '30370420', 'Santos Dumont', '311', null, 'São Francisco', 'Boa Vista', 'RR'),
('Maria Wencevoski', '30351880925', 'wencevoskim@hotmail.com', '26/05/1996', '29022014', 'Pará', '1885', 'Apartamento 6', 'Bela Vista', 'Santana', 'AP'),
('Michelle Jessica', '20592481832', 'michelle.je@gmail.com', '09/02/1992', '69154155', 'Projetada', '2604', null, 'Santo Antônio', 'Arapiraca', 'AL'),
('Milca Sousa Camiolli', '14769063431', 'camiolli.milca@hotmail.com', '15/01/1994', '77728920', 'São João', '2219', null, 'São Cristóvão', 'Serra', 'ES'),
('Renata Ragassi', '63729610910', 'ragassire@yahoo.com.br', '16/06/1988', '69987074', 'Vinte', '4577', null, 'Planalto', 'Rio Verde', 'GO'),
('Simone Neves', '84529149110', 'nevessimone@hotmail.com.', '08/06/1997', '17620850', 'São Jorge', '7922', 'Cobertura 9', 'São Francisco', 'Marituba', 'PA'),
('Tamy Goncalves', '57077144569', 'tamy.goncalves@gmail.com', '15/07/1990', '20576755', 'Santa Catarina', '2425', null, 'Bela Vista', 'Natal', 'RN'),
('Vinicius Lipka', '09907389145', 'vi.lipka@yahoo.com.br', '27/11/1989', '64356405', 'Brasil', '93', null, 'Industrial', 'Tangará da Serra', 'MT'),
('Bruno Luis', '49900275667', 'bluis@outlook.com', '11/05/1985', '79848598', 'Treze', '4264', null, 'Boa Vista', 'Toledo', 'PR'),
('Matheus Sousa', '95011927091', 'matheussouze@hotmail.com', '14/06/1983', '79495240', 'Espírito Santo', '7', null, 'Centro', 'Rondônia', 'RO'),
('Ronald Bueno', '91069553395', 'bueno.ronald@gmail.com', '07/01/1991', '70670922', 'Sete de Setembro', '55', null, 'Santo Antônio', 'Ariquemes', 'RO')
GO

create TABLE Cidades (
	Id int identity(1, 1),
	Nome varchar(50) not null,
	UF varchar(2) not null,
	PRIMARY KEY(Id)
)
GO

INSERT INTO Cidades (Nome, UF)
SELECT DISTINCT Cidade, Estado FROM Alunos
	
create TABLE UFs (
	Id int identity(1, 1),
	UF varchar(2) not null,
	PRIMARY KEY(Id)
)
GO

INSERT INTO UFs ( UF)
SELECT DISTINCT UF FROM Cidades

ALTER TABLE Alunos ADD CidadeId INT
GO

UPDATE Alunos SET CidadeId = (SELECT Id from Cidades WHERE Nome = Cidade AND UF = Estado)
GO

ALTER TABLE Alunos ALTER COLUMN CidadeId INT NOT NULL
GO

ALTER TABLE Alunos ADD CONSTRAINT FK_Alunos_Cidades_CidadeId FOREIGN KEY (CidadeId) REFERENCES Cidades (Id)
GO

ALTER TABLE Alunos DROP COLUMN Cidade
GO
ALTER TABLE Alunos DROP COLUMN Estado
GO

ALTER TABLE Cidades ADD UFId INT
GO
UPDATE Cidades SET UFId = (SELECT Id from UFs u WHERE u.UF = Cidades.UF)
GO
ALTER TABLE Cidades ALTER COLUMN UFId INT NOT NULL
GO
ALTER TABLE Cidades ADD CONSTRAINT FK_Cidades_UFs_UFId FOREIGN KEY (UFId) REFERENCES UFs (Id)
GO
ALTER TABLE Cidades DROP COLUMN UF
GO

CREATE TABLE Cursos (
	Id int identity(1, 1) PRIMARY KEY,
	Nome varchar(50) not null,
	Mensalidade decimal (6, 2) not null
)

INSERT INTO Cursos (Nome, Mensalidade)
VALUES
('Mestres do SQL', 99.90),
('Mestres do SQL II', 199.90),
('C# Masters', 179.90),
('Java na veia', 129.90),
('DevOps', 149.90)
GO

CREATE TABLE AlunosCursos (
	AlunoId INT, -- FK para Alunos
	CursoId INT, -- FK para Cursos
	PRIMARY KEY(AlunoId, CursoId) -- Chave primária composta
)
GO

-- FK AlunosCursos para Alunos
ALTER TABLE AlunosCursos ADD CONSTRAINT FK_AlunosCursos_Alunos_AlunoId
FOREIGN KEY (AlunoId) REFERENCES Alunos (Id)
GO

-- FK AlunosCursos para Cursos
ALTER TABLE AlunosCursos ADD CONSTRAINT FK_AlunosCursos_Cursos_CursoId
FOREIGN KEY (CursoId) REFERENCES Cursos (Id)
GO

insert into AlunosCursos
values
(1, 1),
(1, 2),
(1, 3),
(2, 2),
(2, 4),
(3, 5),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 2),
(7, 3),
(8, 1),
(9, 1),
(9, 4),
(9, 5),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(11, 4),
(11, 5),
(12, 4),
(13, 5),
(14, 5),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(16, 4),
(17, 1),
(17, 2),
(17, 5),
(18, 5),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(19, 5),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(21, 4),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(23, 1),
(23, 2),
(24, 1),
(25, 5),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(28, 1),
(28, 2)
GO

IF (SELECT @@TRANCOUNT AS OpenTransactions) > 0
	COMMIT
ELSE
	ROLLBACK


-- ATIVIDADE 1 - TREINANDO SQL III  

SELECT 
*
FROM
ALUNOS

/* 1) Liste Id, Nome, Email e Data de nascimento de todos os estudantes em ordem alfabética. 
Formate a data de nascimento no retorno para o formato DD/MM/YYYY (pesquisa a função CONVERT); */

SELECT 
Id, 
Nome, 
Email, 
CONVERT (VARCHAR, DataNascimento, 103) AS 'Data Nascimento'
FROM Alunos
ORDER BY Nome ASC

/* Liste todos os estudantes que contenham o dígito 4,5 ou 6 no CPF; */

SELECT
*
FROM Alunos
WHERE CPF like '%4%' OR CPF LIKE '%5%' OR CPF LIKE '%6%'

/* Liste todos os estudantes que contenham email com a terminação "@hotmail.com" e que nasceram antes do ano 2000 (pesquisa a função DATEPART); */

SELECT
*
FROM Alunos
WHERE Email LIKE '%@hotmail.com' AND DATEPART (YEAR, DataNascimento) < 2000

/* Obtenha a mensalidade mais cara do curso; */

SELECT
MAX (Mensalidade) 
FROM Cursos

/* Obtenha a média das mensalidades do curso; */

SELECT
AVG (Mensalidade) AS MediaMensalidade
FROM Cursos

/* Obtenha a contagem de quantos cursos são mais caros que a média do curso; */

SELECT 
COUNT (*)
FROM Cursos
WHERE Mensalidade > (SELECT AVG (Mensalidade) FROM Cursos)

/* Obtenha a menor mensalidade a cima da média das mensalidades; */

SELECT 
MIN (Mensalidade)
FROM Cursos
WHERE Mensalidade > (SELECT AVG (Mensalidade) FROM Cursos)

/* Conte quantos alunos possuem complemento no endereço; */

SELECT
COUNT (Complemento) AS Qtd
FROM Alunos
WHERE Complemento IS NOT NULL

-- ATIVIDADE 2 - Treinando SQL IV


