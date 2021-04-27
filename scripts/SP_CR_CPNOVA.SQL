CREATE PROCEDURE SP_CR_CP (
    pdata1 date,
    pdata2 date,
    pgrupo varchar(20),
    psituacao varchar(10),
    ptipoconta varchar(10),
    pcodigocliente integer,
    pcontrato varchar(10),
    prua integer,
    pbairro varchar(80),
    pcompl varchar(15))
returns (
    codigolancamento integer,
    mesvencimento integer,
    anovencimento integer,
    mesano varchar(10),
    dtarep varchar(10),
    valorreceita double precision,
    valordespesa double precision,
    valortotal double precision,
    grupoconta varchar(20),
    situacaoconta varchar(10),
    forma varchar(30),
    historico varchar(40),
    nomecliente varchar(60),
    nomepro varchar(60),
    numerocontrato varchar(10),
    endereco varchar(50),
    codigodoimovel integer,
    codigodoinquilino integer,
    codigodoproprietario integer,
    nparcela integer,
    totalparcelas integer,
    parcelas varchar(20),
    diadopagamento varchar(2),
    datarecebimento date,
    prazopararepasse integer,
    pago double precision,
    troco double precision,
    valordoaluguel double precision,
    bairroimovel varchar(80),
    complimovel varchar(15),
    rselecionou char(1))
