

create or alter procedure sp_insertarNeysser
@cantidadRegistros INT
	as
	begin
TRUNCATE TABLE pr_transacciones;
--TRUNCATE TABLE razonTrx;
	declare @i INT = 1;
	while @i <= @cantidadRegistros
	begin
	
	DECLARE @valorTipo varchar(8) = 
(SELECT TOP 1 id
FROM tipoTrx
ORDER BY NEWID());

DECLARE @razonValor varchar(8) = 
(SELECT ISNULL((SELECT TOP 1 id_razon 
FROM TRtrx WHERE id_tipo = @valorTipo 
ORDER BY NEWID()), 0));

print @razonValor
DECLARE @RandomNumberCheck BIGINT;
SET @RandomNumberCheck = ABS(CAST(CAST(NEWID() AS VARBINARY) AS BIGINT)) % 9000000000 + 1000000000000000;
	DECLARE @id int              = @i;
	DECLARE @date DATETIME       =  DATEADD(SECOND, 1, GETDATE());
		DECLARE @comercio int        = @i;
		DECLARE @tarjeta varchar(20) =  @RandomNumberCheck;
		DECLARE @valor money         = 0.00 + @i;
		--DECLARE @tipoTrx varchar(8)  = 'Tipo: ' + CAST(@i AS VARCHAR(10));
		DECLARE @tipoTrx varchar(8)  = @valorTipo;
		--DECLARE @razon varchar(8)    = 'Razon: ' + CAST(@i AS VARCHAR(10))
		DECLARE @razon varchar(8)    = @razonValor;
		DECLARE @autoriza varchar(4) = 'neysser';
	 insert into pr_transacciones 
	-- (pr_id, pr_fecha, pr_comercio, pr_tarjeta, pr_valor, pr_tipoTrx, pr_razon, pr_autoriza)
	 values (@i,@date,@comercio,@tarjeta,@valor,@tipoTrx,@razon,@autoriza);
	set @i = @i + 1;
	end
	   select * from pr_transacciones;
	end;
go
 
