-- Quantidade de pedidos feitos por cada cliente
select concat(Pnome, ' ',Mnome,' ',Unome) as Nome_Completo, count(*) as Pedidos_Realizados
	from cliente c, pedido p
		where c.idCliente = p.idPedido_Cliente
			group by idPedido_Cliente
			order by Pedidos_Realizados desc;



-- Relação de nomes dos fornecedores e produtos fornecidos, quantidade em estoque, categoria de cada produto
-- avaliação de cada produto, Valor do produto sem desconto e valor do produto com 5% de desconto
select RazaoSocial, NomeP, Quantidade, Categoria, Avaliacao, valor, round(valor*0.95,2) as Valor_Desconto 
	from fornecedor, produtoFornecedor, produto
		where idPF_Fornecedor = idFornecedor and idPF_Produto = idProduto;


-- Lista dos clientes com os produtos comprados com a quantidades acima de 10, valor de cada produto unitario
-- valor total do pedido e o tipo de pagamento. Lista ordenada pelo nome ASC
SELECT concat(c.Pnome,' ',c.Mnome,' ',c.Unome) as Nome_Completo, p.NomeP,pp.Quantidade,p.Valor,(pp.Quantidade * p.Valor) as Valor_Total_Pedido, pg.TipoPagamento
	FROM produtoPedido pp, pedido pe, cliente c, produto p, pagamento pg
		WHERE pp.idProduto = p.idProduto AND pp.idProduto_Pedido = pe.idPedido AND pe.idPedido_Cliente = c.idCliente AND c.idCliente = pg.idCliente
			having pp.Quantidade > 10
			order by Nome_Completo;
        
-- Quantidade de produtos no estoque de Cratéus
select sum(e.Quantidade) as Quantidade, p.NomeP 
	from estoque e inner join produto p on p.idProduto=e.idProduto_Estoque and e.LocalEstoque = 'Crateús'
		group by p.NomeP;
        