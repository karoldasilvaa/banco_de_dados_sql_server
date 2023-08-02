CREATE TABLE Cargo (
	car_id INT PRIMARY KEY IDENTITY ,
	car varchar(50)
)

CREATE TABLE Carro (
	carro_id INT PRIMARY KEY IDENTITY,
	cor_id int NOT NULL,
	marca_id int NOT NULL,
	modelo_id int NOT NULL,
	carroceria_id int NOT NULL,
	ano_carro char(4) NOT NULL,
	valor_carro money NOT NULL,
	CONSTRAINT fk_cor FOREIGN KEY(cor_id) REFERENCES Cor (cor_id),
	CONSTRAINT fk_marca FOREIGN KEY(marca_id) REFERENCES Marca (marca_id),
	CONSTRAINT fk_modelo FOREIGN KEY(modelo_id) REFERENCES Modelo (modelo_id),
	CONSTRAINT fk_carroceria FOREIGN KEY(carroceria_id) REFERENCES Carroceria (carroceria_id),
)

CREATE TABLE Carroceria (
	carroceria_id INT PRIMARY KEY IDENTITY,
	tipo_carroceria varchar(50) NOT NULL,
)

CREATE TABLE Cliente (
	cliente_id INT PRIMARY KEY IDENTITY,
	cpf_cnpj_cliente numeric(13) NOT NULL,
	nome varchar(100) NOT NULL,
	sexo char(1) NULL,
	endereco varchar(100) NOT NULL,
	cep varchar(30) NOT NULL,
	telefone numeric(11, 0) NULL,
	emaill varchar(100) NULL,
	data_nasc date NOT NULL,
)

CREATE TABLE Cor (
	cor_id INT PRIMARY KEY IDENTITY,
	cor varchar(50) NOT NULL,
);

CREATE TABLE Funcionario (
	funcionario_id INT PRIMARY KEY IDENTITY,
	cargo_id int NOT NULL,
	cpf_funcionario numeric(13) NOT NULL,
	nome varchar(100) NOT NULL,
	sexo char(1) NOT NULL,
	endereco varchar(100) NOT NULL,
	cep varchar(30) NOT NULL,
	telefone char(11),
	emaill varchar(100),
	data_nasc date NOT NULL,
	data_admissao date NOT NULL,
	data_demissao date,
	salario money NOT NULL,
	comissao numeric(5),
	CONSTRAINT fk_cargo FOREIGN KEY(cargo_id) REFERENCES Cargo (cargo_id)
)

CREATE TABLE Marca (
	marca_id INT PRIMARY KEY IDENTITY,
	marca_carro varchar(50),
)

CREATE TABLE Modelo (
	modelo_id INT PRIMARY KEY IDENTITY,
	nome_modelo varchar(50) NOT NULL,
)

CREATE TABLE Vendas (
	venda_id INT PRIMARY KEY IDENTITY,
	funcionario_id int NOT NULL,
	cliente_id int NOT NULL,
	carro_id int NOT NULL,
	data_venda date,
	valor_carro money,
	CONSTRAINT fk_funcionario FOREIGN KEY(funcionario_id) REFERENCES Funcionario (funcionario_id),
	CONSTRAINT fk_cliente FOREIGN KEY(cliente_id) REFERENCES Cliente (cliente_id),
	CONSTRAINT fk_carro FOREIGN KEY(carro_id) REFERENCES Carro (carro_id)
)

INSERT INTO Cargo  (cargo) VALUES ('Diretor')
INSERT INTO Cargo (cargo) VALUES ('Gerente')
INSERT INTO  Cargo (cargo) VALUES ('Supervisor')
INSERT INTO Cargo (cargo) VALUES ('Recepcionista')
INSERT INTO Cargo (cargo) VALUES ('Vendedor')
INSERT INTO Cargo (cargo) VALUES ('Faxineira')
INSERT INTO Cargo (cargo) VALUES ('Recursos Humanos')

SELECT * FROM Cargo;

INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (3, 1, 1, 5, '2020', 179900)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (5, 2, 2, 6, '2021', 2250000)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (7, 3, 3, 4, '2020', 245000)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (4, 5, 5, 5, '2021', 168290)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (2, 6, 6, 1, '2014', 304900)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (8, 7, 7, 5, '2021', 84900)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (8, 8, 8, 1, '2022', 4790000)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (1, 9, 9, 3, '2019', 134990)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (3, 10, 10, 6, '2021', 489990)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (3, 11, 11, 5, '2019', 78900)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (10, 12, 12, 5, '2023', 180000)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (3, 13, 13, 1, '2015', 399900)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (7, 14, 14, 5, '2017', 119000)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (4, 15, 15, 2, '2019', 89900)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (1, 16, 16, 6, '2012', 4500000)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (10, 17, 17, 5, '2017', 195890)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (8, 18, 18, 2, '2016', 124990)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (4, 19, 19, 5, '2021', 149900)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (3, 20, 20, 6, '2019', 1650000)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (5, 21, 21, 1, '2022', 1385000)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (1, 22, 22, 2, '2022', 76000)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (3, 23, 23, 2, '2017', 69900)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (3, 24, 24, 2, '2022', 579000)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (7, 25, 25, 4, '2015', 89900)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (3, 26, 26, 2, '2015', 84000)
INSERT INTO Carro (cor_id, marca_id, modelo_id, carroceria_id, ano_carro, valor_carro) VALUES (7, 27, 27, 2, '2018', 229990)

SELECT * FROM Carro;

INSERT INTO Carroceria (tipo_carroceria) VALUES ('Conversível')
INSERT INTO Carroceria (tipo_carroceria) VALUES ('Hatchback')
INSERT INTO Carroceria (tipo_carroceria) VALUES ('Picape')
INSERT INTO Carroceria (tipo_carroceria) VALUES ('Sedã')
INSERT INTO Carroceria (tipo_carroceria) VALUES ('Suv')
INSERT INTO Carroceria (tipo_carroceria) VALUES ('Cupê')

SELECT * FROM Carroceria;

INSERT INTO Cor (cor) VALUES ('Azul')
INSERT INTO Cor (cor) VALUES ('Amarelo')
INSERT INTO Cor (cor) VALUES ('Branco')
INSERT INTO Cor (cor) VALUES ('Cinza')
INSERT INTO Cor (cor) VALUES ('Laranja')
INSERT INTO Cor (cor) VALUES ('Marrom')
INSERT INTO Cor (cor) VALUES ('Preto')
INSERT INTO Cor (cor) VALUES ('Vermelho')
INSERT INTO Cor (cor) VALUES ('Verde')
INSERT INTO Cor (cor) VALUES ('Vinho')

SELECT * FROM Cor;

