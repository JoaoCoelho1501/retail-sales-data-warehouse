# Retail Sales Data Warehouse — SQL & Power BI

A retail analytics project covering the journey from transactional source data to a relational model, a dimensional data mart, and a Power BI reporting layer.

**Academic context:** MSc in Business Intelligence & Analytics, ISCAP (2025/26)  
**Author contribution:** João Coelho, as part of a group project

## Project overview

The objective is to transform transactional retail data into a structured analytical model that supports business questions about sales performance, customer segments, product categories, and purchasing patterns.

## Solution workflow

1. **Relational modelling:** normalize the source structure up to Third Normal Form (3NF).
2. **Entity–relationship design:** create the relational model in MySQL Workbench.
3. **SQL implementation:** define tables, primary keys, foreign keys, and relationships.
4. **ETL:** prepare and load source data into the relational structure.
5. **Dimensional modelling:** build a star-schema data mart with a sales fact table and descriptive dimensions.
6. **Reporting:** develop DAX measures and a Power BI dashboard for business analysis.

## Business questions

The analytical layer is designed to investigate:

- Which months and weekdays generate the highest sales?
- What is the average transaction value?
- Which customer segments and product categories contribute most to revenue?
- How concentrated is revenue across categories (Pareto analysis)?

## Technology stack

- **Database:** MySQL
- **Data modelling:** MySQL Workbench, ER modelling, normalization
- **Analytics:** SQL, dimensional modelling, star schema
- **Reporting:** Power BI and DAX

## Repository structure

```text
.
├── sql/
│   ├── 01_create_tables.sql
│   └── modelo_er.mwb
├── data/
│   ├── raw/
│   └── normalized/
├── powerbi/
│   └── retail_sales_dw.pbix
└── docs/
    └── project report
```

## Getting started

1. Review the entity–relationship model in `sql/modelo_er.mwb`.
2. Create the target MySQL schema and adapt the schema name in the SQL script if needed.
3. Run `sql/01_create_tables.sql` to create the relational tables.
4. Load and transform the source data according to the ETL process documented in the project report.
5. Open the Power BI file in Power BI Desktop and configure the data connections for your environment.

## Data and reproducibility

The repository includes the project model, SQL implementation, Power BI report, and supporting documentation. File paths and database connection settings may need to be adapted locally. The dashboard depends on the corresponding data model and loaded data.

## Scope and limitations

This is an academic group project. The repository documents the implemented workflow and the author's participation; it should not be interpreted as a production deployment. For a professional handover, database credentials, connection settings, and data refresh procedures should be configured separately for the target environment.
