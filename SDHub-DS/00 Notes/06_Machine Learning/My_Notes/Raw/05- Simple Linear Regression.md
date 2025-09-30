Machine learning
1. Supervised
	1. Classification (target output)
		1. categorical value
		2. discrete number
	2. Regression (target output)
		1. continues value
2. Unsupervised

# Supervised machine learning

## Regression 

| Age |          Charges          |
| :-: | :-----------------------: |
| 23  |           1000            |
| 24  |           1200            |
| 23  |           1000            |
| 25  |           1500            |
| 28  |           1700            |
| 50  |           2500            |
| 32  | ? -> target is continuous |
relationship -> scatter plot 

regression -> relation between two columns or target and features  


> [!NOTE] 
> When the target is given its always supervised machine learning

regression :

linegraph of charges and age 

charges range from 1000 to 2500 and Age range from 20 - 50

best-fit line

if we have have a line we can solve with liner regression  otherwise we cannot solve with liner regression

line should downward or upward 

line made by measuring all the distance of point in the line-graph

mean line (average of distance)

$$ 
y = mx + c
$$

y = depended variable target
m = slope
x = independent variable feature
c = inter

what is the rate of charges increasing

what is the minimum charges eg 0 age baby

mathematical equation and relations

---

Types of Regression
1. Regression liner
	1. simple liner Regression (single independent variable)
		1. $$ MX + C $$
	2. Multiple liner Regression  (Multiple Independent variable)
		1. $$ Y = mx1 + mx2 + mx3 ... + c $$
	3. Polynomial Liner Regression  (when non liner relationstip)
		1. $$ y = m1x1 + m2x^22 + .... + c $$

add linegraphs for all of them

---

Steps for building a Model in python code
libs = 
sciketlearn (from sklearn.model.selection import test_train_split)
from sklearn.liner_model import liner Regression

1. Basic EDA + data preparation
2. Identify target and features
3. splite data in 80 : 20 test train
4. train model using training data 80
5. evaluate and test using test data

---





