USE [master]
GO
/****** Object:  Database [Sapataria]    Script Date: 04/30/2014 19:14:39 ******/
CREATE DATABASE [Sapataria] ON  PRIMARY 
( NAME = N'Sapataria', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Sapataria.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Sapataria_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Sapataria_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Sapataria] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sapataria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sapataria] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Sapataria] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Sapataria] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Sapataria] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Sapataria] SET ARITHABORT OFF
GO
ALTER DATABASE [Sapataria] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Sapataria] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Sapataria] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Sapataria] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Sapataria] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Sapataria] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Sapataria] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Sapataria] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Sapataria] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Sapataria] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Sapataria] SET  DISABLE_BROKER
GO
ALTER DATABASE [Sapataria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Sapataria] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Sapataria] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Sapataria] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Sapataria] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Sapataria] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Sapataria] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Sapataria] SET  READ_WRITE
GO
ALTER DATABASE [Sapataria] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Sapataria] SET  MULTI_USER
GO
ALTER DATABASE [Sapataria] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Sapataria] SET DB_CHAINING OFF
GO
USE [Sapataria]
GO
/****** Object:  User [remote]    Script Date: 04/30/2014 19:14:39 ******/
CREATE USER [remote] FOR LOGIN [remote] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[LogAcesso]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogAcesso](
	[ID_Usuario] [int] NOT NULL,
	[Data_Hora] [datetime] NOT NULL,
	[Acesso_Operacao] [varchar](max) NOT NULL,
 CONSTRAINT [PK_LogAcesso] PRIMARY KEY CLUSTERED 
(
	[ID_Usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CEP]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CEP](
	[CEP] [numeric](8, 0) NOT NULL,
	[UF] [nchar](2) NOT NULL,
	[Cidade] [varchar](50) NOT NULL,
	[Bairro] [varchar](50) NOT NULL,
	[Logradouro] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CEP2] PRIMARY KEY CLUSTERED 
(
	[CEP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Caixa]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Caixa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PagarReceber] [bit] NULL,
	[Data] [date] NOT NULL,
	[NotaFiscal] [int] NULL,
	[FormaPagamento] [int] NOT NULL,
	[Valor] [decimal](12, 2) NOT NULL,
	[Observacao] [varchar](80) NULL,
 CONSTRAINT [PK_ContasPagarReceber] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Telefone]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Telefone](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [smallint] NOT NULL,
	[DDD] [char](3) NOT NULL,
	[Numero] [nchar](10) NOT NULL,
	[Observacao] [varchar](50) NULL,
 CONSTRAINT [PK_Telefone] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[Tamanho] [numeric](2, 0) NOT NULL,
	[Marca] [varchar](50) NOT NULL,
	[Genero] [bit] NULL,
	[Descontinuado] [bit] NULL,
	[Estoque] [int] NOT NULL,
	[EstoqueMinimo] [int] NULL,
	[PrecoCompra] [decimal](12, 2) NOT NULL,
	[PrecoVenda] [decimal](12, 2) NOT NULL,
	[Imagem] [image] NULL,
	[Observacao] [varchar](max) NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Funcionario] [int] NOT NULL,
	[Login] [varchar](50) NULL,
	[Senha] [varchar](50) NULL,
	[Perfil] [varchar](50) NULL,
	[data] [date] NOT NULL,
	[Regras] [varchar](50) NULL,
	[Observacao] [varchar](80) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Telefone_Funcionario]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefone_Funcionario](
	[ID_Funcionario] [int] IDENTITY(1,1) NOT NULL,
	[FKtelefoneFuncionario] [int] NOT NULL,
 CONSTRAINT [PK_Telefone_Funcionario] PRIMARY KEY CLUSTERED 
(
	[ID_Funcionario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente_Fornecedor]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente_Fornecedor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [bit] NULL,
	[CPF] [nchar](12) NULL,
	[CNPJ] [nchar](14) NULL,
	[Data] [date] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[RG] [nchar](10) NULL,
	[Referencia] [varchar](50) NULL,
	[FK_CEP] [numeric](8, 0) NULL,
	[Numero] [int] NULL,
	[Complemento] [nchar](10) NULL,
	[Observacao] [varchar](80) NULL,
 CONSTRAINT [PK_Cliente_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstoqueMovimentacao]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstoqueMovimentacao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Produto] [int] NOT NULL,
	[Quantidade] [int] NOT NULL,
	[NotaFiscalItem] [int] NULL,
	[Movimentacao] [nchar](1) NOT NULL,
	[Data] [date] NOT NULL,
	[Observacao] [varchar](80) NULL,
 CONSTRAINT [PK_EstoqueMovimentacao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContasPagar]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContasPagar](
	[ID] [int] NOT NULL,
	[Valor] [decimal](12, 2) NOT NULL,
	[Data] [date] NOT NULL,
	[ValorPago] [decimal](12, 2) NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
	[NumeroVezes] [int] NOT NULL,
	[Observacao] [varchar](80) NULL,
	[Fk_NotaFiscal] [int] NOT NULL,
	[FormaPagamento] [varchar](50) NOT NULL,
	[FK_Caixa] [int] NOT NULL,
 CONSTRAINT [PK_FormaDePagamento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcionario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Data] [date] NOT NULL,
	[Nome] [nchar](10) NOT NULL,
	[Email] [varchar](50) NULL,
	[CPF] [nchar](12) NOT NULL,
	[Cargo] [nchar](10) NOT NULL,
	[FKtelefoneFuncionario] [int] NULL,
	[Salario] [decimal](12, 2) NOT NULL,
	[Comissao] [int] NULL,
	[Apelido] [varchar](50) NULL,
	[Nivel] [int] NOT NULL,
	[FKCEP] [numeric](8, 0) NULL,
	[Numero] [int] NULL,
	[Complemento] [nchar](10) NULL,
	[Observacao] [varchar](80) NOT NULL,
 CONSTRAINT [PK_Funcionario_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Data] [date] NOT NULL,
	[Operacao] [nchar](1) NOT NULL,
	[Valor] [decimal](12, 2) NOT NULL,
	[VendedorComprador] [int] NOT NULL,
	[FornecedorCliente] [int] NOT NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente_Telefone]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente_Telefone](
	[ID_Cliente_Fornecedor] [int] IDENTITY(1,1) NOT NULL,
	[FK_Cliente] [int] NOT NULL,
 CONSTRAINT [PK_Cliente_Telefone] PRIMARY KEY CLUSTERED 
(
	[ID_Cliente_Fornecedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotaFiscal]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NotaFiscal](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Data] [date] NOT NULL,
	[Operacao] [int] NOT NULL,
	[Numero] [int] NOT NULL,
	[Pedido] [int] NOT NULL,
	[Cliente_Fornecedor] [int] NULL,
	[FK_Usuario] [int] NOT NULL,
	[Vendedor] [int] NOT NULL,
	[NFE] [xml] NULL,
	[Observacao] [varchar](max) NULL,
 CONSTRAINT [PK_Vendas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PedidoItem]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PedidoItem](
	[ID] [int] NOT NULL,
	[FK_Produto] [int] NOT NULL,
	[FK_Pedido] [int] NOT NULL,
	[Quantidade] [int] NOT NULL,
	[Preco] [decimal](12, 2) NOT NULL,
	[Observacao] [varchar](max) NULL,
 CONSTRAINT [PK_PedidoItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NotaFiscalItem]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NotaFiscalItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NotaFiscal] [int] NULL,
	[Produto] [int] NOT NULL,
	[Quantidade] [int] NOT NULL,
	[Preco] [decimal](12, 2) NOT NULL,
	[Observacao] [varchar](80) NULL,
	[ICMS] [float] NULL,
 CONSTRAINT [PK_NotaFiscalItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contas_Receber]    Script Date: 04/30/2014 19:14:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contas_Receber](
	[ID] [int] NOT NULL,
	[Valor] [decimal](12, 2) NOT NULL,
	[Data] [date] NOT NULL,
	[ValorPago] [decimal](12, 2) NOT NULL,
	[DataPaga] [date] NOT NULL,
	[FKNotaFiscal] [int] NOT NULL,
	[FormaPagamento] [varchar](50) NOT NULL,
	[FK_Caixa] [int] NOT NULL,
 CONSTRAINT [PK_Contas_Receber] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_Caixa_Data]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Caixa] ADD  CONSTRAINT [DF_Caixa_Data]  DEFAULT (getdate()) FOR [Data]
