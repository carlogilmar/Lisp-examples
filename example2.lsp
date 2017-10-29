;; Variable Local
(let ((a 5) (b 6)) (+ a b))

;; Local Functions
(flet (
       ( f (n) (+ n 10) )
      )
      (f 5)
)

(flet (
         ( f (n) (+ n 10) )
         ( g (n) (- n 3) )
       )
       ( g(f 5) )
)

(flet (
          (f(n) (ash n -1))
          (g(n) (+ n 1))
      )
      ( f (g 100) )
)

(labels (
          ( a (n) (+ n 5) )
          ( b (n) (+ (a n) 6) )
        )
  (b 10)
)

( defun square(n)
                 (* n n)
)

;; Basic Operators

(eq 1 1)

(eq 1 0)

(expt 53 53)

(/ 10 2)

(/ 1 20)

(/ 1 20.867)

(princ "HelloWorld!!")












