--create  table tipo y table razon
USE [DB_PRACTICAS]
GO
/****** Object:  Table [dbo].[tipoTrx]    Script Date: 7/13/2023 9:53:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tipoTrx]') AND type in (N'U'))
DROP TABLE [dbo].[tipoTrx]
GO
/****** Object:  Table [dbo].[razonTrx]    Script Date: 7/13/2023 9:53:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[razonTrx]') AND type in (N'U'))
DROP TABLE [dbo].[razonTrx]
GO
/****** Object:  Table [dbo].[razonTrx]    Script Date: 7/13/2023 9:53:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[razonTrx](
	[id] [varchar](8) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [razonTrx_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoTrx]    Script Date: 7/13/2023 9:53:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoTrx](
	[id] [varchar](8) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [tipoTrx_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'0', N'ninguna')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'040103', N'PAGO EN MEDIOS PROPIOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'040303', N'PAGO EN BANCOS SOCIOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'050110', N'ROTATIVO ADQ PROPIA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'050210', N'ROTATIVO ADQ BANCOS LOCALES')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'050220', N'CONSUMO ROTATIVO GASOLINERA BC')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'050310', N'ROTATIVO ADQ BANCOS SOCIOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'050410', N'ROTATIVO ADQ. BANCO EXTRANJERO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'050460', N'CONSUMO DE GASOLINERA ADQ PROP')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'050461', N'CONSUMO DE GASOLINERA ADQ SOCI')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'060210', N'DEVOLUCION BCOS LOCALES')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'060410', N'DEVOLUCION BCOS EXTRANJEROS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'070101', N'AVANCE ATM PROPIO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'070102', N'AVANCE VENTANILLA PROPIO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'070201', N'AVANCE ATM BANCOS LOCALES')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'070202', N'AVANCE VENTANILLA BANCOS LOCAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'070301', N'AVANCE ATM BANCOS SOCIOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'070302', N'AVANCE VENTANILLA BANCOS SOCIO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'070401', N'AVANCE ATM BANCOS EXTRANJEROS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'070402', N'AVANCE CORRIENTE WEB / APP')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'080102', N'Interes Rotativo Refinanciamie')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'080103', N'Interes Rotativo Reestructurac')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'080105', N'FINAN.CAP. DIFERIDO PERIODO GR')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'090101', N'Interes de Diferido por Refina')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'090102', N'Interes Diferido Acruado')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'110101', N'Interes Mora Refinanciamiento')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'110102', N'Interes Mora Reestructuracion')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'310110', N'DIFERIDO ADQ PROPIA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'310111', N'DIFERIDO ADQ PROPIA - AUTOMATI')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'310310', N'DIFERIDO ADQ BANCOS SOCIOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'320150', N'CONSUMO DIFERIDO REFINANCIAMIE')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'320151', N'CONSUMO DIFERIDO REESTRUCTURAC')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'320152', N'CONSUMO DIFERIDO COSTO DE TARJ')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'320157', N'CONSUMO DIFERIDO DIFERIMIENTO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'320158', N'CONSUMOS DIFERIDOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'320161', N'DIFERIDO REFINANCIAMIENTO COVI')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'320162', N'DIFERIDO REESTRUCTURACION COVI')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'330102', N'AVANCE VENTANILLA DIF ADQ PROP')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'330302', N'AVANCE VENTANILLA DIF ADQ BCOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'340310', N'DIFERIDO TH BANCOS SOCIOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'350310', N'AVANCE DIFERIDO WEB / APP')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400000', N'Rev costo sobregiro')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400001', N'REVERSO POR MEMBRESIA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400002', N'NOTA CREDITO PROVISIONAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400003', N'N-C X CAPITALIZACION')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400004', N'ANULACION CONSUMO PRUEBA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400005', N'PROMOCION VISA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400006', N'REVERSO GEST.COBRANZAS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400007', N'NC CONVENIO COMERCIO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400008', N'POR DIFERENCIA EN CONSUMO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400009', N'PAGO POR CAJERO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400010', N'BONIFICACION X MEMBRESIA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400011', N'DUPLIC. CARGO X RENOV.')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400013', N'DEVOLUCION AVANCE CAJERO AUTOM')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400014', N'N/C DEVOLUCION TARIFA CONS. GA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400015', N'N/C DEVOLUCION TARIFA AVANCE C')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400016', N'REVERSO POR CARGO DE RENOV.')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400020', N'N/C CONSUMOS DIFERIDOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400021', N'REVERSO POR CH. DEV.')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400022', N'N/C DEVOL. COSTO EST.CTA.')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400023', N'REVERSO COPIA DE PAGARE')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400025', N'N/C PROVISIONAL - PV')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400026', N'DEVOLUCION REPOSICION')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400027', N'REV.PENALIDAD CHEQ.PROT')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400028', N'REVERSO GTOS. JUDICIALES')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400029', N'DEVOLUCION TRANS.DUPLICADA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400030', N'N/C POR DIFERENCIA EN PROCESO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400031', N'REVERSO POR EXTRAVIO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400035', N'REVER. GTOS. DE COBRANZAS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400040', N'REVERSO COMIS. HONORARIOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400041', N'DEVOLUCION AVANCE DE EFECTIVO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400048', N'TRANSFERENCIA DE SALDOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400049', N'TRANSF. DE SALDOS CLUBES')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400050', N'TRANSFERENCIA DE PAGOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400051', N'REVERSO ACT.TARJETA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400052', N'N/C DEVOLUCION TARIFA AVANCE V')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400055', N'N/C PROVISIONAL CONSUMO NO EFE')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400060', N'ANULACION CUOTA DIFERIDA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400063', N'N-C DSCTO. ABONOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400064', N'SEGURO DE DESGRAVAMEN')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400067', N'N/C REFINANCIAMNTO LEGAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400070', N'REFINANCIACION-DOCUMENTO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400075', N'Recuperacion de Minimo')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400080', N'PRESTAMO AUTOMATICO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400081', N'DACION O PAGO-ADJUDICADOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400085', N'N/C CONSUMOS NO EFECTUADOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400086', N'N/C DEVOL.EMIS-REP.E/CTA.')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400094', N'CASTIGO CARTERA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400095', N'CASTIGO CART.VISA-SUCRES')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400101', N'N/C DEVOL.COM.AV.VENTANILLA.LO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400102', N'N/C DEVOL.COM.AV.VENTANILLA. E')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400103', N'N/C DEVOLUCION TARIFA AVANCE C')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400105', N'REVERSO COPIA E/CUENTA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400106', N'N/C DEV.ENVIO E/CTA RET-ENTIDA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400107', N'N/C DEV.ENVIO E/CTA A.DOMICILI')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400108', N'DEVOLUCION TARIFA POR AVANCE W')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400109', N'DEVOLUCION TARIFA POR AVANCE W')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400111', N'DEVOLUCION INTERES')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400112', N'DEVOLUCION GTOS.DPTO.LEGAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400115', N'SEGURO DE VUELO')
GO
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400116', N'SEGURO DE DESGRAVAMEN')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400117', N'SEGURO CONTRA FRAUDE Y ROBO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400118', N'SEGURO MEDICO EN EL EXTERIOR')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400119', N'SEGURO DE CARRO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400222', N'VOUCHER MAL PROCESADO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400233', N'SALDO A FAVOR REVERSADO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400234', N'INTERES SALDO A FAVOR')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400250', N'DEV. TARJETA PROTEGIDA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400251', N'DEV. SEGURO DE ASISTENCIA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400300', N'CARGA PUNTOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400333', N'APLICACION DE PAGO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400340', N'X DIFERENCIA EN PAGO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400350', N'PAGO NO PROCESADO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400355', N'PAGO POR MEDIO DE C.D.R.')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400360', N'MALA APLICACION DE PAGO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400361', N'N/C POR CONECELL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400365', N'VENTA DE CARTERA CASTIGADA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400370', N'DEVOLUCION CONTRIBUCION SOLCA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400444', N'ANULACION CARGO DUPLICADO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400555', N'BONIFICACION X RENOVACION')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400701', N'REVERSO DE IPCV')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400702', N'N/C REVERSO INTERES DIFERIDO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400705', N'Reverso Inter�s de mora')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400800', N'TRANSFERENCIA DE CARTERA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400801', N'N-C DIFERENCIA DE PRECIO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400802', N'N-C DESCT. EN FACTURACION')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400803', N'N/C CONSUMO NO EFECTUADO - CON')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400804', N'N/C X MIGRACION DE TH')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400805', N'TRANSF. DEUDA NORMAL A DIFERID')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400900', N'REVERSO POR CUOTA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400901', N'NOTA DE CREDITO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400902', N'REVERSO DEBITO NO AUTORIZADO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400903', N'FINANCIACION BONIFICABLE (PRD')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400904', N'CANCELACION DE TARJETA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400905', N'CIERRE DE CUENTA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400906', N'REVERSO EMISION DE CERTIFICADO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400907', N'PAGO DEUDA CASTIGADA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'400908', N'GANADORES-PREMIO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'401005', N'N/C Rev Seguros Desgravamen TC')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'401006', N'N/C Rev Seguros de Fraude TC')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402017', N'N/C DEVOLUCION FINAN. CAP. DIF')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402018', N'NC 12% IVA SERVICIO DIGITAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402022', N'ISD DEV.IMPT.CONS./AV.EFE DEL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402023', N'Reverso de costos operativos')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402046', N'N/C REFINAN. DE CONS. LOCAL /')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402056', N'DEV. REPOSICION X EXTRAVIO-ROB')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402059', N'DEV. TARIFA CHEQUE DEVUELTO EX')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402060', N'DEV. TARIFA CHEQUE DEVUELTO LO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402061', N'DEV. TARIFA DE AVANCE EN EFECT')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402075', N'Saldo pendiente pago m�nimo')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402077', N'REVERSO IMPUESTOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402086', N'REVERSO COSTO INGRESO PRIORITY')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402096', N'Rev_Emision de Tarjeta Credito')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402097', N'Rev_Renovaci�n de Tarjeta Cr�d')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402131', N'NC PREMIO CAMPANA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402133', N'DEVOLUCION INTERESES EJERCICIO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402335', N'Reverso ND Programa de Recompe')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402336', N'Reverso ND Prestaciones en el')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402600', N'NC IVA COSTO FINANCIERO EMISOR')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402605', N'DESCUENTO SOLIDARIO 2% IVA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402864', N'Nota de Cr?dito Venta Cartera')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402867', N'DIFERID. NOVAC. DE CONS. LOCAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402868', N'N/C REFINANCIAMIENTO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402869', N'N/C REESTRUCTURACION')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402872', N'NC REVERSO EQUIVIDA EXEQUIAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'402903', N'N/C CUOTA FINAL DIFERIDO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'470001', N'NC APLAZAMIENTO MINIMO NO PAGA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'470002', N'NC CAPITAL VENC. APLAZAMIENTO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'470010', N'N/C NOVACION COVID')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'470011', N'N/C REFINANCIAMIENTO COVID')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'470012', N'N/C REESTRUCTURACION COVID')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'470015', N'N/C APLAZAMIENTO CUOTAS DIFERI')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'470020', N'N/C DIFERIDO CONSTRUCTIVO TC')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'470021', N'N/C REFINANCIAMIENTO LEY HUMAN')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'470022', N'N/C REESTRUCTURACION LEY HUMAN')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500006', N'INT.REFIN.DIFERIDO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500018', N'REV.N/C CONS.NO EFECTUADO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500019', N'MANTENIMIENTO DE CUENTA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500020', N'ENVIO DHL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500022', N'INTERESES X C.D.')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500023', N'COMISION PROC.OPER X CD')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500026', N'INT. FINANCIAMIENTO DEUDA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500030', N'ERROR EN PROCESO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500035', N'CORTES DE ESTADOS DE CUENTA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500040', N'TARIFA POR AVANCE CAJERO EXTER')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500041', N'AVANCE DE EFECT. VENTAN.')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500048', N'TRANSF.DE SALDOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500053', N'DEVOLUCION SALDO A FAVOR')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500056', N'GASTOS JUDICIALES')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500061', N'EMISION ESTADO DE CUENTA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500068', N'RENOVACION')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500070', N'Recuperacion de Minimo')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500071', N'TARIFA POR AVANCE CAJERO LOCAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500072', N'TARIFA X AVANCE EFECT.')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500073', N'TARIFA POR AVANCE VENTANILLA L')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500074', N'TARIFA X AVANCE DIF. LOCAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500075', N'NOTA DE DEBITO INTERESES')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500076', N'EMISION CERTIFICADO DE CREDITO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500077', N'TARIFA AVANCE WEB / APP CORRIE')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500078', N'TARIFA POR AVANCE  WEB/ APP DI')
GO
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500083', N'INTERES X MORA 30 D�AS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500084', N'INTERES X MORA 60 D�AS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500085', N'INTERES X MORA 90 D�AS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500086', N'INTERES X MORA 120 DIAS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500090', N'N/D INTERES X SOBREGIRO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500095', N'CASTIGO CARTERA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500101', N'TARIFA CHEQUE PROTESTADO LOCAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500111', N'INTERESES')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500112', N'CHEQ.PROT.X INSUF.FONDOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500113', N'CHEQ.PROT.X CTA.CERRADA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500114', N'CHEQUES DEVUELTOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500115', N'TARIFA CHEQUE DEVUELTO LOCAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500116', N'CHQ.PROT.EXTERIOR X INSF.FONDO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500117', N'CHQ.DEV. DOLLAR* OTROS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500118', N'TARIFA CHEQUE PROTESTADO EXTER')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500119', N'CHEQUE DEVUELTO DEL EXTERIOR')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500150', N'TARJETA PROTEGIDA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500151', N'SEGURO ASISTENCIA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500222', N'CONSUMO NO REGISTRADO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500235', N'RETENCION INTERES SALDO A FAVO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500246', N'COPIA DE ESTADO DE CUENTA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500300', N'AJUSTE PUNTOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500333', N'ANULACION PAGO INDEBIDO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500444', N'CORRECCION PAG.DUPLICADO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500501', N'REPOSICION X EXTRAVIO-ROBO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500502', N'ANULACION DE PAGO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500554', N'REPOSICION')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500667', N'GESTION DE COBRANZAS EXTRAJUDI')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500678', N'GESTION DE COBRANZAS EXTRAJUDI')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500688', N'GASTOS JUDICIALES')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500690', N'AVANCE DE EFECTIVO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500706', N'REVERSO N/C CONS FRAUDULENTO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500709', N'DEUDA DEL DIFERIDO PRECANCELAD')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500710', N'CAPITAL DIFERIDO PRECANCELADO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500777', N'MEMBRESIA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500779', N'MEMBRESIA ADICIONAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500780', N'IMPTO.LEY -  SOLCA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500801', N'INT.NO CARGADO MES ANT.')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500802', N'COMI.NO CARGADA MES ANT.')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500803', N'ND 500803')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500806', N'IPCV NO CARGADO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500807', N'RECUPERACION CARTERA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500810', N'COSTO POR CONSUMO GASOLINERA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500833', N'NOTA DE DEBITO INTERESES FINAN')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500838', N'N/D DEVOLUCION SALDO A FAVOR C')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500839', N'NOTA DE DEBITO COSTOS OPERATIV')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500849', N'N/D DEVOLUCION SALDO A FAVOR C')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500905', N'HONORARIOS ABOGADO EXTERNO COB')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'500998', N'DEBITO POR ANULACION DE CREDIT')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'501010', N'Costo x Avance Vent. Exterior')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'501011', N'Copia Voucher Consumo Local')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'501012', N'Copia Voucher Consumo Exterior')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502022', N'IMPUESTO SALIDA DIVISAS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502025', N'ENTREGA ESTADO DE CUENTA A DOM')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502026', N'ENTREGA  ESTADO DE CUENTA EN L')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502027', N'COSTO POR PAGO DE IMPUESTOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502035', N'SEGURO DE DESGRAVAMEN TC')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502037', N'COMISION GASOLINERA POR ADQUIR')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502038', N'COMISION GASOLINERA POR ADQUIR')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502054', N'PRECANCELACION DIFERIDOS REFIN')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502066', N'COSTO INGRESO PRIORITY PASS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502084', N'TARIFA EMISION TARJETA DE CRED')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502085', N'TARIFA RENOVACION TARJETA DE C')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502088', N'TARIFA REPOSICION DE TARJETA D')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502089', N'Contribucion para el financiam')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502091', N'PAGOS CARTERA VENDIDA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502093', N'Seguros Desgravamen Tarjeta de')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502094', N'Seguros Protecci�n Inteligente')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502095', N'CONSUMO NO CARGADO POR MIGRACI')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502105', N'SEGURO DE VIDA PLENA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502130', N'LEY PASIVO INMOVILIZADO SALDO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502200', N'N/D DEVOLUCION SALDO A FAVOR')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502201', N'N/D DEVOLUCION SALDO A FAVOR I')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502335', N'Programa Recompensas')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502336', N'Prestaciones en el Exterior')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502600', N'ND IVA COSTO FINANCIERO EMISOR')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502615', N'DEBITO DEVOLUCION IVA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502867', N'REVERSO DIFERID. NOVAC. DE CON')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'502872', N'ND EQUIVIDA EXEQUIAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'517001', N'INT. PERIODO GRACIA DEL DIFERI')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'517002', N'INT. PERIODO GRACIA DEL DIFERI')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570001', N'ND CAPITAL APLAZAMIENTO MIN.NO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570002', N'ND INTERES ROTATIVO APLAZAMIEN')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570003', N'ND INTERES DIFERIDO APLAZAMIEN')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570004', N'ND INTERES MORA APLAZAMIENTO M')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570005', N'ND INTERES ROTATIVO REFINAN. A')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570006', N'ND INTERES DIFERIDO REFINAN. A')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570007', N'ND INTERES MORA REFINAN. APLAZ')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570008', N'ND COSTOS OPERATIVOS APLAZAMIE')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570009', N'ND A TERCEROS APLAZAMIENTO MIN')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570010', N'ND TARIFAS POR SERVICIOS MIN.')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570011', N'ND IMPUESTOS APLAZAMIENTO MIN.')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570012', N'ND SEGUROS APLAZAMIENTO MIN. N')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570013', N'ND CAPITAL REFINANCIADO APLAZA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570015', N'ND APLAZAMIENTO CUOTA DIFERIDA')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'570016', N'ND 12% IVA SERVICIO DIGITAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'650210', N'ROTATIVO TH BANCO LOCAL')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'650220', N'ROTATIVO TH BANCO LOCAL GASOLI')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'650310', N'ROTATIVO TH BANCOS SOCIOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'650410', N'ROTATIVO TH BANCO EXTRANJERO')
GO
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'750201', N'AVANCE ATM TH BANCOS LOCALES')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'750202', N'AVANCE VENTANILLA TH BANCO LOC')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'750301', N'AVANCE ATM TH BANCOS SOCIOS')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'750302', N'AVANCE VENTANILLA TH BANCOS SO')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'750401', N'AVANCE ATM TH BANCOS EXTRANJER')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'750402', N'AVANCE VENTANILLA TH BANCO EXT')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'906004', N'Redencion Operativa')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'907001', N'Compra Puntos')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'907002', N'Incremento de Puntos')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'907003', N'Reduccion Puntos')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'907004', N'Reduccion por perdida de Punto')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'907005', N'Incremento por Ganancia Adicio')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'907006', N'Reducci�n por perdida de Punto')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'907007', N'Consulta en el exterior en ATM')
INSERT [dbo].[razonTrx] ([id], [descripcion]) VALUES (N'907008', N'Consumos en el exterior por mo')
GO
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'01', N'DEVOLUCION NC')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'06', N'DEVOLUCION')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'08', N'INTERESES CORRIENTES')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'09', N'INTERES CUOTA  DE DIFERIDO')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'10', N'INTERES SALDO VENCIDO')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'11', N'INTERES MORA')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'12', N'CARGO POR SOBREGIRO')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'14', N'INTERES EXTRA CONTABLE')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'202', N'COMPRA')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'203', N'DIFERIDO')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'204', N'CONSUMO GASOLINA')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'205', N'DIFERIDO GENERAL')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'206', N'COMPRA EN EL EXTERIOR')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'207', N'CONSUMO GASOLINA EXTERIOR')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'208', N'COMPRAS CON PUNTOS')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'211', N'AVANCE VENTANILLA LOCAL')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'212', N'AVANCE ATM LOCAL')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'213', N'AVANCE CORRIENTE WEB / APP')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'214', N'AVANCE ATM EXTERIOR')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'215', N'AVANCE DIFERIDO')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'216', N'AVANCE ATM INTNL')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'217', N'AVANCE ATM INTNL')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'25', N'REVERSO DE VENTA')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'26', N'REVERSA DEVOLUCION')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'27', N'REVERSO DE AVANCE')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'302', N'PAGOS')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'303', N'Diferido Deuda Capital propio')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'304', N'PAGO REFINANCIACION')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'333', N'CONSUMOS DIFERIDOS')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'402', N'NOTAS DE CREDITO')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'403', N'N/C (AGRUPA RENOVACION)')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'404', N'N/C (AGRUPA OTROS)')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'405', N'N/C ( AGRUPA MORA)')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'406', N'NOTAS DE CREDITOS CON PUNTOS')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'416', N'N/C (Agrupa interes Rotativo)')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'417', N'N/C (Agrupa Interes Diferido)')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'502', N'NOTAS DE DEBITO')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'503', N'Notas de Debito Especiales')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'504', N'Nota Debito Anulacion')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'506', N'NOTAS DE DEBITOS CON PUNTOS')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'512', N'CHEQUE RECHAZADO')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'513', N'CHEQUE RECHAZADO EN DOLARES')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'514', N'CHEQUE DEVUELTO')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'515', N'REVERSO DE PAGOS')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'516', N'N/D (AGRUPA INTERESES)')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'517', N'Interes Periodo de Gracia')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'518', N'N/D (AGRUPA OTROS)')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'600', N'OTORGACION DE PUNTOS')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'902', N'GENERACION DE PUNTOS')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'903', N'PUNTOS PROMOCION')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'904', N'GANANCIA DE PUNTOS')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'905', N'AJUSTE DEBITO DE PUNTOS')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'906', N'REDENCION PUNTOS')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'907', N'COMPRA DE PUNTOS')
INSERT [dbo].[tipoTrx] ([id], [descripcion]) VALUES (N'908', N'AJUSTES CREDITO PUNTOS')
GO

--creacion de foreign key
alter table pr_transacciones
add constraint fk_tipoTrx 
foreign key (pr_tipoTrx)
references tipoTrx(id);

alter table pr_transacciones
add constraint fk_RazonTrx 
foreign key (pr_razon)
references razonTrx(id);
go

create or alter procedure sp_insertarNeysser @cantidadRegistros INT
as
begin
    TRUNCATE TABLE pr_transacciones;
    declare @i INT = 1;
    while @i <= @cantidadRegistros
        begin
            DECLARE @valorRandomTipo varchar(8) =
                (SELECT TOP 1 id
                 FROM tipoTrx
                 ORDER BY NEWID());
            DECLARE @razonDescripcion varchar(8) =
                (SELECT TOP 1 id
                 FROM razonTrx
                 ORDER BY NEWID());
            DECLARE @RandomNumberCheck BIGINT;
            SET @RandomNumberCheck = ABS(CAST(CAST(NEWID() AS VARBINARY) AS BIGINT)) % 9000000000 + 1000000000000000;
            DECLARE @id int = @i;
            DECLARE @date DATETIME = DATEADD(SECOND, 1, GETDATE());
            DECLARE @comercio int = @i;
            DECLARE @tarjeta varchar(20) = @RandomNumberCheck;
            DECLARE @valor money = 0.00 + @i;         
            DECLARE @tipoTrx varchar(8) = @valorRandomTipo;
            DECLARE @razon varchar(8) = @razonDescripcion;
            DECLARE @autoriza varchar(4) = CAST(@i AS VARCHAR(4));
            insert into pr_transacciones
                -- (pr_id, pr_fecha, pr_comercio, pr_tarjeta, pr_valor, pr_tipoTrx, pr_razon, pr_autoriza)
            values (@i, @date, @comercio, @tarjeta, @valor, @tipoTrx, @razon, @autoriza);
            set @i = @i + 1;
        end
    select * from pr_transacciones;
end;
go

