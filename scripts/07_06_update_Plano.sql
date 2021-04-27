set term ^;

update socios set PLANO = '7 FALECIMENTO' where TIPO_SOCIO = 'G' ^

commit ^

update socios set PLANO = 'MENSAL' where TIPO_SOCIO = 'M' ^

commit ^

update socios set PLANO = 'TRIMESTRAL' where TIPO_SOCIO = 'T' ^

commit ^

update socios set PLANO_ANT = '7 FALECIMENTO' where TIPO_SOCIO = 'G' ^

commit ^

update socios set PLANO_ANT = 'MENSAL' where TIPO_SOCIO = 'M' ^

commit ^

update socios set PLANO_ANT = 'TRIMESTRAL' where TIPO_SOCIO = 'T' ^

commit ^

