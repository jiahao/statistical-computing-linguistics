∇a←v s k;u;i;w⍝ user-defined function s:
              ⍝ summarize values v, grouped by keys k
              ⍝ u, i, and w are local variables
              ⍝ a contains the result
u←∪k          ⍝ uniqfy keys
u←u[⍋u]       ⍝ sort keys
i←u∘.=k       ⍝ construct indicator matrix
w←(i+.×v)÷+/i ⍝ compute mean for each key in u:
              ⍝ i+.×v sums entries in v for each key
              ⍝ +/i counts entries in i for each key
a←u,[1.5]w    ⍝ laminate unique keys and summarized values
∇
⍝ input data
u←381 1291 3992 193942 9493 381 3992 381 3992 193942
r←5 4 4 4 5 5 5 3 5 4
⎕←r s u ⍝ summarize r by u
)OFF  ⍝ quit interpreter