INSERT INTO Funcionario  (cargo_id ,cpf_funcionario, nome,sexo, endereco, cep, telefone, emaill, data_nasc, data_admissao, data_demissao, salario, comissao) 
VALUES (1, '38656245835', 'Daniel Santana da Silva', 'M', 'Rua Munhoz 10', '6851023', '11985741254', 'danielsilva23@gmail.com', '1970-12-07', '1998-05-12', NULL, 14000, NULL)
INSERT INTO Funcionario (cargo_id, cpf_funcionario, nome, sexo, endereco, cep, telefone, emaill, data_nasc, data_admissao, data_demissao, salario, comissao)
VALUES (2, '04968945223', 'Ana Clara Machado dos Santos', 'F', 'Rua Vital Brasil 216', '3954031', '11975841254', 'clarasantos56@gmail.com', '1982-03-11', '2013-07-26', NULL, 9000, NULL)
INSERT INTO Funcionario (cargo_id, cpf_funcionario, nome, sexo, endereco, cep, telefone, emaill, data_nasc, data_admissao, data_demissao, salario, comissao)
VALUES (3, '04454685749', 'Marcos Rocha de Souza', 'M', 'Rua Joaquim Gouvea 66', '3962040', '11945872654', 'marcos5623@gmail.com', '1987-11-22', '2016-04-03', NULL, 7000, NULL)
INSERT INTO Funcionario (cargo_id, cpf_funcionario, nome, sexo, endereco, cep, telefone, emaill, data_nasc, data_admissao, data_demissao, salario, comissao)
VALUES (4, '36365214020', 'Cecília dos Santos Bonfim', 'F', 'Rua Romeu 78', '4521011', '11945861245', 'cecibonfim56@gmail.com', '1997-12-23', '2019-06-03', '2023-03-16', 1812, NULL)
INSERT INTO Funcionario (cargo_id, cpf_funcionario, nome, sexo, endereco, cep, telefone, emaill, data_nasc, data_admissao, data_demissao, salario, comissao)
VALUES (4, '26356489735', 'Magali Fernandes de Almeida', 'F', 'Rua Franco Rocha 1123', '2364010', '11978541258', NULL, '2001-09-10', '2023-03-17', NULL, 1812, NULL)
INSERT INTO Funcionario (cargo_id, cpf_funcionario, nome, sexo, endereco, cep, telefone, emaill, data_nasc, data_admissao, data_demissao, salario, comissao)
VALUES (5, '36812545632', 'Antony Santana dos Santos', 'M', 'Rua Bartolomeu 29', '3268030', '11989565478', 'antony7894@hotmail.com', '1993-12-20', '2020-07-12', NULL, 3220, 10)
INSERT INTO Funcionario (cargo_id, cpf_funcionario, nome, sexo, endereco, cep, telefone, emaill, data_nasc, data_admissao, data_demissao, salario, comissao)
VALUES (5, '41022224727', 'Mikaelly Victoria de Souza Lana', 'F', 'Rua dos Jesuitas 456', '1265041', '11985741254', 'mikadelana19@gmail.com', '1997-02-11', '2018-12-07', NULL, 3220, 10)
INSERT INTO Funcionario (cargo_id, cpf_funcionario, nome, sexo, endereco, cep, telefone, emaill, data_nasc, data_admissao, data_demissao, salario, comissao)
VALUES (5, '20263012395', 'Luíz Henrique Guimarães da Silva', 'M', 'Rua Manoel Lopes 210', '2156071', '11985458785', 'henry2018@gmail.com', '1999-12-11', '2021-03-01', NULL, 3220, 10)
INSERT INTO Funcionario (cargo_id, cpf_funcionario, nome, sexo, endereco, cep, telefone, emaill, data_nasc, data_admissao, data_demissao, salario, comissao) 
VALUES (6, '33483333266', 'Maria de Lourdes da Silva', 'F', 'Rua Mateo Bei 923', '2361035', '11985741254', NULL, '1966-12-11', '2015-04-12', NULL, 1512, NULL)
INSERT INTO Funcionario (cargo_id, cpf_funcionario, nome, sexo, endereco, cep, telefone, emaill, data_nasc, data_admissao, data_demissao, salario, comissao)
VALUES (6, '38956845775', 'Gabriel da Silva Leão', 'F', 'Rua Amália Blanco 56', '3687015', '11985864215', 'gaelleao12@hotmail.com', '1996-01-15', '2021-11-10', NULL, 1512, NULL)
INSERT INTO Funcionario (cargo_id, cpf_funcionario, nome, sexo, endereco, cep, telefone, emaill, data_nasc, data_admissao, data_demissao, salario, comissao) 
VALUES (7, '36845128241', 'Luana Barbosa de Almeida', 'F', 'Rua Oscar Freire 1001', '2545090', '11985471245', 'luana2356@gmail.com', '1993-08-21', '2015-06-15', '2019-05-02', 2797, NULL)
INSERT INTO Funcionario (cargo_id, cpf_funcionario, nome, sexo, endereco, cep, telefone, emaill, data_nasc, data_admissao, data_demissao, salario, comissao) 
VALUES (7, '59433619870', 'Carolayne Almeida dos Santos', 'F', 'Rua Deutrana 100', '3954011', '11985415278', 'carol7545@gmail.com', '1998-11-11', '2019-05-03', NULL, 2797, NULL)

SELECT * FROM Funcionario;

