# data science roadmap:

## requirement 
DA
1. Excel : A fundamental tool
2. Business intelligence : BI tools like Power BI
3. Mathamatics: statistics 
4. Programing: Python, R
---
DS
1. Python for DS + (EDA, ML, DL, NLP) improtent is ML
---

### Quick Revision:

1. Excel:
	1. Get Data 
		1. within workbook
		2. import(data -> get data -> select data source -> lord)
	2. Working with Table
		1. Data Cleaning or Preparation
			1. Workbook
				+ ### workbook (table)
				+ control + T
				+ Function / Formulas
				+ conditional formatting
				+ sorting / filtering
				+ Rename / datatype
				
			2.  Power Query Editor (transform)
			3. Function and Formulas:
				1. Aggregate fucntion
					1. max()
					2. min()
					3. count()
					4. maxif()
					5. countif()
				2. Text Base formula
					1. Lower()
					2. Proper()
					3. len()
					4. left()
					5. count()
					6. trim()
				3. Date Formulas:
					1. data(), 
					2. Year(), 
					3. datedif(), 
					4. text()
				4. Additional
					1. vlookup()
					2. hlookup()
					3. index-match
					4. if-else
				5. excel formulas which are good to know
					1. Text to column
					2. data valiidation
					3. paste Speial
					4. clear
			4. Large data
				1. pivot table
					- Group
					- aggregate
				2. slicer -> connect pivots
				3. pivot chart and formatting
				4. dshboard

---

## Power BI

> [!IMPORTENT] 
> Excel vs BI

1. Excel vs BI 
	1. data size
	2. data source
	3. sharing
2. Power BI versions
	1. Desktop : Building report
	2. service : Vieing colaburation
	3. mobile : viewing
3. Power Component
	1. Views:
		1. Report view
		2. model view (Power pivot / data modelling)
		3. table and data view 
		4. Dex Query -> custom view using expresions
		5. TMDL -> raw view of your table'
	2. Power Query Editor
	3. Virtualisation
		1. Basic 
			1. card 
			2. column
		2. AI
			1. Q&A
			2. Smart narrative 
		3. Custom
			1. Python Visual
	4. Data Modelling (Model view)
		1. Star Schema: (all tables connected to Fact Table and dimension)
		2. SnowFlack Schame;(all tables are not directly connected to Fact Table and dimension)
	5. DAX language
		1. measure: in dax measure Aggrigate anda calculation (doesnt increase file size)
		2. column - row level calculation
		3. table - 
	6. Advanced Topic:
		1. Tool tip
		2. Page Navigation
		3. Row level security
	7. Top 10 formula for DEX which will be asked in interview

---
## SQL (Structured Query Language)

Purpose : Software Dev: backend (data defination and validation) / data analyasis

languages
1. DDL (deal with structure) data defination lanague : Create
2. DML (Importent) (works on data) : Insert
3. DCL (Acess) : current
4. TCL (Recoard / Transaction) : commit
5. DQL (Fetch) : Select

Drop vs truncate vs delete

| **Drop**     | **truncate**  | **Delete** |
| ------------ | ------------- | ---------- |
| part of DDL  | part of DDL   | delete row |
| entire table | data          | based on   |
| structure    | not structure | condition  |

### DDL

key constraints (Rules)
1. Unique Key (allows Null)
2. primary Key (not allow Null values)
3. foreign key (to connect 2 table)
4. Not Null
5. Default 
6. check (custom rules Regex)

### Data Types
1. int
2. double (less size)
3. var char
4. float (bigger size)

### SQL statement (same sequence while writing DML Scripts)

1. Select -> selects Fields : As, Distinct
2. From -> select table : 
3. Where -> Filter table  data : Like between <>= IN
4. Groupby -> groupby and aggregate : 
5. Having -> filter grouped data :
6. Orderby -> sort the data :
7. Limit -> fix rows count :

### Working with multiple tables

1. Nested Query: 
```sql

--- example and structure of writing

Select ---
From ---
Where condition (select - conditions);
```

2. Joints
	1. Left
	2. Right , cross , self
	3. Innter
	4. Outer

```SQL
Select  T1.C, T2.C
From
On
```

### Advanced 
1. Windows Function (Analytical Function)
	1. Row Level calculation (But running total can be applied Row_number(), rank(), Dense_rank()
	2. CTE (common table Expression): saves output table temporarily 
		1. Rank() over (orderbby col as())
		2. ```SQL
		   with cte_name as 
		   (
		   select From
		   )
		   select from CTE_name where conut;
			```

Addition 

Views  (Logical tables)


---

## Python Programming  

a =  5
 1. a : identififer
	 1. -, l
 2. =: oparator
	 1. +-/*<>
 3. 5: Data type
	 1. basic
		 1. int , float, strings
		 2. squantial cndition
	 2. collection
		 1. list, tuple set dict
		 2. loop sequalical and condition
	 3. Fuction : def (anywhere), lambda - 1. operation  2. binaty
	 4. OOPs: Objected oriented 
		 1. class
		 2. object
		 3. altribute
		 4. method
		 OPPs properties
		 5. inheritance
		 6. polymorphism
		 7. encapsulation
		 8. abstraction
4. EDA  (Exploratory Data Analysis)
	1. Numpy -> array 1D, 2D, 3D (Indexing and opration(numaric, states, authamatucs))
	2. Padas -> series , data frame (Basic function , grouby , pivot table cross tabs)
	3. matplotlib -> basic (plt.plot plotname () hist())
	4. seaborn -> advanced Advanced Plonameplot() histplot()
	5. Scipykit -> statistics and math

