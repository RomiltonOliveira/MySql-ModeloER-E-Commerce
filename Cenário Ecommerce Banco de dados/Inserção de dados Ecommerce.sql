
INSERT INTO cliente (Pnome, Mnome, Unome, CPF, Telefone, Email, Rua, numCasa, Bairro, Cep, Cidade) VALUES
	('Romilton','S','Oliveira', '03541542542','88986542542', 'romilton@gmail.com','Rua das pedras','100651','Centro','65465151654','Senador Pompeu'),
	('Mateus','L','Cardoso', '03511545685','88964569425', 'mateus@gmail.com','Rua da lagoa','1215','canindé','54564564654654','Solonopole'),
   ('Jorge','S','Matos','03542258555', '88965145211', 'jorge@gmail.com','Rua dos Matos','6545','São josé','6545645645645','Quixada'),
   ('Felipe','B','Sindeaux','02354893254', '88965458724', 'felipe@gmail.com','Rua das terras','561','pavão','84456456456456','Milhã'),
   ('Carlos','F','Ferreira','03254879654', '88954836598', 'carlos@gmail.com','Rua dos pedregulhos','1645','Patu','4645456465465','Codiá'),
   ('Jean','J','Silva','02354785985', '88959854575', 'jean@gmail.com','Rua de ouro','4554','Centro','8456456456464','Jenipapeiro');
   

INSERT INTO produto (NomeP, categoria, Avaliacao, valor, Endereço, Tamanho) VALUES
	('Carrinho','Brinquedos',4,105.00,'Rua da jacomara', '35cm'),
    ('batedeira','Eletrônico',4.5,100.00,'Rua da Franco pereira', '65cm'),
    ('Blazer','Vestimenta',4.8,245.00,'Rua da Lagoa', null),
    ('Pipoca','Alimentos',3.5,25.00,'Rua das pedras', null),
    ('Armário','Movéis',4.6,899.00,'Rua da abilio', '120cm'),
	('berço','Movéis',4.6,549.00,'Rua da baixo', '150cm'),
    ('mesa','Movéis',3.5,1050.00,'Rua da cima', '88cm');
    
    
    INSERT INTO pedido (idPedido_Cliente, PedidoStatus, PedidoDescricao, Frete, PagamentoDinheiro) VALUES 
	(5, 'Confirmado','Deu tudo certo',10.00,1),
    (2, 'Em Processamento','Aguardando pagamento',10.00,0),
    (1, 'Cancelado','Pagamento não realizado',28.00,0),
    (6, 'Em Processamento','Aguardando pagamento',18.00,1),
    (4, 'Confirmado','Deu foi certo',10.00,0),
    (3, 'Cancelado','Cliente desistiu da compra',0.00,1),
    (2, 'Em Processamento','Aguardando endereço para entrega',15.00,0),
    (5, 'Confirmado','Deu bom',30.00,0);
	
   
   INSERT INTO pagamento (idCliente, idPedido, TipoPagamento) VALUES 
	(1,5,'Boleto'),
	(2,1,'Cartão'),
    (3,4,'Pix'),
    (4,4,'Dinheiro'),
	(5,2,'Cartão'),
	(6,2,'Cartão'),
	(6,6,'Boleto'),
	(2,1,'Dinheiro'),
    (5,1,'Pix');
   
    INSERT INTO estoque (LocalEstoque,Quantidade) VALUES 
	('Crateús',63),
    ('Jericoaquara',128),
    ('Senador Pompeu',34);
 
    
    INSERT INTO fornecedor (RazaoSocial, CNPJ, Contato) VALUES 
	('Amazon', 124785214698752,'88965423654'),
    ('Temu ',254935458523654,'85968542178'),
    ('AliExpress ',587965421854789,'86965842574'),
    ('Shopee ',598563254785214,'85854752365');
    INSERT INTO fornecedor (RazaoSocial, CNPJ, Contato) VALUES 
     ('Marocas SA',203654879652148,86521478541);
   
    
   INSERT INTO vendedor (RazaoSocial, TipoVendedor, CNPJ, CPF, Email, Contato) VALUES 
	('Juquinha LMTD', 'CNPJ', 102548763512548, NULL, 'juquinha@bol.com', 88965421875),
	('Jorginho Pereira','CPF',null,03521522145,'Jorginho@hotmail.com', 85965874154),
    ('Marcos da Caçamba','CPF',null,0214585455,'Marcos@hotmail.com', 8575452365),
    ('Marocas SA','CNPJ',203654879652148,null,'marocas@hotmail.com', 86521478541),
    ('Mundinha Magazine','CNPJ',203215478965874,null,'Jorginho@hotmail.com', 85965874154);
    
  
  INSERT INTO produtoVendedor (idProduto_Vendedor, idProduto, prodQuantidade) VALUES 
	(1,5,18),
    (2,6,13),
    (3,7,25),
    (4,4,5),
    (5,1,8),
    (5,2,30),
    (3,2,14),
    (2,4,29);
    
    
    INSERT INTO produtoPedido (idProduto_Pedido, idProduto, Quantidade) VALUES
	(1,5,14),
    (2,7,23),
    (3,1,2),
	(4,2,14),
    (5,3,6),
    (6,5,18),
	(7,3,4),
    (3,4,7),
    (5,2,12),
	(1,7,8);
  
 
  INSERT INTO estoqueLocalidade ( idLocal_Produto, idLocal_Estoque, Localidade) VALUES
    (1,3,'Sobral'),
	(1,1,'Camocim'),
	(1,5,'Fortaleza'),
    (1,4,'Gramados'),
    (2,1,'Belo Horizonte'),
	(2,2,'Brasília'),
    (2,7,'São Paulo'),
	(2,6,'Fortaleza'),
    (2,4,'Rio de Janeiro');
  
  
  INSERT INTO produtoFornecedor (idPF_Fornecedor, idPF_Produto, Quantidade) VALUES
	(1,7,43),
    (2,1,28),
    (3,2,12),
    (4,6,45),
    (1,3,18),
    (2,5,12),
    (3,4,8),
    (4,7,10),
    (1,5,3),
    (2,6,10);
    
    
   