INSERT INTO Marca (marca_carro) VALUES ('Audi')
INSERT INTO Marca (marca_carro) VALUES ('Aston Marti')
INSERT INTO Marca (marca_carro) VALUES ('BMW')
INSERT INTO Marca (marca_carro) VALUES ('Chery')
INSERT INTO Marca (marca_carro) VALUES ('Chevrolet')
INSERT INTO Marca (marca_carro) VALUES ('Citroe')
INSERT INTO Marca (marca_carro) VALUES ('Ferrari')
INSERT INTO Marca (marca_carro) VALUES ('Fiat')
INSERT INTO Marca (marca_carro) VALUES ('Ford')
INSERT INTO Marca (marca_carro) VALUES ('Hyundai')
INSERT INTO Marca (marca_carro) VALUES ('Honda')
INSERT INTO Marca (marca_carro) VALUES ('Jaguar')
INSERT INTO Marca (marca_carro) VALUES ('Jeep')
INSERT INTO Marca (marca_carro) VALUES ('Kia')
INSERT INTO Marca (marca_carro) VALUES ('Lamborguini')
INSERT INTO Marca (marca_carro) VALUES ('Land Rover')
INSERT INTO Marca (marca_carro) VALUES ('Mercedes-Benz')
INSERT INTO Marca (marca_carro) VALUES ('Mitsubishi')
INSERT INTO Marca (marca_carro) VALUES ('Nissa')
INSERT INTO Marca (marca_carro) VALUES ('Porsche')
INSERT INTO Marca (marca_carro) VALUES ('Peugeot')
INSERT INTO Marca (marca_carro) VALUES ('Renault')
INSERT INTO Marca (marca_carro) VALUES ('Tesla')
INSERT INTO Marca (marca_carro) VALUES ('Toyota')
INSERT INTO Marca (marca_carro) VALUES ('Volkswage')
INSERT INTO Marca (marca_carro) VALUES ('Volvo')

SELECT * FROM Marca;

INSERT INTO Modelo (nome_modelo) VALUES ('Audi Q3')
INSERT INTO Modelo (nome_modelo) VALUES ('Aston Martin Vantage')
INSERT INTO Modelo (nome_modelo) VALUES ('BMW 320I')
INSERT INTO Modelo (nome_modelo) VALUES ('Chery Tig-8')
INSERT INTO Modelo (nome_modelo) VALUES ('Chevrolet Camaro')
INSERT INTO Modelo (nome_modelo) VALUES ('Citroen C4 Cactus')
INSERT INTO Modelo (nome_modelo) VALUES ('Ferrari F8 Spider')
INSERT INTO Modelo (nome_modelo) VALUES ('Fiat Toro')
INSERT INTO Modelo (nome_modelo) VALUES ('Ford Mustang')
INSERT INTO Modelo (nome_modelo) VALUES ('Hyundai Creta')
INSERT INTO Modelo (nome_modelo) VALUES ('Honda HR-V')
INSERT INTO Modelo (nome_modelo) VALUES ('Jaguar F-Type')
INSERT INTO Modelo (nome_modelo) VALUES ('Jeep Compass')
INSERT INTO Modelo (nome_modelo) VALUES ('Kia Soul')
INSERT INTO Modelo (nome_modelo) VALUES ('Lamborguini Aventador')
INSERT INTO Modelo (nome_modelo) VALUES ('Land Rover Range Rover Evoque')
INSERT INTO Modelo (nome_modelo) VALUES ('Mercedes-Benz Gla 200')
INSERT INTO Modelo (nome_modelo) VALUES ('Mitsubishi Eclipse Cross')
INSERT INTO Modelo (nome_modelo) VALUES ('Nissan GT-R')
INSERT INTO Modelo (nome_modelo) VALUES ('Porsche Boxster')
INSERT INTO Modelo (nome_modelo) VALUES ('Peugeot 208')
INSERT INTO Modelo (nome_modelo) VALUES ('Renault Captur')
INSERT INTO Modelo (nome_modelo) VALUES ('Tesla Model 3')
INSERT INTO Modelo (nome_modelo) VALUES ('Toyota Corolla')
INSERT INTO Modelo (nome_modelo) VALUES ('Volkswagen lf')
INSERT INTO Modelo (nome_modelo) VALUES ('Volvo XC60')

SELECT * FROM Modelo;

