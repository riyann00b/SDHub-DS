# CardioGoodFitness EDA Complete Guide

## Table of Contents
1. [Dataset Overview](#dataset-overview)
2. [Question-by-Question Analysis](#question-by-question-analysis)
3. [Business Insights & Customer Profiling](#business-insights--customer-profiling)
4. [Code Explanations](#code-explanations)

---

## Dataset Overview

### Dataset Information
- **Rows**: 180 customers
- **Columns**: 9 variables
- **Missing Values**: None (clean dataset)

### Variables Description
| Variable | Type | Description |
|----------|------|-------------|
| Product | Categorical | Treadmill model (TM195, TM498, TM798) |
| Age | Numerical | Customer age in years (18-50) |
| Gender | Categorical | Male/Female |
| Education | Numerical | Years of education (12-21) |
| MaritalStatus | Categorical | Single/Partnered |
| Usage | Numerical | Expected weekly usage (2-7 times) |
| Fitness | Numerical | Self-rated fitness (1-5 scale) |
| Income | Numerical | Annual income ($29,562-$104,581) |
| Miles | Numerical | Expected miles to run (21-360) |

### Code Block 1: Data Loading and Initial Exploration
```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

# Load the dataset
df = pd.read_csv('Dataset/CardioGoodFitness.csv')

# Basic Dataset Overview
print(f"Dataset Shape: {df.shape}")
print(f"Columns: {list(df.columns)}")
print(df.head())
print(df.info())
print(df.describe())
print(df.isnull().sum())
```

**What this does:**
- Imports necessary libraries for data analysis and visualization
- Loads the CSV file into a pandas DataFrame
- Shows dataset dimensions, column names, first 5 rows
- Provides data types and memory usage information
- Generates statistical summary for numerical variables
- Checks for missing values

---

## Question-by-Question Analysis

### Question 1: How many models does the store have?

#### Code Explanation:
```python
unique_models = df['Product'].unique()
num_models = len(unique_models)
print(f"Number of models: {num_models}")
print(f"Models available: {list(unique_models)}")
```

**What this does:**
- `df['Product'].unique()` - Gets all unique values in the Product column
- `len(unique_models)` - Counts the number of unique models
- Prints the count and list of available models

#### Answer:
**3 models available: TM195, TM498, TM798**

---

### Question 2: Which is the most sold model?

#### Code Explanation:
```python
model_sales = df['Product'].value_counts()
print("Sales by Model:")
print(model_sales)
print(f"\nMost sold model: {model_sales.index[0]} ({model_sales.iloc[0]} units)")

# Visualization
plt.figure(figsize=(10, 6))
plt.subplot(1, 2, 1)
model_sales.plot(kind='bar', color='skyblue')
plt.title('Sales by Model')
plt.xlabel('Model')
plt.ylabel('Number of Sales')
plt.xticks(rotation=0)

plt.subplot(1, 2, 2)
plt.pie(model_sales.values, labels=model_sales.index, autopct='%1.1f%%')
plt.title('Market Share by Model')
plt.tight_layout()
plt.show()
```

**What this does:**
- `value_counts()` - Counts occurrences of each model
- `.index[0]` and `.iloc[0]` - Gets the most frequent model and its count
- Creates a bar chart and pie chart for visual representation
- `plt.subplot()` - Creates multiple plots in one figure
- `autopct='%1.1f%%'` - Shows percentages in pie chart

#### Answer:
**TM195 is the most sold model with 80 units (44.4% market share)**

---

### Question 3: Are male customers buying treadmills more than female customers?

#### Code Explanation:
```python
gender_sales = df['Gender'].value_counts()
print("Sales by Gender:")
print(gender_sales)
print(f"\nPercentage distribution:")
for gender, count in gender_sales.items():
    print(f"{gender}: {count/len(df)*100:.1f}%")

# Visualization
plt.figure(figsize=(12, 5))
plt.subplot(1, 2, 1)
gender_sales.plot(kind='bar', color=['lightcoral', 'lightblue'])
plt.title('Sales by Gender')
plt.xlabel('Gender')
plt.ylabel('Number of Sales')
plt.xticks(rotation=0)

plt.subplot(1, 2, 2)
plt.pie(gender_sales.values, labels=gender_sales.index, autopct='%1.1f%%')
plt.title('Gender Distribution')
plt.tight_layout()
plt.show()
```

**What this does:**
- Counts sales by gender using `value_counts()`
- Calculates percentage distribution using `count/len(df)*100`
- Creates bar and pie charts with different colors for gender
- Uses `.items()` to iterate through gender counts

#### Answer:
**Yes, male customers (104 customers, 57.8%) are buying more treadmills than female customers (76 customers, 42.2%)**

---

### Question 4: What is the Income, Age, Education of people buying treadmills?

#### Code Explanation:
```python
print("AGE STATISTICS:")
print(f"Mean Age: {df['Age'].mean():.1f} years")
print(f"Median Age: {df['Age'].median():.1f} years")
print(f"Age Range: {df['Age'].min()} - {df['Age'].max()} years")

print("\nINCOME STATISTICS:")
print(f"Mean Income: ${df['Income'].mean():.0f}")
print(f"Median Income: ${df['Income'].median():.0f}")
print(f"Income Range: ${df['Income'].min()} - ${df['Income'].max()}")

print("\nEDUCATION STATISTICS:")
print(f"Mean Education: {df['Education'].mean():.1f} years")
print(f"Median Education: {df['Education'].median():.1f} years")
print(f"Education Range: {df['Education'].min()} - {df['Education'].max()} years")

# Visualization
plt.figure(figsize=(15, 5))

plt.subplot(1, 3, 1)
plt.hist(df['Age'], bins=15, color='lightgreen', alpha=0.7, edgecolor='black')
plt.title('Age Distribution')
plt.xlabel('Age (years)')
plt.ylabel('Frequency')
plt.axvline(df['Age'].mean(), color='red', linestyle='--', label=f'Mean: {df["Age"].mean():.1f}')
plt.legend()

plt.subplot(1, 3, 2)
plt.hist(df['Income'], bins=15, color='lightcoral', alpha=0.7, edgecolor='black')
plt.title('Income Distribution')
plt.xlabel('Income ($)')
plt.ylabel('Frequency')
plt.axvline(df['Income'].mean(), color='red', linestyle='--', label=f'Mean: ${df["Income"].mean():.0f}')
plt.legend()

plt.subplot(1, 3, 3)
plt.hist(df['Education'], bins=10, color='lightblue', alpha=0.7, edgecolor='black')
plt.title('Education Distribution')
plt.xlabel('Education (years)')
plt.ylabel('Frequency')
plt.axvline(df['Education'].mean(), color='red', linestyle='--', label=f'Mean: {df["Education"].mean():.1f}')
plt.legend()

plt.tight_layout()
plt.show()
```

**What this does:**
- Uses `.mean()`, `.median()`, `.min()`, `.max()` for descriptive statistics
- `:.1f` and `:.0f` format numbers to 1 decimal and 0 decimals respectively
- `plt.hist()` creates histograms with specified bins and colors
- `alpha=0.7` makes bars semi-transparent
- `plt.axvline()` adds vertical line for mean value
- `edgecolor='black'` adds black borders to bars

#### Answer:
- **Age**: Mean 28.8 years, Range 18-50 years
- **Income**: Mean $53,720, Range $29,562-$104,581  
- **Education**: Mean 15.6 years, Range 12-21 years

---

### Question 5: How many days and miles do customers expect to run on treadmills?

#### Code Explanation:
```python
print("USAGE STATISTICS (Days per week):")
print(f"Mean Usage: {df['Usage'].mean():.1f} times/week")
print(f"Median Usage: {df['Usage'].median():.1f} times/week")
print(f"Usage Range: {df['Usage'].min()} - {df['Usage'].max()} times/week")

print("\nMILES STATISTICS:")
print(f"Mean Miles: {df['Miles'].mean():.1f} miles")
print(f"Median Miles: {df['Miles'].median():.1f} miles")
print(f"Miles Range: {df['Miles'].min()} - {df['Miles'].max()} miles")

# Visualization code similar to Question 4
```

**What this does:**
- Analyzes Usage (weekly frequency) and Miles (expected distance)
- Same statistical functions and visualization techniques as previous questions

#### Answer:
- **Usage**: Mean 3.5 times/week, Range 2-7 times/week
- **Miles**: Mean 103.2 miles, Range 21-360 miles

---

### Question 6: What is the self-rated fitness of customers buying treadmills?

#### Code Explanation:
```python
fitness_distribution = df['Fitness'].value_counts().sort_index()
print("Fitness Rating Distribution:")
print(fitness_distribution)

print(f"\nFitness Statistics:")
print(f"Mean Fitness Rating: {df['Fitness'].mean():.2f}")
print(f"Median Fitness Rating: {df['Fitness'].median():.1f}")

plt.figure(figsize=(12, 5))

plt.subplot(1, 2, 1)
fitness_distribution.plot(kind='bar', color='mediumseagreen')
plt.title('Self-Rated Fitness Distribution')
plt.xlabel('Fitness Rating (1=Very Unfit, 5=Very Fit)')
plt.ylabel('Number of Customers')
plt.xticks(rotation=0)

plt.subplot(1, 2, 2)
plt.pie(fitness_distribution.values, labels=[f'Rating {i}' for i in fitness_distribution.index], 
        autopct='%1.1f%%')
plt.title('Fitness Rating Distribution')
```

**What this does:**
- `sort_index()` orders fitness ratings from 1 to 5
- List comprehension `[f'Rating {i}' for i in fitness_distribution.index]` creates labels
- Shows distribution of self-rated fitness scores

#### Answer:
**Mean fitness rating: 3.31/5, with most customers rating themselves as moderately fit (rating 3)**

---

### Question 7: Is married customer buying treadmills more than single customers?

#### Code Explanation:
```python
marital_sales = df['MaritalStatus'].value_counts()
print("Sales by Marital Status:")
print(marital_sales)
print(f"\nPercentage distribution:")
for status, count in marital_sales.items():
    print(f"{status}: {count/len(df)*100:.1f}%")
```

**What this does:**
- Same approach as gender analysis
- Compares Partnered vs Single customers

#### Answer:
**Yes, partnered customers (107 customers, 59.4%) are buying more treadmills than single customers (73 customers, 40.6%)**

---

### Questions 8-15: Relationship Analysis

These questions analyze relationships between variables and models using advanced statistical techniques:

#### Code Structure for Relationship Analysis:
```python
# Question 8: Income vs Model
income_by_model = df.groupby('Product')['Income'].describe()
print("Income statistics by Model:")
print(income_by_model)

plt.subplot(2, 3, 1)
sns.boxplot(data=df, x='Product', y='Income', hue='Product', palette='Set2', legend=False)
plt.title('Income Distribution by Model')
plt.xticks(rotation=45)
```

**What this does:**
- `groupby('Product')['Income'].describe()` - Groups data by model and calculates statistics for income
- `sns.boxplot()` - Creates box plots showing distribution, median, quartiles, and outliers
- `hue='Product'` and `legend=False` - Colors boxes by product without showing legend

#### Advanced Analysis Techniques:

```python
# Cross-tabulation for categorical variables
gender_model_crosstab = pd.crosstab(df['Product'], df['Gender'])
print("Gender distribution by Model:")
print(gender_model_crosstab)
print("\nPercentage distribution:")
print(gender_model_crosstab.div(gender_model_crosstab.sum(axis=1), axis=0) * 100)
```

**What this does:**
- `pd.crosstab()` - Creates contingency table showing relationship between two categorical variables
- `.div(crosstab.sum(axis=1), axis=0) * 100` - Converts counts to row percentages
- `axis=1` means sum across columns, `axis=0` divides each row

```python
# Age groups analysis
df['Age_Group'] = pd.cut(df['Age'], bins=[0, 25, 35, 45, 55, 100], 
                        labels=['18-25', '26-35', '36-45', '46-55', '55+'])

age_group_model = pd.crosstab(df['Age_Group'], df['Product'])
```

**What this does:**
- `pd.cut()` - Converts continuous age variable into categorical age groups
- `bins=[0, 25, 35, 45, 55, 100]` - Defines age group boundaries
- `labels=[]` - Assigns names to each age group

```python
# Comprehensive model profiles
model_profiles = df.groupby('Product').agg({
    'Age': ['mean', 'std'],
    'Income': ['mean', 'std'],
    'Education': ['mean', 'std'],
    'Usage': ['mean', 'std'],
    'Miles': ['mean', 'std'],
    'Fitness': ['mean', 'std']
}).round(2)
```

**What this does:**
- `.agg()` - Applies multiple aggregation functions to multiple columns
- Dictionary specifies which functions to apply to which columns
- `.round(2)` - Rounds results to 2 decimal places

```python
# Correlation analysis
numerical_cols = ['Age', 'Income', 'Education', 'Usage', 'Miles', 'Fitness']
correlation_matrix = df[numerical_cols].corr()
sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm', center=0, square=True)
```

**What this does:**
- `.corr()` - Calculates correlation coefficient between numerical variables
- `sns.heatmap()` - Visualizes correlation matrix as color-coded heat map
- `annot=True` - Shows correlation values on the map
- `cmap='coolwarm'` - Color scheme (blue for negative, red for positive)
- `center=0` - Centers the color map at zero correlation

---

## Detailed Answers to Relationship Questions

### Question 8: Income vs Model
**Strong positive relationship** - TM798 customers have significantly higher income ($75,442) compared to TM498 ($48,974) and TM195 ($46,418), showing clear income-based market segmentation.

### Question 9: Age vs Model  
**No significant relationship** - All models have similar average ages (28.6-29.1 years) with overlapping ranges.

### Question 10: Fitness vs Model
**Strong positive relationship** - TM798 customers have much higher fitness ratings (4.6/5) compared to TM195 and TM498 (both ~2.9/5).

### Question 11: Education vs Model
**Moderate positive relationship** - TM798 customers are more educated (17.3 years) compared to TM195 and TM498 (both ~15.1 years).

### Question 12: Gender vs Model
**Significant relationship** - TM798 is male-dominated (82.5% male) while TM195 and TM498 have balanced gender distribution (~50-50%).

### Question 13: Marital Status vs Model
**No significant relationship** - All models show similar distribution (~60% partnered, 40% single).

### Question 14: Age Groups vs Model
**No significant relationship** - All models attract similar age group distributions, primarily 18-35 year olds.

### Question 15: Multi-variable Analysis
**Income, Education, and Fitness strongly relate to model choice, but Age doesn't** - Premium model (TM798) customers are wealthier, more educated, and fitter, regardless of age.

---

## Business Insights & Customer Profiling

### Customer Profiles by Model

#### TM195 - Entry Level Model
- **Target Market**: Budget-conscious customers
- **Demographics**: Lower income ($46,418), moderate education (15.0 years)
- **Characteristics**: Lower fitness level (2.96/5), balanced gender split
- **Usage**: Moderate usage (3.09 times/week), shorter distances (82.8 miles)

#### TM498 - Mid-Range Model  
- **Target Market**: Middle-class customers
- **Demographics**: Moderate income ($48,974), moderate education (15.1 years)
- **Characteristics**: Lower fitness level (2.90/5), slightly more males
- **Usage**: Moderate usage (3.07 times/week), moderate distances (87.9 miles)

#### TM798 - Premium Model
- **Target Market**: Affluent, fitness-conscious customers
- **Demographics**: High income ($75,442), higher education (17.3 years)
- **Characteristics**: High fitness level (4.62/5), male-dominated (82.5%)
- **Usage**: High usage (4.78 times/week), longer distances (166.9 miles)

### Key Business Recommendations

1. **Target Marketing**: 
   - Focus premium model marketing on high-income, educated, fitness-conscious males
   - Market entry-level model to budget-conscious customers regardless of demographics

2. **Product Development**:
   - Expand TM798 features for serious fitness enthusiasts
   - Consider female-focused premium model variants

3. **Pricing Strategy**:
   - Maintain competitive pricing for TM195
   - Premium pricing justified for TM798 due to customer income capacity

4. **Market Expansion**:
   - TM798 has smallest customer base but highest revenue potential
   - Focus on attracting more high-income customers to premium segment

---

## Code Best Practices Demonstrated

1. **Data Exploration**: Always start with `.info()`, `.describe()`, `.head()`
2. **Missing Data Check**: Use `.isnull().sum()` 
3. **Categorical Analysis**: Use `.value_counts()` for frequency analysis
4. **Statistical Summary**: Use `.groupby().describe()` for detailed statistics
5. **Visualization**: Combine multiple plot types for comprehensive analysis
6. **Cross-tabulation**: Use `pd.crosstab()` for relationship analysis
7. **Data Transformation**: Use `pd.cut()` for creating categorical variables
8. **Correlation Analysis**: Use `.corr()` and heatmaps for numerical relationships
9. **Professional Formatting**: Use f-strings and proper rounding for clean output
10. **Multiple Aggregations**: Use `.agg()` with dictionaries for complex summaries

This comprehensive guide provides both the analytical insights and the technical knowledge needed to understand and replicate this EDA analysis.