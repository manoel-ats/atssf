CREATE OR ALTER PROCEDURE SP_ANIVERSARIO (
    data_consulta date)
returns (
    nome varchar(100),
    data_nasc date,
    grupo char(2),
    inscricao integer,
    id_socio integer,
    idade integer,
    endereco varchar(150),
    bairro varchar(100),
    municipio varchar(100),
    cep varchar(10),
    uf varchar(2),
    tipo integer,
    descricao varchar(30))
as
declare variable mesnasc integer;
declare variable nome_socio varchar(100);
declare variable mescompara integer;
BEGIN
  /* write your code here */ 
  MESCOMPARA = UDF_MONTH(:data_consulta);
  for select a.NOME_DEP, UDF_MONTH(a.DTNASC) as MESNASC, a.DTNASC, a.ID_SOCIO, UDF_AGE(a.DTNASC) as IDADE , a.id_par , p.descricao
        FROM DEPENDENTE a 
        inner join parentesco p on p.id_par = a.id_par
       where a.FALECIDO <> 'S'   and a.DTNASC is not null
  into :nome, :MESNASC, :data_nasc, :id_socio, :idade  , :tipo , :DESCRICAO
  do begin
      select first 1 b.NOME_SOCIO, b.GRUPO, b.N_INSCRICAO, e.ENDERECO, e.ESTADO, e.CEP, f.BAIRRO, M.MUNICIPIO  
        from SOCIOS b 
        left outer join ENDERECO e on e.ID_SOCIO = b.ID_SOCIO
        left outer join BAIRRO f on f.ID_BAIRRO = e.ID_BAIRRO
        left outer join MUNICIPIO M on m.ID_MUNICIPIO = e.ID_MUNICIPIO


       where b.STATUS = 'A'
         and b.ID_SOCIO = :id_socio
         and e.TIPOEND = 0
       into :NOME_SOCIO, :GRUPO, :inscricao, :endereco, :UF, :CEP, :BAIRRO, :MUNICIPIO;
      
      if (not NOME_SOCIO is null) then 
      if (MESCOMPARA = MESNASC) then
         suspend;
  end      
END
