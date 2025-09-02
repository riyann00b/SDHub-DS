# Week 5, Day 23: NumPy Practice & Pandas Introduction

**Date: 31-07-2025 Wednesday**
## 1. NumPy Practice: The Power of Arrays

NumPy (Numerical Python) is the fundamental package for numerical computing in Python. It provides a powerful N-dimensional array object, which is much more efficient than standard Python lists for numerical operations.

### A. Basic Array Creation and Properties

Think of a NumPy array as a grid of values, all of the same type.

**1. Create a 1D array from 10 to 19.**
```python
import numpy as np
arr = np.arange(10, 20)
# Result: array([10, 11, 12, 13, 14, 15, 16, 17, 18, 19])
```

**2. Create a 3x3 array of zeros.**
This is like creating an empty 3x3 grid.
```python
arr = np.zeros((3,3))
# Result:
# array([[0., 0., 0.],
#        [0., 0., 0.],
#        [0., 0., 0.]])
```

**3. Create 5 random integers between 1 and 100.**```python
arr = np.random.randint(1, 100, 5)

# Result (will vary): array([22, 47, 20, 48, 48])


**4. Create 10 evenly spaced numbers between 0 and 1.**
`linspace` is great for creating coordinate systems or sample points.

```python
arr = np.linspace(0, 1, 10)
# Result: array([0.        , 0.11111111, ..., 1.        ])
```

---

### B. Indexing and Slicing

Slicing is how you grab a piece of an array. Think of it like taking a slice of cake!

**Visualizing 2D Array Indexing:**
An array `arr[row, column]` is like a battleship game board. You specify the row and column to find the value.

| | Col 0 | Col 1 | Col 2 |
| :--- | :--: | :--: | :--: |
| **Row 0**| `arr[0,0]` | `arr[0,1]` | `arr[0,2]` |
| **Row 1**| `arr[1,0]` | `arr[1,1]` | `arr[1,2]` |
| **Row 2**| `arr[2,0]` | `arr[2,1]` | `arr[2,2]` |

**5. From `arr = np.array([5, 10, 15, 20, 25])`, extract `[10, 15, 20]`**
```python
arr = np.array([5, 10, 15, 20, 25])
sub_arr = arr[1:4] # Start at index 1, end before index 4
# Result: array([10, 15, 20])
```

**6. From a 3x3 matrix, extract the second column.**
The colon `:` means "select all" for that dimension (in this case, all rows).
```python
arr = np.array(range(1,10)).reshape(3,3)
# array([[1, 2, 3],
#        [4, 5, 6],
#        [7, 8, 9]])

second_col = arr[:, 1] # All rows, column at index 1
# Result: array([2, 5, 8])
```

---

### C. Array Operations

NumPy allows you to perform operations on entire arrays at once (element-wise), which is incredibly fast.

**8. Element-wise addition and multiplication.**
```python
a = np.array([1, 2, 3])
b = np.array([4, 5, 6])

# Addition
add_result = a + b  # array([5, 7, 9])

# Multiplication
mul_result = a * b  # array([4, 10, 18])
```

**9. Find the mean, median, and standard deviation.**
```python
arr = np.array([10, 20, 30, 40, 50])

mean_val = np.mean(arr)   # 30.0
median_val = np.median(arr) # 30.0
std_val = np.std(arr)     # 14.14
```

---

### D. Reshaping and Stacking

You can change the shape of your data grid or combine multiple grids together.

**11. Reshape a 1D array of 12 elements into a 3x4 matrix.**
```python
arr_1d = np.arange(12)
# array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11])

arr_2d = arr_1d.reshape(3, 4)
# array([[ 0,  1,  2,  3],
#        [ 4,  5,  6,  7],
#        [ 8,  9, 10, 11]])
```

**12. Stack two arrays vertically and horizontally.**

*   **Horizontal Stack (`hstack`):** Places arrays side-by-side.
*   **Vertical Stack (`vstack`):** Places arrays on top of each other.

```python
a = np.array([1, 2, 3])
b = np.array([4, 5, 6])

# Horizontal
hori_stack = np.hstack((a, b))
# array([1, 2, 3, 4, 5, 6])

# Vertical
vert_stack = np.vstack((a, b))
# array([[1, 2, 3],
#        [4, 5, 6]])```

---

### E. Logical Operations and Filtering

This is like using a filter or a sieve to select only the data you need based on a condition.

**13. From `arr = np.array([3, 8, 12, 15, 21])`, filter out elements greater than 10.**
First, we create a "boolean mask"—a true/false array based on our condition.
```python
arr = np.array([3, 8, 12, 15, 21])
mask = arr > 10
# mask is: array([False, False,  True,  True,  True])
```
Then, we use this mask to select only the `True` elements.
```python
filtered_arr = arr[mask]
# Result: array([12, 15, 21])
```

**14. Replace all odd numbers in an array with -1.**
We can use the same masking concept to assign a new value.
```python
arr = np.arange(12).reshape(3, 4)
arr[arr % 2 != 0] = -1 # Find where the number is odd and set it to -1
# Result:
# array([[ 0, -1,  2, -1],
#        [ 4, -1,  6, -1],
#        [ 8, -1, 10, -1]])
```

## 2. Pandas Introduction: Data Superpowers

If NumPy gives you arrays, Pandas gives you **labeled arrays** called **Series** and **DataFrames**. It's the go-to tool for data analysis and manipulation.

### Core Data Structures

### Basic Setup

**Installation**
You only need to do this once in your environment.
```bash
!pip install pandas
```

**Importing**
This is the standard convention for importing Pandas.
```python
import pandas as pd
```

**1. The Series (1D)**
A Series is a one-dimensional array-like object that can hold any data type. It's like a single column in a spreadsheet with labels, called an **index**.

**Analogy:** A list of items with a name for each position.

```python
# Creating a Series from a list (default index)
s1 = pd.Series([10, 20, 30, 40, 50])
# 0    10
# 1    20
# 2    30
# 3    40
# 4    50
# dtype: int64

# Creating a Series from a dictionary (keys become the index)
s2 = pd.Series({101: "Riyan", 102: "Amaan", 103: "Adnan"})
# 101    Riyan
# 102    Amaan
# 103    Adnan
# dtype: object
```

**2. The DataFrame (2D)**
A DataFrame is a two-dimensional table with labeled axes (rows and columns). It's the most commonly used Pandas object.

**Analogy:** A complete spreadsheet or an SQL table.

**Visualizing a DataFrame:** A DataFrame is essentially a collection of Series that share the same index.

| | Name (Series 1) | Age (Series 2) | Gender (Series 3) |
| :--- | :--- | :-- | :--- |
| **Index 0**| Alice | 25 | F |
| **Index 1**| Bob | 30 | M |
| **Index 2**| Charlie | 22 | M |

Each column (`Name`, `Age`, `Gender`) is a `pd.Series`. Together, they form a `pd.DataFrame`.