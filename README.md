# Data Warehouse de Vendas de Retalho: SQL e Power BI

> Do Excel ao dashboard: normalização até à 3FN, modelo E-R em MySQL, ETL, data mart em estrela e KPIs em DAX no Power BI.

**Mestrado em Business Intelligence & Analytics (ISCAP)**, cadeira de Bases de Dados e Data Warehouse, 2025/26

## O problema
Transformar um dataset transacional de vendas (clientes, género, faixa etária, categoria de produto, quantidades e valores) num **data mart** capaz de responder a perguntas de negócio:
- Em que meses e dias da semana as vendas são mais fortes?
- Qual é o valor médio por transação?
- Que segmentos de clientes e categorias concentram a receita (análise de Pareto)?

## O que foi feito
1. **Normalização** 1FN → 2FN → 3FN.
2. **Modelo E-R** em MySQL Workbench (`sql/modelo_er.mwb`) e criação das tabelas em SQL (`sql/01_create_tables.sql`).
3. **ETL** dos ficheiros de origem para o modelo relacional.
4. **Data warehouse em estrela**: tabela de factos de transações, dimensões de cliente, produto e faixa etária, e uma dimensão temporal criada de raiz.
5. **Medidas DAX**: KPIs principais, inteligência temporal, comportamento do cliente, estatística e Pareto.
6. **Dashboard Power BI** com a interpretação dos resultados no relatório.

## Estrutura
```
sql/              modelo E-R e script de criação das tabelas
data/raw/         dataset original
data/normalized/  tabelas normalizadas (CSV)
powerbi/          dashboard (.pbix)
docs/             relatório completo
```

## Stack
`MySQL` · `MySQL Workbench` · `SQL` · `Power BI` · `DAX` · `Modelação dimensional`

## Autores
Trabalho de grupo. João Coelho, com colegas do mestrado.
