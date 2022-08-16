select * from deca.t_vendas
limit 10

select cd_ordem_venda, cd_produto from deca.t_vendas tv 
limit 10

select cd_ordem_venda, realizado  from  deca.t_vendas 
limit 10

select (cd_ordem_venda-200), (realizado+20) from  deca.t_vendas 
limit 10

select cd_ordem_venda, realizado*10 as valor_ajustado from deca.t_vendas tv 
limit 10 

select * from deca.t_vendas tv where realizado > 300.00

select * from deca.t_vendas tv order by realizado asc
limit 10

select cd_ordem_venda, realizado from deca.t_vendas where realizado > 500
limit 200

select cd_ordem_venda, realizado 
from deca.t_vendas where realizado 
between 1000 and 5000

select * from "large".tb_resultado_comercial trc 
limit 50 

select distinct gerente_nacional  from "large".tb_resultado_comercial trc 
-- select unique  gerente_nacional  from "large".tb_resultado_comercial trc 
select bairro, cidade 
from "large".tb_resultado_comercial trc 
where cidade like 'B%';

select bairro, cidade 
from "large".tb_resultado_comercial trc 
where cidade like '%AR%';

select bairro, cidade 
from "large".tb_resultado_comercial trc 
where cidade like '%LLE';

select bairro, cidade 
from "large".tb_resultado_comercial trc 
where cidade like '_N%';

select bairro, cidade 
from "large".tb_resultado_comercial trc 
where cidade like '__C%';

select bairro, cidade 
from "large".tb_resultado_comercial trc 
where cidade like 'R_C%';

select valor_receita_liquida, cidade 
from "large".tb_resultado_comercial trc where valor_receita_liquida 
between 3000 and 5000 and cidade like '%LLE';

select cliente_filho, cliente_pai, valor_receita_liquida 
from "large".tb_resultado_comercial trc order by valor_receita_liquida asc; 

select cliente_filho, cliente_pai, valor_receita_liquida 
from "large".tb_resultado_comercial trc 
where valor_receita_liquida > 3000

select cliente_filho, cliente_pai, valor_receita_liquida 
from "large".tb_resultado_comercial trc
limit 50

select cd_ordem_venda, realizado*10 as valor_ajustado, realizado*20 as valor_ajustado_2  
from deca.t_vendas tv 
limit 10 

select cliente_filho, codigo_estado  
from "large".tb_resultado_comercial trc 
where cidade like '%BOI%';

select cliente_filho, gerente_nacional, valor_receita_liquida
from "large".tb_resultado_comercial trc
where gerente_nacional like '%HA%'
-- and gerente_nacional like '%HA%' 
-- gerente_nacional like '%NK%'  and
and valor_receita_liquida > 1000

select gerente_nacional
from "large".tb_resultado_comercial trc
where gerente_nacional like 'F%\C%'
-- where gerente_nacional like 'F%\C%\%HA%'
-- and gerente_nacional like 'C%'
-- and gerente_nacional like '%HA%' 
-- gerente_nacional like '%NK%'  and
-- and valor_receita_liquida > 1000
