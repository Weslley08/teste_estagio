DROP VIEW IF EXISTS visualizarcliente;
CREATE VIEW visualizarcliente AS
    SELECT 
        cliente.id_cliente 'Código',
        cliente.nome 'Nome',
        cliente.sobrenome 'Sobrenome',
        cliente.data_nascimento 'Data de Nascimento', 
        casa.cor 'Cor da casa',
        bairro.nome 'Bairro',
        carro.modelo 'Carro'
    FROM
        cliente
	LEFT JOIN
		casa ON casa.fk_bairro and casa.fk_cliente = cliente.id_cliente
    JOIN
		bairro On bairro.id_bairro = cliente.id_cliente
    LEFT JOIN
		carro ON carro.fk_cliente = cliente.id_cliente;
        
SELECT * FROM visualizarcliente;
