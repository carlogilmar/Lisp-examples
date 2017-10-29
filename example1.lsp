(princ "Bienvenido a Common lisp!")

;; Recorrimiento de Bits
;; 1101 + 0 => Recorrimiento a la izquierda
;; 1101 - 1 => Recorrimiento a la derecha
(ash 101 -1)
(ash 3 1)

;; Variables Globales
(defparameter *small* 1)
(defparameter *big* 100)

;; Guess My Number Functions
(defun guess()
              (ash
                  (+ *small* *big*) -1
              )
)
(defun smaller ()
                 (
                   setf *big* (1-(guess) )
                 )
                 (guess)
)
(defun bigger ()
                (
                 setf *big* ( 1+(guess) )
                )
                (guess)
)
(defun start()
               (defparameter *small* 1)
               (defparameter *big* 100)
               (guess)
)

;; (guess) (start)
