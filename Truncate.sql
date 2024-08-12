-- Rotina para Inserir Dados na Tabela
DECLARE @Counter INT = 1

WHILE @Counter <= 100
BEGIN
	INSERT INTO Test (ValorTeste) VALUES (@Counter * 3)
	SET @Counter = @Counter + 1
END

SELECT * FROM Test

-- Limpar a Tabela
TRUNCATE TABLE Test

-- Verificar o Valor Atual de IDENTITY
SELECT IDENT_CURRENT('Test')