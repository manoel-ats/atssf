update recebimentos rec set mesano = udf_month(rec.vencimento)||udf_year(rec.vencimento)
where rec.status = 'Pendente' and rec.vencimento = '08/10/2010'