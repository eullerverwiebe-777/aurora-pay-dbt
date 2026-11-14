{{ config(materialized='table') }}

select
    transacao_id,
    cliente_id,
    data_transacao,
    valor_centavos,
    tipo,
    bandeira,
    parcelas,
    mcc,
    status
from {{ ref('stg_aurora__transacoes') }}