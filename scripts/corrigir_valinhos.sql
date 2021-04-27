update recebimentos set mesano = udf_month (recebimentos.vencimento)||udf_year (recebimentos.vencimento), recebimentos.caixa = 'extra'

where 
   (
      (recebimentos.tipo_doc = 'AV')
   and 
      (recebimentos.emissao between '09/01/16' and '10/01/16')
   and 
      (recebimentos.vencimento between '10/01/16' and '12/31/17')
   and 
      (recebimentos.status = 'Pendente')
   and
      (recebimentos.mesano <> udf_month (recebimentos.vencimento)||udf_year (recebimentos.vencimento) )

   )
