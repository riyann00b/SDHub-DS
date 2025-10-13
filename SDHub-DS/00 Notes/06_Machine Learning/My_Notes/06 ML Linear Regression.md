continuation

$$ y = mx +c $$

y = Charge

x = Age


![simple linear Regression](https://online.stat.psu.edu/stat462/sites/onlinecourses.science.psu.edu.stat462/files/02simple/temps/index.jpg)

EDA + Identify target and Feature -> Data Preparation (scale, encoding etc) -> splitting -> training -> testing 


> [!NOTE] 
> We need 2D data (Features)
>  2D = more then one column
>  

to make 2d put them in ([[]])


by default ML take 2 columns

we can force it to take 1 column

importing libs

```python
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
```

```python
lin = LinearRegression
lin.fit(x_train, y_train)
```

```python
# single value prediction

lin.predict([[22]]) # Charges
```


---

Model evaluation / testing

X_test = 23 , Y_test = 2000

lin.predict([[23]]) -> Y_pred = 2100

Error = (Y_pred - Y_actual) -> distance / residual (Nothing but error / differance between actual value and predicted values)

example : bestfit line

![best fit distance](https://mathbitsnotebook.com/JuniorMath/Statistics/bestfitgraph.jpg)


---
# Regression
# Matrices
## Performance  Matrices

1. MAE (Mean absolute error): Average distance from the mean  (should be low)
2. Mean Squared Error (MSE): Average (distance)^2 squired (should be low)  
3. Root Mean Squared Error (RMSE): Average distance -> unit (should be low)
4. R^2 score: Explain variance in target (should be high)
	1. r^2 = 0.90 -> 90% variation 

```python
math.MSE
math.sqrd(MSE)
```

(give example and explain them give worst and best case)

---
## Model Evaluation
### Key Evaluation Metrics

The three main metrics for evaluating regression models are Mean Squared Error, Root Mean Squared Error, and R-squared score.

#### 1. Mean Squared Error (MSE)

MSE measures the average squared difference between predicted and actual values, useful for minimizing overall error.

**Formula:**

$$ \text{MSE} = \frac{1}{n} \sum_{i=1}^{n} (y_i - \hat{y}_i)^2 $$

Where:

- $y_i$ = Actual value
- $\hat{y}_i$ = Predicted value
- $n$ = Number of observations

**Implementation:**

```python
from sklearn.metrics import mean_squared_error

mse = mean_squared_error(y_test, y_pred)
print(f"Mean Squared Error: ${mse:,.2f}")
```

**Interpretation:**

- Lower MSE = Better model performance
- MSE penalizes larger errors more heavily (due to squaring)
- Units are squared (e.g., dollars squared), making interpretation less intuitive

---

#### 2. Root Mean Squared Error (RMSE)

RMSE is the square root of MSE, returning the metric to the scale of the target variable for easier interpretation.

**Formula:**

$$ \text{RMSE} = \sqrt{\text{MSE}} = \sqrt{\frac{1}{n} \sum_{i=1}^{n} (y_i - \hat{y}_i)^2} $$

**Implementation:**

```python
import numpy as np

rmse = np.sqrt(mse)
print(f"Root Mean Squared Error: ${rmse:,.2f}")
```

**Interpretation:**

- RMSE quantifies prediction accuracy in absolute terms using the same units as the target variable
- Example: RMSE of $4,500 means predictions are off by approximately $4,500 on average
- Easier to interpret than MSE

---

#### 3. R² Score (Coefficient of Determination)

The R² score indicates the proportion of variance in the dependent variable that is predictable from the independent variable, measuring how well the model explains data variability.

**Formula:**

$$ R^2 = 1 - \frac{\text{SS}_{\text{res}}}{\text{SS}_{\text{tot}}} = 1 - \frac{\sum_{i=1}^{n} (y_i - \hat{y}_i)^2}{\sum_{i=1}^{n} (y_i - \bar{y})^2} $$

Where:

- $\text{SS}_{\text{res}}$ = Sum of squared residuals
- $\text{SS}_{\text{tot}}$ = Total sum of squares
- $\bar{y}$ = Mean of actual values

**Implementation:**

```python
from sklearn.metrics import r2_score

r2 = r2_score(y_test, y_pred)
print(f"R² Score: {r2:.4f}")
```

**Interpretation:**

|R² Range|Interpretation|
|---|---|
|**0.0**|Model explains none of the variance|
|**0.5**|Model explains 50% of the variance|
|**0.8**|Model explains 80% of the variance (Good)|
|**1.0**|Perfect predictions (Rare in practice)|

> [!TIP] 
> #### **Rule of Thumb:**
> 
> - R² > 0.7 → Good model
> - R² between 0.5-0.7 → Moderate model
> - R² < 0.5 → Weak model (consider adding more features or trying non-linear methods)

---
 interview quesrion

rmse vs mse

feature vs target

---

best fit learn vitulized

![[Actual vs Predicted.png]]