GO
/****** Object:  Default [DF_Caixa_Valor]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Caixa] ADD  CONSTRAINT [DF_Caixa_Valor]  DEFAULT ((0)) FOR [Valor]
GO
/****** Object:  Default [DF_Telefone_Tipo]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Telefone] ADD  CONSTRAINT [DF_Telefone_Tipo]  DEFAULT ((11)) FOR [Tipo]
GO
/****** Object:  Default [DF_Produto_Estoque]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Produto] ADD  CONSTRAINT [DF_Produto_Estoque]  DEFAULT ((0)) FOR [Estoque]
GO
/****** Object:  Default [DF_Produto_Valor]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Produto] ADD  CONSTRAINT [DF_Produto_Valor]  DEFAULT ((0)) FOR [PrecoCompra]
GO
/****** Object:  Default [DF_Produto_Preco]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Produto] ADD  CONSTRAINT [DF_Produto_Preco]  DEFAULT ((0)) FOR [PrecoVenda]
GO
/****** Object:  Default [DF_Produto_Observacao]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Produto] ADD  CONSTRAINT [DF_Produto_Observacao]  DEFAULT ((0)) FOR [Observacao]
GO
/****** Object:  Default [DF_Table_1_data]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF_Table_1_data]  DEFAULT (getdate()) FOR [data]
GO
/****** Object:  Default [DF_Cliente_Fornecedor_Tipo]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Cliente_Fornecedor] ADD  CONSTRAINT [DF_Cliente_Fornecedor_Tipo]  DEFAULT ((0)) FOR [Tipo]
GO
/****** Object:  Default [DF_Cliente_Data]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Cliente_Fornecedor] ADD  CONSTRAINT [DF_Cliente_Data]  DEFAULT (getdate()) FOR [Data]
GO
/****** Object:  Default [DF_EstoqueMovimentacao_Movimentacao]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[EstoqueMovimentacao] ADD  CONSTRAINT [DF_EstoqueMovimentacao_Movimentacao]  DEFAULT (N'S') FOR [Movimentacao]
GO
/****** Object:  Default [DF_FormaPagamento_NumeroVezes]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[ContasPagar] ADD  CONSTRAINT [DF_FormaPagamento_NumeroVezes]  DEFAULT ((1)) FOR [NumeroVezes]
GO
/****** Object:  Default [DF_Funcionario_Data]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Funcionario] ADD  CONSTRAINT [DF_Funcionario_Data]  DEFAULT (getdate()) FOR [Data]
GO
/****** Object:  Default [DF_Funcionario_Salario]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Funcionario] ADD  CONSTRAINT [DF_Funcionario_Salario]  DEFAULT ((0)) FOR [Salario]
GO
/****** Object:  Default [DF_Pedido_Data]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Pedido] ADD  CONSTRAINT [DF_Pedido_Data]  DEFAULT (getdate()) FOR [Data]
GO
/****** Object:  Default [DF_Pedido_Operacao]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Pedido] ADD  CONSTRAINT [DF_Pedido_Operacao]  DEFAULT (N'C') FOR [Operacao]
GO
/****** Object:  Default [DF_Vendas_Data]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[NotaFiscal] ADD  CONSTRAINT [DF_Vendas_Data]  DEFAULT (getdate()) FOR [Data]
GO
/****** Object:  Default [DF_PedidoItem_Preco]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[PedidoItem] ADD  CONSTRAINT [DF_PedidoItem_Preco]  DEFAULT ((0)) FOR [Preco]
GO
/****** Object:  Default [DF_NotaFiscalItem_ICMS]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[NotaFiscalItem] ADD  CONSTRAINT [DF_NotaFiscalItem_ICMS]  DEFAULT ((18)) FOR [ICMS]
GO
/****** Object:  ForeignKey [FK_Telefone_Funcionario_Telefone]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Telefone_Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Telefone_Funcionario_Telefone] FOREIGN KEY([FKtelefoneFuncionario])
REFERENCES [dbo].[Telefone] ([ID])
GO
ALTER TABLE [dbo].[Telefone_Funcionario] CHECK CONSTRAINT [FK_Telefone_Funcionario_Telefone]
GO
/****** Object:  ForeignKey [FK_Cliente_Fornecedor_Endereco]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Cliente_Fornecedor]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Fornecedor_Endereco] FOREIGN KEY([FK_CEP])
REFERENCES [dbo].[CEP] ([CEP])
GO
ALTER TABLE [dbo].[Cliente_Fornecedor] CHECK CONSTRAINT [FK_Cliente_Fornecedor_Endereco]
GO
/****** Object:  ForeignKey [FK_EstoqueMovimentacao_Produto]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[EstoqueMovimentacao]  WITH CHECK ADD  CONSTRAINT [FK_EstoqueMovimentacao_Produto] FOREIGN KEY([Produto])
REFERENCES [dbo].[Produto] ([ID])
GO
ALTER TABLE [dbo].[EstoqueMovimentacao] CHECK CONSTRAINT [FK_EstoqueMovimentacao_Produto]
GO
/****** Object:  ForeignKey [FK_ContasPagar_Caixa]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[ContasPagar]  WITH CHECK ADD  CONSTRAINT [FK_ContasPagar_Caixa] FOREIGN KEY([FK_Caixa])
REFERENCES [dbo].[Caixa] ([ID])
GO
ALTER TABLE [dbo].[ContasPagar] CHECK CONSTRAINT [FK_ContasPagar_Caixa]
GO
/****** Object:  ForeignKey [FK_Funcionario_Endereco]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_Endereco] FOREIGN KEY([FKCEP])
REFERENCES [dbo].[CEP] ([CEP])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_Endereco]
GO
/****** Object:  ForeignKey [FK_Funcionario_Telefone_Funcionario]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_Telefone_Funcionario] FOREIGN KEY([FKtelefoneFuncionario])
REFERENCES [dbo].[Telefone_Funcionario] ([ID_Funcionario])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_Telefone_Funcionario]
GO
/****** Object:  ForeignKey [FK_Pedido_Cliente_Fornecedor]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Cliente_Fornecedor] FOREIGN KEY([FornecedorCliente])
REFERENCES [dbo].[Cliente_Fornecedor] ([ID])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Cliente_Fornecedor]
GO
/****** Object:  ForeignKey [FK_Cliente_Telefone_Cliente_Fornecedor]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Cliente_Telefone]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Telefone_Cliente_Fornecedor] FOREIGN KEY([ID_Cliente_Fornecedor])
REFERENCES [dbo].[Cliente_Fornecedor] ([ID])
GO
ALTER TABLE [dbo].[Cliente_Telefone] CHECK CONSTRAINT [FK_Cliente_Telefone_Cliente_Fornecedor]
GO
/****** Object:  ForeignKey [FK_Cliente_Telefone_Telefone]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Cliente_Telefone]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Telefone_Telefone] FOREIGN KEY([FK_Cliente])
REFERENCES [dbo].[Telefone] ([ID])
GO
ALTER TABLE [dbo].[Cliente_Telefone] CHECK CONSTRAINT [FK_Cliente_Telefone_Telefone]
GO
/****** Object:  ForeignKey [FK_NotaFiscal_Cliente]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscal_Cliente] FOREIGN KEY([Cliente_Fornecedor])
REFERENCES [dbo].[Cliente_Fornecedor] ([ID])
GO
ALTER TABLE [dbo].[NotaFiscal] CHECK CONSTRAINT [FK_NotaFiscal_Cliente]
GO
/****** Object:  ForeignKey [FK_NotaFiscal_Pedido]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscal_Pedido] FOREIGN KEY([Pedido])
REFERENCES [dbo].[Pedido] ([ID])
GO
ALTER TABLE [dbo].[NotaFiscal] CHECK CONSTRAINT [FK_NotaFiscal_Pedido]
GO
/****** Object:  ForeignKey [FK_PedidoItem_Pedido1]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[PedidoItem]  WITH CHECK ADD  CONSTRAINT [FK_PedidoItem_Pedido1] FOREIGN KEY([FK_Pedido])
REFERENCES [dbo].[Pedido] ([ID])
GO
ALTER TABLE [dbo].[PedidoItem] CHECK CONSTRAINT [FK_PedidoItem_Pedido1]
GO
/****** Object:  ForeignKey [FK_PedidoItem_Produto]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[PedidoItem]  WITH CHECK ADD  CONSTRAINT [FK_PedidoItem_Produto] FOREIGN KEY([FK_Produto])
REFERENCES [dbo].[Produto] ([ID])
GO
ALTER TABLE [dbo].[PedidoItem] CHECK CONSTRAINT [FK_PedidoItem_Produto]
GO
/****** Object:  ForeignKey [FK_NotaFiscalItem_NotaFiscal]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[NotaFiscalItem]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalItem_NotaFiscal] FOREIGN KEY([NotaFiscal])
REFERENCES [dbo].[NotaFiscal] ([ID])
GO
ALTER TABLE [dbo].[NotaFiscalItem] CHECK CONSTRAINT [FK_NotaFiscalItem_NotaFiscal]
GO
/****** Object:  ForeignKey [FK_NotaFiscalItem_Produto]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[NotaFiscalItem]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalItem_Produto] FOREIGN KEY([Produto])
REFERENCES [dbo].[Produto] ([ID])
GO
ALTER TABLE [dbo].[NotaFiscalItem] CHECK CONSTRAINT [FK_NotaFiscalItem_Produto]
GO
/****** Object:  ForeignKey [FK_Contas_Receber_Caixa]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Contas_Receber]  WITH CHECK ADD  CONSTRAINT [FK_Contas_Receber_Caixa] FOREIGN KEY([FK_Caixa])
REFERENCES [dbo].[Caixa] ([ID])
GO
ALTER TABLE [dbo].[Contas_Receber] CHECK CONSTRAINT [FK_Contas_Receber_Caixa]
GO
/****** Object:  ForeignKey [FK_Contas_Receber_NotaFiscal1]    Script Date: 04/30/2014 19:14:41 ******/
ALTER TABLE [dbo].[Contas_Receber]  WITH CHECK ADD  CONSTRAINT [FK_Contas_Receber_NotaFiscal1] FOREIGN KEY([FKNotaFiscal])
REFERENCES [dbo].[NotaFiscal] ([ID])
GO
ALTER TABLE [dbo].[Contas_Receber] CHECK CONSTRAINT [FK_Contas_Receber_NotaFiscal1]
GO
