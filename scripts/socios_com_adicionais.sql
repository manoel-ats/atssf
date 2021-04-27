select distinct 
    socios.grupo,
    socios.n_inscricao,
    socios.plano,
    socios.nome_socio

from dependente
   inner join socios on (dependente.id_socio = socios.id_socio)
   where dependente.cobra_dep ='S'
   and socios.status ='A'
   order by socios.plano
