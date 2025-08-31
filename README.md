## IBM Assembly Project – Computer Architecture & Languages Course

This repository contains the source codes and materials for the Computer Architecture and Languages course project, implemented in IBM Assembly Language.
## Problems

## 1. Collatz Conjecture
- **Task:** Implement the **Collatz sequence** generator.  
- **Input:** A single integer `n (n ≥ 1)`.  
- **Process:**  
  - If `n` is even → `n = n / 2`  
  - If `n` is odd → `n = 3n + 1`  
  - Repeat until `n = 1`.  
- **Output:** Sequence of numbers until reaching 1.  

**Example Input:**
```
5
```
**Example Output:**
```
5 16 8 4 2 1
```

---

## 2. Logical Operations
- **Task:** Evaluate logical expressions with priority from **right to left**.  
- **Operators Allowed:**  
  - AND: `&`  
  - OR: `|`  
  - XOR: `^`  
  - NOT: `~`  
- **Input:** A single string with integers (base 10) and logical operators.  
- **Output:** Result as a decimal integer.  

**Example Input:**
```
5|2^7~&2
```
**Example Output:**
```
2
```

---

## 3. Towers of Hanoi
- **Task:** Solve the **Tower of Hanoi** puzzle with 3 rods.  
- **Input:** Integer `m` = number of disks.  
- **Initial condition:** All disks on rod 0.  
- **Output:** Each move in form `(i, j)` meaning "move top disk from rod `i` to rod `j`".  

**Example Input:**
```
2
```
**Example Output:**
```
(0,1)
(0,2)
(1,2)
```

---

## 4. Subset Generation
- **Task:** Print all subsets of `{1, …, n}`.  
- **Input:** Integer `n (n ≥ 0)`.  
- **Output:** Each subset in braces `{}`.  

**Example Input:**
```
3
```
**Example Output:**
```
{1, 2, 3}
{1, 2}
{1, 3}
{1}
{2, 3}
{2}
{3}
{}
```

---

## 5. Pascal’s Triangle Row 
- **Task:** Compute the `i-th` row of **Pascal’s Triangle** recursively.  
- **Formula:**  
  ```
  C(n, r) = C(n-1, r-1) + C(n-1, r)
  ```  
- **Input:** Integer `n` (row index, starting from 0).  
- **Output:** Row values separated by spaces.  

**Example Input:**
```
5
```
**Example Output:**
```
1 5 10 10 5 1
```
