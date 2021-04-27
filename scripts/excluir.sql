CREATE OR ALTER PROCEDURE EXCLUIR 
as
declare variable titulo integer;
declare variable id_recebimentos integer;
declare variable id_socio integer;
declare variable vencimento date;
declare variable data_pag date;
declare variable status varchar(30);
declare variable valor_nf double precision;
declare variable valor_receber double precision;
declare variable parcela integer;
declare variable valor_1via double precision;
declare variable selecionou char(1);
declare variable valor_pago double precision;
declare variable valor_dif double precision;
declare variable lote integer;
declare variable situacao varchar(10);
declare variable tipo_doc varchar(2);
declare variable cobrador integer;
declare variable emissao date;
declare variable nome_socio varchar(80);
declare variable grupo char(1);
declare variable n_inscricao integer;
declare variable merda integer;
declare variable mensal integer;
declare variable trimestral integer;
declare variable pendente double precision;
BEGIN
  FOR
    select 
        cr.titulo,
        cr.id_recebimentos,
        cr.id_socio,
        cr.vencimento,
        cr.data_pag,
        cr.status,
        cr.valor_nf,
        cr.valor_receber,
        cr.parcela,
        cr.valor_1via,
        cr.selecionou,
        cr.valor_pago,
        cr.valor_dif,
        cr.lote,
        ob.situacao,
        cr.tipo_doc,
        cr.cobrador,
        cr.emissao,
        ob.nome_socio,
        ob.grupo,
        ob.n_inscricao,
        cr.codigo merda,
        ob.codigo mensal,
        ob.codigo_t trimestral,
        cr.valor_receber pendente
    from recebimentos cr
       inner join socios ob on (cr.id_socio = ob.id_socio)
    where 
       (
          (cr.emissao between '07/30/12' and '07/30/12')
       and 
          (cr.status = 'Pendente')
       and 
          (
             (cr.tipo_doc <> 'OB')
          or 
             (cr.tipo_doc is null )
          )
       and 
          (ob.situacao <> 'Inativo')
       and 
          (cr.situacao = 'Ativo')
       )
    order by 15, 19, 4
    INTO :TITULO,
         :ID_RECEBIMENTOS,
         :ID_SOCIO,
         :VENCIMENTO,
         :DATA_PAG,
         :STATUS,
         :VALOR_NF,
         :VALOR_RECEBER,
         :PARCELA,
         :VALOR_1VIA,
         :SELECIONOU,
         :VALOR_PAGO,
         :VALOR_DIF,
         :LOTE,
         :SITUACAO,
         :TIPO_DOC,
         :COBRADOR,
         :EMISSAO,
         :NOME_SOCIO,
         :GRUPO,
         :N_INSCRICAO,
         :MERDA,
         :MENSAL,
         :TRIMESTRAL,
         :PENDENTE
  DO
  BEGIN
   -- SUSPEND;
   delete from recebimentos where id_recebimentos = :id_recebimentos;
  END
END
