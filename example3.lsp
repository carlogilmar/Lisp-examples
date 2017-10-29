;; Data model
;; Function
(expt 2 3)
;; Data struct
'(expt 2 3)

;; Cons Cells
(cons 'chicken 'cat)
;; >> (CHICKEN . CAT)

(cons 'chicken
               (cons 'dog'
                          (cons 'pet 'cat)
               )
)
;; >> (CHICKEN DOG CONS 'PET 'CAT)

;; List
'(1 2 3 4 5 6)
;; >> (1 2 3 4 5 6)

(car '(1 2 3 4 5 6))
;; >> 1

(cdr '(1 2 3 4 5 6))
;; >> (2 3 4 5 6)

(car '(cgr '(1 2 3 4 5 6)))
;; >> CGR

;; IF Statement
(if '()
          'i-am-true
          'i-am-false
)

(if '(1)
  'i-am-true
  'i-am-false
)

(defun my-length (list)
                         (if list
                                 (1+
                                    (my-length (cdr list))
                                 )
                                 0
                        )
)















