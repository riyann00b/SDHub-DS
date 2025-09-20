# 🐍 Python Interview Q&A  
**Role:** Data Analyst (Fresher)

---

## 📘 Technical Questions (Basics to Intermediate)

1. **💡 What is Python and why is it popular in data analysis?**  
   → High-level, easy-to-learn, supports data libraries (*Pandas, NumPy*).

2. **📦 Difference between list, tuple, and set?**  
   → `list` = mutable, `tuple` = immutable, `set` = unique items.

3. **📝 How do you declare a list in Python?**  
   ```python
   my_list = [1, 2, 3]
```

4. **📖 What is a dictionary in Python?**  
    → Key-value pairs
    
    ```python
    {"name": "Ali", "age": 25}
    ```
    
5. **🔢 How to get length of a list?**
    
    ```python
    len(my_list)
    ```
    
6. **✂️ How do you slice a list?**
    
    ```python
    my_list[1:4]
    ```
    
7. **➕ Difference between `append()` and `extend()` in lists?**  
    → `append()` = adds one item, `extend()` = adds multiple.
    
8. **➡️ What is indentation in Python?**  
    → Spaces/tabs that define code blocks.
    
9. **🔄 Explain mutable vs immutable with examples.**  
    → `list` = mutable, `str` = immutable.
    
10. **🔁 How to reverse a string?**
    
    ```python
    "hello"[::-1]
    ```
    
11. **⚖️ Difference between `==` and `is`?**  
    → `==` checks value, `is` checks memory location.
    
12. **🛡️ How to handle errors in Python?**
    
    ```python
    try:
        # code
    except:
        # handle error
    ```
    
13. **⚡ Explain list comprehension.**
    
    ```python
    [x*2 for x in range(5)]
    ```
    
14. **🧹 How to remove duplicates from a list?**
    
    ```python
    list(set(my_list))
    ```
    
15. **🔂 Explain for loop with example.**
    
    ```python
    for i in range(5):
        print(i)
    ```
    
16. **🔧 What is a function in Python?**
    
    ```python
    def add(x, y):
        return x + y
    ```
    
17. **⚙️ Explain lambda function.**
    
    ```python
    lambda x: x*2
    ```
    
18. **📚 What are Python modules?**  
    → Pre-written code files you can import
    
    ```python
    import math
    ```
    
19. **📂 How to read a CSV file in Python?**
    
    ```python
    import pandas as pd
    df = pd.read_csv("file.csv")
    ```
    
20. **📊 Difference between NumPy and Pandas.**  
    → NumPy = numeric arrays, Pandas = tabular data.
    

...

40. **🏷️ What is a DataFrame index?**  
    → Row identifier in Pandas.
    

---

## 📊 Situational Questions (Data Analyst Context)

1. **⚡ You have a dataset with 1M rows. How would you optimize analysis?**  
    → Use Pandas `chunksize`, vectorized operations, drop unused columns.
    
2. **❓ A CSV has missing values. What do you do?**  
    → Drop or fill using mean/median depending on context.
    
3. **💰 Find top 5 customers by revenue in a DataFrame.**
    
    ```python
    df.sort_values("revenue", ascending=False).head(5)
    ```
    

...

10. **📈 Manager asks for "data summary" — how do you provide it?**  
    → `df.describe()` + visuals in Power BI.
    

---

## 💡 Behavioural Questions (Mindset & Approach)

> [!NOTE]  
> These questions reflect **your approach & mindset**, not just coding ability.

1. **📚 How do you approach learning a new Python library?**  
    → Start with docs → try small project → apply on real dataset.
    
2. **🐞 Tell me about a time you debugged a Python error.**  
    → Checked error log, used print/logging, Googled error message.
    
3. **🗣️ How do you explain Python concepts to non-technical stakeholders?**  
    → Use real-life analogies, avoid jargon, show simple examples.
    
4. **🔍 If stuck in a coding problem, what do you do?**  
    → Break into small steps, use docs, ask peers, test iteratively.
    
5. **⚖️ Why do you prefer Python over Excel for analysis?**  
    → Python handles large datasets, automation, reproducibility.
    

---

#tags: #python #data-analysis #interview-prep #obsidian