INSERT INTO Cliente ( cpf_cnpj_cliente, nome, sexo, endereco, cep, telefone, emaill, data_nasc ) 
VALUES ('04454185732', 'Anderson Vieira de Souza',  'M', 'Rua Paulo Gomes 810', 03954010, 11945871545, 'anderlana@gmail.com', '19920415')
INSERT INTO Cliente ( cpf_cnpj_cliente, nome, sexo, endereco, cep, telefone, emaill, data_nasc ) 
VALUES ('36587412510', 'Rayane Soares dos Santos',  'F', 'Rua Gonzales Abreu 100', 11350560, 11978451487, 'raysoares154@gmail.com', '19951023')
INSERT INTO Cliente ( cpf_cnpj_cliente, nome, sexo, endereco, cep, telefone, emaill, data_nasc ) 
VALUES ('18910729198', 'Carlos Alberto de Nobrega',  'M', 'Rua Padre Carapuceiro 65', 51020907, 11985471548, 'carlosalbert785@hotmail.com', '19691205')
INSERT INTO Cliente ( cpf_cnpj_cliente, nome, sexo, endereco, cep, telefone, emaill, data_nasc ) 
VALUES ('02367949735', 'Ana Luisa Nobre Santos',  'F', 'Rua Alfenas 51', 06327090, 11987548745, 'analuisa456@gmail.com', '19820520')
INSERT INTO Cliente ( cpf_cnpj_cliente, nome, sexo, endereco, cep, telefone, emaill, data_nasc ) 
VALUES ('82612347623', 'Solange de Moraes Curi',  'F', 'Rua Velho Mundo 533', 04335020, 11925748563, 'solmoraes45@gmail.com', '19840111')
INSERT INTO Cliente ( cpf_cnpj_cliente, nome, sexo, endereco, cep, telefone, emaill, data_nasc ) 
VALUES ('45138570994', 'Renan Pereira Camelo',  'M', 'Rua Vinte e Seis 10', 19024423, 11984571545, 'renancamelo12@gmail.com', '19930824')
INSERT INTO Cliente ( cpf_cnpj_cliente, nome, sexo, endereco, cep, telefone, emaill, data_nasc ) 
VALUES ('40866163867', 'Yasmin Guidi Magalhães',  'F', 'Rua Rodrigo Pagani 78', 13105050, 11978414563, 'yasminguidi59@gmail.com', '19970917')
INSERT INTO Cliente ( cpf_cnpj_cliente, nome, sexo, endereco, cep, telefone, emaill, data_nasc ) 
VALUES ('01568649240', 'Daniel Castro Leite Reis',  'M', 'Rua Gabriel Marques 1000', 09370575, 11984751256, 'danireis789@gmail.com', '19981023')
INSERT INTO Cliente ( cpf_cnpj_cliente, nome, sexo, endereco, cep, telefone, emaill, data_nasc ) 
VALUES ('77260623713', 'António Enildo de Oliveira',  'M', 'Rua Menina Nossa Senhora 510', 18611359, 11895458569, 'antoniooli8541@hotmail.com', '19951105')
INSERT INTO Cliente ( cpf_cnpj_cliente, nome, sexo, endereco, cep, telefone, emaill, data_nasc ) 
VALUES ('91525551000124', 'Auto Peças Lida',  NULL, 'Rua Mara Rosa 123', '07197230', 11985452156, 'autopecas123@gmail.com', NULL);

SELECT * FROM Vendas;

Update Funcionario
set endereco = 'Rua Romeo 78 '
where funcionario_id = 4;


ALTER TABLE [Funcionario] ALTER COLUMN [cpf_funcionario] varchar(20) not null;

ALTER TABLE Vendas
ADD desconto numeric(5);

sp_RENAME '[Vendas].carro', 'carro_id' , 'COLUMN'

