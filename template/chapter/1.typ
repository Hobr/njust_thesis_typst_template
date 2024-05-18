// 引言
= 引言

+ 南京理工大学(@logo)
  - 南京校区
  - 江阴校区
  - 汤山校区
  - 盱眙校区
+ 南京航空航天大学
+ `mono font`

#figure(
  image("../../img/logo.jpg", width: 60%),
  caption: [你说的对, 但*南京理工大学*是一所......],
) <logo>

_行内公式:_ $Q = rho A v + C$

$
  f(x, y) := cases(
  1 "if" (x dot y)/2 <= 0,
  2 "if" x "is even",
  3 "if" x in NN,
  4 "else",
)
$

$
  mat(
  1, 2, ..., 10;
  2, 2, ..., 10;
  dots.v, dots.v, dots.down, dots.v;
  10, 10, ..., 10;
)
$

*加粗, 代码*

```latex
\begin{itemize}
  \item Fast
\end{itemize}
```

术语表:

/ Term: 1
/ Term: 2

#rect()[
  #calc.max(3, 2 * 4) \
  #underline()[_斜体_下划线]
]

#for x in range(3) [
  Hi #x.
]

== 更多

// Store the integer `5`.
#let five = 5

// Define a function that
// increments a value.
#let inc(i) = i + 1

I have #five fingers.

If I had one more, I'd have
#inc(five) fingers. Whoa!

== 表格

#table(
  columns: 5 * (1fr,),
  ..for x in range(1, 10) {
    for y in range(1, 6) {
      (str(x * y),)
    }
  },
)

