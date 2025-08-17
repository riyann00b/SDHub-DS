# **📊 Week 7, Day 30: Data Preprocessing, Analysis & Visualization**

**Date: August 12, 2025** Tuesday
## **Part 1: Data Preprocessing**

Data preprocessing involves cleaning and preparing raw data to make it suitable for analysis and modeling.

The main steps covered are:
1.  **Fixing Rows & Columns:** Modifying the structure of the dataset.
    *   **Delete:** Removing unnecessary rows or columns.
    *   **Add:** Creating new columns (e.g., feature engineering).
    *   **Rename:** Changing column names for clarity.
2.  **Handling Duplicates:** Managing repeated data entries.
    *   `duplicated()`: To identify duplicate rows.
    *   `drop_duplicates()`: To remove duplicate rows.
3.  **Handling Missing Values:** Addressing null or empty values.
    *   `isnull()`: To check for missing values.
    *   `fillna()`: To fill missing values with a specific value (e.g., mean, median, mode).
    *   `dropna()`: To drop rows or columns with missing values.
4.  **Handling Outliers:** Managing extreme or unforeseen values.
    *   **What is an Outlier?** An unforeseen value that is either an extremely high or low value compared to the rest of the data.
        *   **Example:** In a list of ages `[20, 21, 22, 19, 20, 50]`, the value `50` is a clear outlier.
    *   **How to Handle Outliers:**
        1.  **Identify:** Use descriptive statistics (`.describe()`) or visualizations like box plots to find potential outliers.
        2.  **Choose a Strategy:**
            *   **Ignore:** If the outlier is not significantly affecting the analysis, you can filter it out for certain calculations.
              ```python
              # Ignore the outlier by only keeping ages less than 40
              df[df['Age'] < 40]
              ```
            *   **Replace:** Change the outlier value to something more representative, like the mean or a manually chosen value.
              ```python
              # Replace the age 56 with 25
              df['Age'].replace(56, 25)
              ```

---

## **Part 2: Data Analysis & Visualization**

This involves using libraries to explore, analyze, and visualize the data to uncover insights.

### **Key Python Libraries**

*   **Numpy:** For numerical operations (Numerical Python).
*   **Pandas:** For data analysis and manipulation.
*   **Matplotlib:** For basic data visualization.
*   **Seaborn:** For more advanced and aesthetically pleasing visualizations.

### **Visualization with Matplotlib**

Matplotlib is a foundational library for creating static, animated, and interactive visualizations in Python.

**Basic Plotting Structure:**
```python
# 1. Import the library
import matplotlib.pyplot as plt

# 2. (Optional) Create a figure with a specific size
plt.figure(figsize=(12,6))

# 3. Create the plot (e.g., histogram, line plot, etc.)
plt.hist(x) # or plt.plot(x, y), plt.scatter(x, y), etc.

# 4. Add customizations
plt.title("Title of the Plot")
plt.xlabel("X-axis Label")
plt.ylabel("Y-axis Label")
plt.legend() # if you have multiple data series

# 5. Show the plot
plt.show()
```

#### **Common Chart Types**

1.  **Histogram (`plt.hist`)**
    *   **Purpose:** To show the distribution of a single numerical variable.
    *   **Example:** Profit Distribution.
      ```python
      x = df['Profit']
      plt.hist(x, color='green')
      plt.title("Profit Distribution")
      plt.ylabel("Frequency")
      plt.xlabel("Profit")
      plt.show()
      ```

2.  **Line Chart (`plt.plot`)**
    *   **Purpose:** To show performance or a trend over time.
    *   **Example:** Average profit by year.
      ```python
      # First, group data to get the average profit for each year
      df1 = df.groupby(['Year'])[['Profit']].mean()
      x = df1.index
      y = df1['Profit']

      plt.plot(x, y)
      plt.show()
      ```

3.  **Scatter Plot (`plt.scatter`)**
    *   **Purpose:** To show the relationship between two numerical columns. This helps in understanding correlation.
    *   **Correlation:** Measures the relationship between two variables.
        *   **Positive:** As one variable increases, the other tends to increase.
        *   **Negative:** As one variable increases, the other tends to decrease.
    *   **Example:** Relationship between Gross Sales and Profit.
      ```python
      plt.scatter(df['Gross Sales'], df['Profit'])
      plt.title("Relationship between Gross Sales and Profit")
      plt.xlabel("Gross Sales")
      plt.ylabel("Profit")
      plt.show()
      ```

4.  **Bar Chart / Column Chart (`plt.bar`, `plt.barh`)**
    *   **Purpose:** For comparing a numerical value across different categories.
    *   **Example:** Average profit by product.
      ```python
      df3 = df.groupby(['Product'])[['Profit']].mean()
      plt.bar(df3.index, df3['Profit']) # Vertical bars
      # or plt.barh(df3.index, df3['Profit']) # Horizontal bars
      plt.title("Average Profit by Product")
      plt.ylabel("Profit")
      plt.show()
      ```

5.  **Pie Chart (`plt.pie`)**
    *   **Purpose:** For showing data segmentation or the proportion of each category.
    *   **Example:** Profit share by product.
      ```python
      df4 = df.groupby(['Product'])[['Profit']].mean()
      plt.pie(df4['Profit'], labels=df4.index, autopct='%1.1f%%')
      plt.show()
      ```

### **Advanced Visualization with Seaborn**

Seaborn is built on top of Matplotlib and provides a high-level interface for drawing attractive and informative statistical graphics.

**Basic Structure:**
```python
# 1. Import the library
import seaborn as sns

# 2. Create the plot
sns.barplot(x=df['Product'], y=df['Profit']) # Example bar plot

# 3. (Optional) Use Matplotlib functions to customize
plt.title("Average Profit by Product")

# 4. Show the plot
plt.show()
```

#### **Seaborn Plot Examples**

*   **Bar Plot (`sns.barplot`):** Similar to Matplotlib's bar chart but often with better default aesthetics.
*   **Histogram (`sns.histplot`):** An alternative to `plt.hist`.
*   **Box Plot (`sns.boxplot`):** Excellent for visualizing distributions and identifying outliers.
*   **Pair Plot (`sns.pairplot`):** Creates a grid of scatter plots for each pair of numerical columns in a dataset, which is great for exploring relationships in one go.
    ```python
    sns.pairplot(df[['Gross Sales', 'Profit', 'Units Sold', 'Discounts']])
    plt.show()
    ```