as
declare variable vcodigo integer;
declare variable vmesano varchar(8);
declare variable vvencimento integer;
declare variable vdatarepasse varchar(10);
declare variable vdata date;
declare variable vdiarep integer;
declare variable vmes integer;
declare variable vdia integer;
declare variable vano integer;
begin
    /* Procedure Text */
    valortotal = 0;
  if (pgrupo = 'Inquilino') then
  begin
    for select distinct l.cod_inquilino, udf_month(l.vencimento), udf_year(l.vencimento),
                        l.cod_imalu , l.GRUPO, l.STATUS,
                        i.NOME_INQUILINO, p.nome_proprietario, h.COD_IMOBILIARIA, c.RUA, h.diapgto,
                        l.DATAPAGTO, h.prazo_repasse, l.valorpago, l.valortroco, h.bairro, h.compl, l.selecionou
             from lancamentos l
             left outer join imovel_aluguel h on h.cod_imalu = l.cod_imalu
             left outer join inquilinos i on i.cod_inquilino = h.cod_inquilino
             left outer join proprietarios p on p.cod_proprietario = h.cod_proprietario
             left outer join CEP c on c.COD_CEP = h.cod_endereco
           where (l.VENCIMENTO between :pdata1 and :pdata2)
             and (l.grupo = :pGrupo)
             and ((l.status = :psituacao) or (:psituacao = 'todosstatu'))
             and ((l.tipoconta = :ptipoconta) or (:ptipoconta = 'todostipos'))
             and ((l.cod_inquilino = :pcodigocliente) or (:pcodigocliente = 9999999))
             and ((h.COD_IMOBILIARIA = :pContrato) or (:pContrato = 'todoscontr'))
             and ((c.cod_cep = :pRua) or (:pRua = 9999999))
             and ((h.bairro = :pbairro) or (:pbairro = 'todos os bairros'))
             and ((h.compl = :pcompl) or (:pcompl = 'todocomplemento'))
             and (h.ALUGADO = 'S')
             and (i.SITUACAO = 'A')
    into :codigodoinquilino, :mesvencimento, :anovencimento ,:codigodoimovel, :grupoconta, :situacaoconta,
       :nomecliente, :nomepro, :numerocontrato, :endereco, :diadopagamento, :datarecebimento, :prazopararepasse,
       :pago , :troco, :bairroimovel, :complimovel, :rselecionou
    do begin

       if (mesvencimento = 2) then
       begin
         if (diadopagamento > 28) then
            diadopagamento = '28';
       end

       mesano =  mesvencimento || '/' || diadopagamento || '/' || anovencimento;

       vdata = udf_incday(cast(mesano as date), prazopararepasse);

       mesano =  diadopagamento || '/' || mesvencimento || '/' || anovencimento;

       dtarep = cast(udf_day(vdata) as varchar(2)) || '/' ||
                cast(udf_month(vdata) as varchar(2)) || '/' ||
                cast(udf_year(vdata) as varchar(4));

        -- Retorna receita de cada inquilino por mes
       select sum(case when l.tipoconta = 'Receita' then l.VALOR else 0 end),
            l.FORMAPGTO_RECEBTO, l.N_DOCUMENTO
           from lancamentos l
           where (udf_month(l.VENCIMENTO) = :mesvencimento)
             and (udf_year(l.VENCIMENTO) = :anovencimento)
             and (l.tipoconta = 'Receita')
             and (l.cod_inquilino = :codigodoinquilino)
             and (l.cod_imalu = :codigodoimovel)
            group by l.FORMAPGTO_RECEBTO, l.N_DOCUMENTO
       into :valorreceita, :forma, :historico;
       if (valorreceita is null) then
          valorreceita = 0;

      -- Retorna despesas de cada inquilino por mes
       select sum(case when l.tipoconta = 'Despesa' then l.VALOR else 0 end),
           l.FORMAPGTO_RECEBTO, l.N_DOCUMENTO
           from lancamentos l
           where (udf_month(l.VENCIMENTO) = :mesvencimento)
             and (udf_year(l.VENCIMENTO) = :anovencimento)
             and (l.tipoconta = 'Despesa')
             and (l.cod_inquilino = :codigodoinquilino)
             and (l.cod_imalu = :codigodoimovel)
          group by l.FORMAPGTO_RECEBTO, l.N_DOCUMENTO
       into :valordespesa, :forma, :historico;

       if (valordespesa is null) then
          valordespesa = 0;

       valortotal = valortotal + (valordespesa - valorreceita);

       select first 1 l.PARCELA, l.VALOR from lancamentos l
             where (udf_month(l.VENCIMENTO) = :mesvencimento)
             and (udf_year(l.VENCIMENTO) = :anovencimento)
             and (l.cod_contas = 1)
             and (l.cod_inquilino = :codigodoinquilino)
             and (l.cod_imalu = :codigodoimovel)
          into :nparcela, :valordoAluguel;

      select max(l.PARCELA) from lancamentos l
             where (l.cod_contas = 1)
             and (l.cod_inquilino = :codigodoinquilino)
             and (l.cod_imalu = :codigodoimovel)
          into :totalparcelas;
          parcelas = cast(nparcela as varchar(4)) || '/' || cast(totalparcelas as varchar(4));

      suspend;
      valortotal = 0;
    end
  end

  if (pgrupo = 'Proprietario') then
  begin
    for select distinct l.cod_proprietario, udf_month(l.vencimento), udf_year(l.vencimento),
                        cast(udf_month(l.vencimento) as varchar(2)) || '/' ||
                        cast(h.diapgto as varchar(2)) || '/' ||
                        cast(udf_year(l.vencimento) as varchar(4)),
                        l.cod_imalu , l.GRUPO, l.STATUS, l.FORMAPGTO_RECEBTO, l.N_DOCUMENTO,
                        i.NOME_INQUILINO, p.nome_proprietario, h.COD_IMOBILIARIA, c.RUA, h.diapgto,
                        l.DATAPAGTO, h.prazo_repasse, l.valorpago, l.valortroco, h.bairro, h.compl, l.selecionou
             from lancamentos l
             left outer join imovel_aluguel h on h.cod_imalu = l.cod_imalu
             left outer join inquilinos i on i.cod_inquilino = h.cod_inquilino
             left outer join proprietarios p on p.cod_proprietario = h.cod_proprietario
             left outer join CEP c on c.COD_CEP = h.cod_endereco
           where (l.VENCIMENTO between :pdata1 and :pdata2)
             and (l.grupo = :pGrupo)
             and ((l.status = :psituacao) or (:psituacao = 'todosstatu'))
             and ((l.tipoconta = :ptipoconta) or (:ptipoconta = 'todostipos'))
             and ((l.cod_proprietario = :pcodigocliente) or (:pcodigocliente = 9999999))
             and ((h.COD_IMOBILIARIA = :pContrato) or (:pContrato = 'todoscontr'))
             and ((c.cod_cep = :pRua) or (:pRua = 9999999))
             and ((h.bairro = :pbairro) or (:pbairro = 'todos os bairros'))
             and ((h.compl = :pcompl) or (:pcompl = 'todocomplemento'))
             and (h.ALUGADO = 'S')
             and (i.SITUACAO = 'A')
    into :codigodoproprietario, :mesvencimento, :anovencimento, :vdatarepasse ,:codigodoimovel, :grupoconta, :situacaoconta, :forma,
       :historico, :nomecliente, :nomepro, :numerocontrato, :endereco, :diadopagamento, :datarecebimento, :prazopararepasse,
       :pago , :troco, :bairroimovel, :complimovel, :rselecionou
    do begin
       if (mesvencimento = 2) then
       begin
         if (diadopagamento > 28) then
            diadopagamento = '28';
       end

       mesano =  mesvencimento || '/' || diadopagamento || '/' || anovencimento;

       vdata = udf_incday(cast(mesano as date), prazopararepasse);

       mesano =  diadopagamento || '/' || mesvencimento || '/' || anovencimento;

       dtarep = cast(udf_day(vdata) as varchar(2)) || '/' ||
                cast(udf_month(vdata) as varchar(2)) || '/' ||
                cast(udf_year(vdata) as varchar(4));

        -- Retorna receita de cada Proprietario por mes
       select sum(case when l.tipoconta = 'Receita' then l.VALOR else 0 end)
           from lancamentos l
           where (udf_month(l.VENCIMENTO) = :mesvencimento)
             and (udf_year(l.VENCIMENTO) = :anovencimento)
             and (l.tipoconta = 'Receita')
             and (l.cod_proprietario = :codigodoproprietario)
             and (l.cod_imalu = :codigodoimovel)
       into :valorreceita;
       if (valorreceita is null) then
          valorreceita = 0;

      -- Retorna despesas de cada Proprietario por mes
       select sum(case when l.tipoconta = 'Despesa' then l.VALOR else 0 end)
           from lancamentos l
           where (udf_month(l.VENCIMENTO) = :mesvencimento)
             and (udf_year(l.VENCIMENTO) = :anovencimento)
             and (l.tipoconta = 'Despesa')
             and (l.cod_proprietario = :codigodoproprietario)
             and (l.cod_imalu = :codigodoimovel)
       into :valordespesa;

       if (valordespesa is null) then
          valordespesa = 0;

       valortotal = valortotal + (valorreceita - valordespesa);

       select first 1 l.PARCELA, l.VALOR from lancamentos l
             where (udf_month(l.VENCIMENTO) = :mesvencimento)
             and (udf_year(l.VENCIMENTO) = :anovencimento)
             and (l.cod_contas = 2)
             and (l.cod_proprietario = :codigodoproprietario)
             and (l.cod_imalu = :codigodoimovel)
          into :nparcela, :valordoAluguel;

      select max(l.PARCELA) from lancamentos l
             where (l.cod_contas = 2)
             and (l.cod_proprietario = :codigodoproprietario)
             and (l.cod_imalu = :codigodoimovel)
          into :totalparcelas;

          parcelas = cast(nparcela as varchar(4)) || '/' || cast(totalparcelas as varchar(4));

      suspend;
      valortotal = 0;
    end
  end

end
