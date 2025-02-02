# Lua Stack Overflow: Deeply Nested Table Traversal

This repository demonstrates a common Lua error: stack overflow caused by recursively traversing a deeply nested table.  The `bug.lua` file contains the problematic code, while `bugSolution.lua` offers a solution using iteration to avoid recursion.

**Problem:**

The recursive function `foo` in `bug.lua` will exhaust the Lua stack if the input table `t` is excessively deep.  This is because each recursive call adds a new stack frame, and a deeply nested table will cause many such frames.

**Solution:**

The solution in `bugSolution.lua` uses an iterative approach with a queue or stack data structure to traverse the nested table.  This avoids the recursive calls and therefore prevents the stack overflow.

This example highlights the importance of understanding Lua's limitations and choosing appropriate algorithms for handling nested data structures, especially when depth is unpredictable or potentially large.