Power BI

components:
1. a report view
2. table / data view = excel type of data
3. Model view = creating connection or creating a model
4.  DAX Query view: DAX
5. Power Query Editor - 1
6. Visuals

### Power Query Editor
1. import mode : fast access
2. direct mode : live connection, Slow

Power Query Editor : it is mainly used for data transformation/cleaning

transformation: renaming, adding, deleting, checking, duplicate, null, groupby, extract, condition, string properties,  of Rows and columns 

there are 2 language in power
1. machine language 
2.  Power Bi desktop

## Working with multiple data sources / tables

if data is small
1. merging/ combining data
2. appending

if data is too large we do data modeling
1. combining data -> power query editor -> merge (horizontal), append(vertical)
2. Modeling data  -> model view

table
Eid| name| Age ->
             ->   Append  
Eid| name| Age ->
             ->  merge
Eid| role| salary ->



model view:

define: create relationship between table

type of data modeling or schema 
1. star schema
2. snowflake schema

star schema: 
when you start to connect table it will ether be in form of star or snowflake


table types
1. fact -> main table
2. dimension -> additional table

fact table are transactional tables where we record transactions it is also knows as attributes or detail containing table

---
DATE | CUSTOMER_ID | PRODUCT | QTY | PRICE | AMOUNT 
___
TRABSACTION [FACT TABLE]

---
Product | Name | MRP |

---
Additional [dimensional table]

---
Cardinality ratio
1. 1 : 1
2. 1 : * (M) -> 1 : many
3.  * : 1
4.  * : * (avoid)
---
### 4. DAX

DAX query view -> custom view on data

(data exploration)

---
### 5. report view

1. visualization pane: 
	1. common visuals:  card, table, matrix, column
		1. card: Ass
		2. table: excel
		3. matrix: pivert
		4. column: 
	2. ai victuals: Q&A, smart narrative, decompression



---