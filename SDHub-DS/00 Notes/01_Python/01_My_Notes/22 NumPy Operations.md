# Week 5, Day 22: NumPy Operations

**Date: 30-07-2025 Wednesday**

## 1. Combining Arrays

NumPy provides several functions to combine existing arrays into a single array.

### a) Horizontal Stacking (`np.hstack`)

Horizontal stacking combines arrays along the horizontal axis (column-wise). The arrays must have the same number of rows.

**Example:**

```python
import numpy as np

arr1 = np.array(range(12)).reshape(4,3)
arr2 = np.array(range(20)).reshape(4,5)

h_arr = np.hstack((arr1,arr2))
print(h_arr)
```

**Output:**

```
[[ 0  1  2  0  1  2  3  4]
 [ 3  4  5  5  6  7  8  9]
 [ 6  7  8 10 11 12 13 14]
 [ 9 10 11 15 16 17 18 19]]
```

**Visualization:**

```
arr1 (4x3)            arr2 (4x5)                     h_arr (4x8)
[[ 0  1  2]            [[ 0  1  2  3  4]            [[ 0  1  2  0  1  2  3  4]
 [ 3  4  5]             [ 5  6  7  8  9]             [ 3  4  5  5  6  7  8  9]
 [ 6  7  8]   +         [10 11 12 13 14]   =         [ 6  7  8 10 11 12 13 14]
 [ 9 10 11]]            [15 16 17 18 19]]            [ 9 10 11 15 16 17 18 19]]
```

### b) Vertical Stacking (`np.vstack`)

Vertical stacking combines arrays along the vertical axis (row-wise). The arrays must have the same number of columns.

**Example:**

```python
arr1 = np.array(range(12)).reshape(4,3)
arr3 = np.array(range(12)).reshape(4,3)

v_arr = np.vstack((arr1,arr3))
print(v_arr)
```

**Output:**

```
[[ 0  1  2]
 [ 3  4  5]
 [ 6  7  8]
 [ 9 10 11]
 [ 0  1  2]
 [ 3  4  5]
 [ 6  7  8]
 [ 9 10 11]]
```

**Visualization:**

```python
arr1 (4x3)
[[ 0  1  2]
 [ 3  4  5]
 [ 6  7  8]
 [ 9 10 11]]

+

arr3 (4x3)
[[ 0  1  2]
 [ 3  4  5]
 [ 6  7  8]
 [ 9 10 11]]

=

v_arr (8x3)
[[ 0  1  2]
 [ 3  4  5]
 [ 6  7  8]
 [ 9 10 11]
 [ 0  1  2]
 [ 3  4  5]
 [ 6  7  8]
 [ 9 10 11]]
```

### c) Depth Stacking (`np.dstack`)

Depth stacking combines arrays along the third axis (depth). The arrays must have the same shape.

**Example:**

```python
arr1 = np.array(range(12)).reshape(4,3)
arr4 = np.ones((4,3))

d_arr = np.dstack((arr1, arr4))
print(d_arr)
```

**Output:**

```
[[[ 0.  1.]
  [ 1.  1.]
  [ 2.  1.]]

 [[ 3.  1.]
  [ 4.  1.]
  [ 5.  1.]]

 [[ 6.  1.]
  [ 7.  1.]
  [ 8.  1.]]

 [[ 9.  1.]
  [10.  1.]
  [11.  1.]]]
```

## 2. Splitting Arrays

NumPy also provides functions to split an array into multiple sub-arrays.

### a) Horizontal Splitting (`np.hsplit`)

`np.hsplit` splits an array horizontally (column-wise). The number of splits must be a divisor of the number of columns.

**Example:**

```python
h_arr = np.hstack((arr1,arr2))
np.hsplit(h_arr, 2)
```

### b) Vertical Splitting (`np.vsplit`)

`np.vsplit` splits an array vertically (row-wise). The number of splits must be a divisor of the number of rows.

**Example:**

```python
v_arr = np.vstack((arr1,arr3))
np.vsplit(v_arr, 2)```

## 3. Conditional Operations with `np.where`

The `np.where` function is a powerful tool for conditional logic on arrays. It returns elements chosen from `x` or `y` depending on a condition.

**Syntax:**

`np.where(condition, output_if_true, output_if_false)`

**Example:**

```python
arr = np.linspace(1,15,12,dtype=int).reshape(4,3)
np.where(arr > 5, 'Test1', 'Test2')
```

**Nested `np.where`:**

You can nest `np.where` for more complex conditions:

```python
oe_arr = np.random.randint(100, size=(5,4))
np.where(oe_arr<50,oe_arr,np.where(oe_arr % 2 == 0, 'Even', 'Odd'))
```

## 4. Array Manipulation Functions

### a) Transpose (`.T` or `.transpose()`)

The transpose function swaps the rows and columns of an array.

**Example:**

```python
arr = np.array(range(12)).reshape(4,3)
print(arr.T)
```

### b) Flatten and Ravel

`flatten()` and `ravel()` convert a multi-dimensional array into a 1D array.

**Example:**

```python
arr10d = np.array([[[[[[[[[[1,2,3,4,5]]]]]]]]]])
print(arr10d.flatten())
```

## 5. Mathematical and Statistical Operations

NumPy provides a wide range of mathematical and statistical functions that operate on arrays.

| Operation | Description |
|---|---|
| `np.add()` | Element-wise addition |
| `np.subtract()` | Element-wise subtraction |
| `np.multiply()` | Element-wise multiplication |
| `np.divide()` | Element-wise division |
| `np.dot()` | Dot product of two arrays |
| `np.max()` | Maximum element in an array |
| `np.min()` | Minimum element in an array |
| `np.mean()` | Mean of array elements |
| `np.std()` | Standard deviation of array elements |
| `np.var()` | Variance of array elements |
| `np.sum()` | Sum of array elements |

**Example:**

```python
arr1 = np.linspace(1,10,16).reshape(4,4)
print(f"Mean: {np.mean(arr1)}")
print(f"Standard Deviation: {np.std(arr1)}")
```

## 6. Iterating Over Arrays (`np.nditer`)

The `np.nditer()` function provides an efficient way to iterate over the elements of an array.

**Example:**

```python
arr_2d = np.array(range(1, 13)).reshape(4,3)
for i in np.nditer(arr_2d):
    if i % 2 == 0:
        print(i, 'Even')
    else:
        print(i, 'Odd')
```