INSERT INTO Vendas(funcionario_id, cliente_id, carro_id, data_venda, valor_venda, valor_carro, desconto) VALUES( 6, 1 , 25, '20200728', 79800, 84000, 5)
INSERT INTO Vendas(funcionario_id, cliente_id, carro_id, data_venda, valor_venda, valor_carro, desconto) VALUES( 6, 2 , 2, '20211115', 2137500, 2250000, 5)
INSERT INTO Vendas(funcionario_id, cliente_id, carro_id, data_venda, valor_venda, valor_carro, desconto) VALUES( 6, 3 , 22, '20220210', 66930, 69900, 3)
INSERT INTO Vendas(funcionario_id, cliente_id, carro_id, data_venda, valor_venda, valor_carro, desconto) VALUES( 6, 4 , 9, '20230622', 470390, 489990, 4)
INSERT INTO Vendas(funcionario_id, cliente_id, carro_id, data_venda, valor_venda, valor_carro, desconto) VALUES( 7, 5 , 23, '20200516', 550050, 579000, 5)
INSERT INTO Vendas(funcionario_id, cliente_id, carro_id, data_venda, valor_venda, valor_carro, desconto) VALUES( 7, 6 , 15, '20210922', 4275000, 4500000, 5)
INSERT INTO Vendas(funcionario_id, cliente_id, carro_id, data_venda, valor_venda, valor_carro, desconto) VALUES( 7, 7 , 21, '20220320', 76000, 76000, null )
INSERT INTO Vendas(funcionario_id, cliente_id, carro_id, data_venda, valor_venda, valor_carro, desconto) VALUES( 7, 8 , 11, '20230210', 174600, 180000, 3)
INSERT INTO Vendas(funcionario_id, cliente_id, carro_id, data_venda, valor_venda, valor_carro, desconto) VALUES( 8, 9 , 19, '20201201', 1584000, 1650000, 4)
INSERT INTO Vendas(funcionario_id, cliente_id, carro_id, data_venda, valor_venda, valor_carro, desconto) VALUES( 8, 12 , 14, '20231019', 85405, 89900, 5)

select * from Funcionario;
select * from Cliente;
SELECT * FROM Vendas;
SELECT * FROM Cargo;
SELECT * FROM Carro;
SELECT * FROM Modelo;
SELECT * FROM Cor;
SELECT * FROM Marca;
select * from Carroceria;


select 89900 * 0.95;                    ---conta de porcentagem 5%---  --- saber qual o valor já com o desconto ---

select 89900 * 0.05;                     --- saber quanto foi o desconto ---

select 89900 - 4495;                           --- saber quanto ficou com o desconto ---

select 4495 * 20;                                            ---multiplicar o valor do desconto ex: fiz o desconto de 5% 5 para chegar no 100 é 20, 5*20=100 para ver o valor do carro ---




--Consulta que retorne o carro_id, nome da cor, marca da cor, modelo da cor, carroceria, ano, carro, valor_carro, por ordem do nome da marca onde o ano do carro for maior do que 2018
select car.carro_id, mar.marca_carro, model.nome_modelo,c.cor, carroc.tipo_carroceria, car.ano_carro, car. valor_carro  from Carro car
inner join Cor c
on car.cor_id = c.cor_id
inner join Marca mar 
on car.marca_id = mar.marca_id
inner join Modelo model
on car.modelo_id = model.modelo_id
inner join Carroceria carroc
on car.carroceria_id  = carroc.carroceria_id
where ano_carro > 2018
order by mar.marca_carro, car.ano_carro


--Consulta que retorna venda_id, nome do funcionario, nome do cliente, marca do carro, modelo do carro, ano_carro, data_venda, valor_venda, valor_carro, odenado pelo marca, onde o valor da venda é maior do que 100 mil
select v.venda_id, fun.nome nome_funcionario, cli.nome_cliente, v.data_venda, v.valor_carro, v.valor_venda, v.desconto desconto_carro, mar.marca_carro,model.nome_modelo, car.ano_carro, c.cor
from Vendas v
inner join Funcionario fun
on v.funcionario_id = fun.funcionario_id
inner join Cliente cli
on v.cliente_id = cli.cliente_id
inner join Carro car
on v.carro_id = car.carro_id
inner join Marca mar 
on car.marca_id = mar.marca_id
inner join Modelo model
on car.modelo_id = model.modelo_id
inner join Cor c
on car.cor_id = c.cor_id
where v.valor_venda > 100000 and c.cor_id = 3


--Faça um relatorio de todos os funcionarios que ganham mais de 3 mil, exibir no relatório o cargo
select carg.cargo, fun.nome nome_funcionario, fun.salario, data_demissao from Funcionario fun
inner join Cargo carg
on fun.cargo_id = carg.cargo_id
where fun.data_demissao is null and salario >= 3000

select fun.nome nome_funcionario,  
sum(v.valor_venda)  total_venda              
from Vendas v
inner join Funcionario fun
on fun.funcionario_id = v.funcionario_id
group by fun.nome
order by sum(v.valor_venda) desc

update Funcionario
set salario = salario + 120
where data_demissao is null

select * from Funcionario