update recebimentos set mesano = udf_month (recebimentos.vencimento)||udf_year (recebimentos.vencimento), recebimentos.caixa = 'diferenciado'

where 
   (
      (recebimentos.tipo_doc = 'AV')
   and 
      (recebimentos.emissao between '11/01/16' and '11/10/16')
   and 
      (recebimentos.vencimento between '10/01/16' and '12/31/17')

   and
      (recebimentos.mesano <> udf_month (recebimentos.vencimento)||udf_year (recebimentos.vencimento) )

   )
