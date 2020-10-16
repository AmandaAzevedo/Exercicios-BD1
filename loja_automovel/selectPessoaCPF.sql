USE loja_automoveis
GO
SELECT cpf ,nome ,sobrenome ,numero_residencia ,lougradouro ,nome_endereco ,complemento_endereco ,telefone,telefone_residencial ,tipo_pessoa
  FROM dbo.pessoa
  WHERE cpf='71082637424'
GO

