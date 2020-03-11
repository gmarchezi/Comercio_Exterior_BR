SELECT fato_exp_imp.exp_imp,fato_exp_imp.co_mes,fato_exp_imp.co_ano,
fato_exp_imp.qt_estat,fato_exp_imp.vl_fob ,dim_uf.sg_uf,dim_pais.no_pais,
dim_unid.no_unid, dim_via.no_via, dim_ncm.no_sh6_por
FROM fato_exp_imp

INNER JOIN dim_uf
ON fato_exp_imp.sg_uf_ncm = dim_uf.dim_cod_uf

INNER JOIN dim_pais
ON fato_exp_imp.co_pais = dim_pais.dim_cod_pais

INNER JOIN dim_unid
ON fato_exp_imp.co_unid = dim_unid.dim_cod_unid

INNER JOIN dim_via
ON fato_exp_imp.co_via = dim_via.dim_cod_via

INNER JOIN dim_urf
ON fato_exp_imp.co_urf = dim_urf.dim_cod_urf

INNER JOIN dim_ncm
ON fato_exp_imp.co_ncm = dim_ncm.dim_cod_ncm

