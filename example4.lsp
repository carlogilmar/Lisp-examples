;; And Statement
(and (eq (mod 15 3) 0) (eq (mod 15 5) 0 ) )
;; T

(defun fb(n)
             (if (eq 5 n)
                (princ "Es cinco")
                (princ "No es cinco")
             )
)

(defun fb(n)
  (if
     (and ( eq (mod n 5) 0 ) (eq (mod n 3) 0) )
     (princ "Es divisible entre 3 y 5")
     (princ "No es divisible entre 3 y 5")
  )
)

(defun fb(n)
  (if
     (and ( eq (mod n 5) 0 ) (eq (mod n 3) 0) )
       (princ "FizzBuzz")
       (if
          (eq (mod n 5) 0)
            (princ "Fizz")
            (if
               (eq (mod n 3) 0)
                 (princ "Buzz")
                 (princ n)
            )
       )
  )
)

(if (oddp 5)
          'odd-number
          (/ 1 0)
)

;; Cond Statement
(defvar *arch-enemy* nil)

(defun pudding-eater (person)
          (cond (
                  (eq person 'henry)
                  (setf *arch-enemy* 'stupid-lisp-alien)
                  '(curse you lisp alien - you ate my pudding)
                 )
                 (
                  (eq person 'johnny)
                  (setf *arch-enemy* 'useless-old-johnny)
                  '(i hope you choked on my pudding johnny)
                 )
                 (
                   t
                   '(why you eat my pudding stranger ?)
                 )
          )
)

;; Cond Fizz Buzz Implementation
(defun fb (n)
      (cond
             (
               (and (eq (mod n 5) 0) (eq (mod n 3) 0) )
               (princ "fizzbuzz")
             )
             (
               (eq (mod n 5) 0)
               (princ "Fizz")
             )
             (
               (eq (mod n 3) 0)
               (princ "Buzz")
             )
             (
                t
                (princ n)
             )
      )
)

;; Case Statement

(defun pudding-eater (person)
    (case person
                (
                  (henry)
                  (setf *arch-enemy* 'stupid-lisp-alien)
                  '(curse you lisp alien - you ate my pudding)
                )
                (
                  (johnny)
                  (setf *arch-enemy* 'useless-old-johnny)
                  '(i hope you choked on my pudding johnny)
                )
                (
                  otherwise
                  '(why you eat my pudding stranger ?)
                )
    )
  )







