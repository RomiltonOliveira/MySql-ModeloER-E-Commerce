-- create database ecommerce;
-- use ecommerce;

-- Criar tabela cliente 
create table cliente(
	idCliente int auto_increment primary key,
    Pnome varchar(20) not null,
    Mnome char(3),
    Unome varchar(20) not null,
    CPF char(11) not null,
    Telefone varchar(11),
    Email varchar(50),
    Rua varchar(45),
    numCasa int,
    Bairro varchar(20),
    Cep varchar(20),
    Cidade varchar(45),	
    constraint unique_cpf_cliente unique (CPF)
);
alter table cliente auto_increment=1;


-- Criar tabela produto
create table produto(
	idProduto int auto_increment primary key,
    NomeP varchar(10) not null,
	Categoria enum('Eletrônico','Vestimenta','Brinquedos','Alimentos','Movéis') not null,
    Avaliacao float default 0,
    Valor float not null,
    Endereço varchar (45),
    Tamanho varchar(10)
);

-- Criar tabela pedido
create table pedido(
	idPedido int auto_increment primary key,
    idPedido_Cliente int,
    PedidoStatus enum('Cancelado','Confirmado','Em Processamento') default 'Em Processamento',
    PedidoDescricao varchar(255),
    Frete float default 0, 
    PagamentoDinheiro bool default false,
    constraint fk_pedido_cliente foreign key (idPedido_Cliente) references cliente (idCliente)
);

-- Criar tabela pagamento 
create table pagamento(
idPagamento int not null auto_increment,
idCliente int,
idPedido int,
TipoPagamento enum('Pix','Cartão', 'Boleto', 'Dinheiro'),
primary key(idPagamento, idCliente, idPedido),
constraint fk_pagamento_cliente foreign key (idCliente) references cliente(idCliente),
constraint fk_pagamento_pedido foreign key (idPedido) references pedido(idPedido)
);


-- Criar tabela estoque
create table estoque(
idProduto_Estoque int auto_increment primary key,
LocalEstoque varchar(255) not null,
Quantidade int default 0 
);


-- Criar tabela fornecedor
create table fornecedor(
idFornecedor int auto_increment primary key,
RazaoSocial varchar(255) not null,
CNPJ char(15) not null,
Contato char(11) not null,
constraint unique_fornecedor unique(CNPJ)
);


-- Criar tabela vendedor
create table vendedor(
idVendedor int auto_increment primary key,
RazaoSocial varchar(255) not null,
TipoVendedor enum('CNPJ','CPF'),
CNPJ char(15),
CPF char(11),
Email varchar(50),
Contato char(11) not null,
constraint unique_cnpj_fornecedor unique(CNPJ),
constraint unique_cpf_fornecedor unique(CPF)
);

-- criar tabela de relacionamento produto vendedor
create table produtoVendedor(
idProduto_Vendedor int,
idProduto int,
prodQuantidade int default 1,
primary key(idProduto_Vendedor, idProduto),
constraint fk_produto_vendedor foreign key (idProduto_Vendedor) references vendedor(idVendedor),
constraint fk_produto_produto foreign key (idProduto) references produto(idProduto)
);

-- criar tabela de relacionamento produto e pedido
create table produtoPedido(
idProduto_Pedido int,
idProduto int,
Quantidade int default 1,
primary key(idProduto_Pedido, idProduto),
constraint fk_produto_pedido_vendedor foreign key (idProduto_Pedido) references produto(idProduto),
constraint fk_produto_pedido_produto foreign key (idProduto) references pedido(idPedido)
);

-- criar tabela de relacionamento localidade e estoque
create table estoqueLocalidade(
idLocal_Produto int,
idLocal_Estoque int,
Localidade varchar(255) not null,
primary key(idLocal_Produto, idLocal_Estoque),
constraint fk_estoque_localidade_produto foreign key (idLocal_Produto) references produto(idProduto),
constraint fk_estoque_localidade_estoque foreign key (idLocal_Estoque) references produtoPedido(idProduto_Pedido)
);

-- criar tabela de relacionamento produto e fornecedor
create table produtoFornecedor(
idPF_Fornecedor int,
idPF_Produto int,
Quantidade int not null,
primary key(idPF_Fornecedor, idPF_Produto),
constraint fk_produto_fornecedor_fornecedor foreign key (idPF_Fornecedor) references fornecedor(idFornecedor),
constraint fk_produto_fornecedor_produto foreign key (idPF_Produto) references produto(idProduto)
);


