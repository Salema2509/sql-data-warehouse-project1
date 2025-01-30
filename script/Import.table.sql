*/  we use BULK INSERT command to impor full table for each table 

  -- Trunca a tabela para remover todos os dados existentes
TRUNCATE TABLE bronze.crm_cust_info;

-- Insere os dados do arquivo CSV na tabela
BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\Gervásio Mavungo\Videos\WITH BARAA TABELEAU AND SQL\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH (
    FIRSTROW = 2,        -- Ignora a primeira linha (cabeçalho)
    FIELDTERMINATOR = ',', -- Delimitador de campo
    TABLOCK              -- Bloqueia a tabela durante a inserção para melhor desempenho
);

TRUNCATE TABLE bronze.crm_prd_info;

 BULK INSERT bronze.crm_prd_info
 FROM C:'\Users\Gervásio Mavungo\Videos\WITH BARAA TABELEAU AND SQL\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
 WITH (
	 FIRSTROW = 2,
	 FIELDTERMINATOR = ',',
	 TABLOCK
 );

 -- Trunca a tabela para remover todos os dados existentes
TRUNCATE TABLE bronze.crm_prd_info;

-- Insere os dados do arquivo CSV na tabela
BULK INSERT bronze.crm_prd_info
FROM 'C:\Users\Gervásio Mavungo\Videos\WITH BARAA TABELEAU AND SQL\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (
    FIRSTROW = 2,        -- Ignora a primeira linha (cabeçalho)
    FIELDTERMINATOR = ',', -- Delimitador de campo
    TABLOCK              -- Bloqueia a tabela durante a inserção para melhor desempenho
);

SELECT COUNT(*) FROM bronze.crm_prd_info

 -- Trunca a tabela para remover todos os dados existentes
TRUNCATE TABLE bronze.crm_sales_details;

-- Insere os dados do arquivo CSV na tabela
BULK INSERT bronze.crm_sales_details
FROM'C:\Users\Gervásio Mavungo\Videos\WITH BARAA TABELEAU AND SQL\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv' 
WITH (
    FIRSTROW = 2,        -- Ignora a primeira linha (cabeçalho)
    FIELDTERMINATOR = ',', -- Delimitador de campo
    TABLOCK              -- Bloqueia a tabela durante a inserção para melhor desempenho
);

 -- Trunca a tabela para remover todos os dados existentes
TRUNCATE TABLE bronze.erp_cust_az12;

-- Insere os dados do arquivo CSV na tabela
BULK INSERT bronze.erp_cust_az12
FROM'C:\Users\Gervásio Mavungo\Videos\WITH BARAA TABELEAU AND SQL\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
WITH (
    FIRSTROW = 2,        -- Ignora a primeira linha (cabeçalho)
    FIELDTERMINATOR = ',', -- Delimitador de campo
    TABLOCK              -- Bloqueia a tabela durante a inserção para melhor desempenho
);

 -- Trunca a tabela para remover todos os dados existentes
TRUNCATE TABLE bronze.erp_loc_a101;

-- Insere os dados do arquivo CSV na tabela
BULK INSERT bronze.erp_loc_a101
FROM'C:\Users\Gervásio Mavungo\Videos\WITH BARAA TABELEAU AND SQL\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
WITH (
    FIRSTROW = 2,        -- Ignora a primeira linha (cabeçalho)
    FIELDTERMINATOR = ',', -- Delimitador de campo
    TABLOCK              -- Bloqueia a tabela durante a inserção para melhor desempenho
);

 -- Trunca a tabela para remover todos os dados existentes
TRUNCATE TABLE bronze.erp_px_cat_g1v2;

-- Insere os dados do arquivo CSV na tabela
BULK INSERT bronze.erp_px_cat_g1v2
FROM'C:\Users\Gervásio Mavungo\Videos\WITH BARAA TABELEAU AND SQL\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
WITH (
    FIRSTROW = 2,        -- Ignora a primeira linha (cabeçalho)
    FIELDTERMINATOR = ',', -- Delimitador de campo
    TABLOCK              -- Bloqueia a tabela durante a inserção para melhor desempenho
);
