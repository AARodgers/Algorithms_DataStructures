Recursion:

A recursive function should have the following properties so that it does not result in an infinite loop:

A simple base case (or cases) — a terminating scenario that does not use recursion to produce an answer.

A set of rules, also known as recurrence relation that reduces all other cases towards the base case.

First, we can define the desired function as printReverse(str[0...n-1]), where str[0] represents the first character in the string. Then we can accomplish the given task in two steps:

printReverse(str[1...n-1]): print the substring str[1...n-1] in reverse order.
print(str[0]): print the first character in the string.

- See problems: reverse_string

There are two important things that one needs to figure out before implementing a recursive function:

recurrence relation: the relationship between the result of a problem and the result of its subproblems.
base case: the case where one can compute the answer directly without any further recursion calls. Sometimes, the base cases are also called bottom cases, since they are often the cases where the problem has been reduced to the minimal scale, i.e. the bottom, if we consider that dividing the problem into subproblems is in a top-down manner.
Once we figure out the above two elements, to implement a recursive function we simply call the function itself according to the recurrence relation until we reach the base case.


