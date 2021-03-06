;; Text game engine Steps of Building
;; 1.- Write nodes list
;; 2.- Write defun describe location for assoc this list
;; 3.- Write edges list

(defparameter *nodes* '(
                                        ( living-room
                                                          (you are in the living-room. a wizard is snoring loudly on the couch.)
                                       )
                                       ( garden (you are in a beautiful garden.
                            there is a well in front of you.))
                                       (attic (you are in the attic. there is a giant welding torch in the corner.))
                                       )
)

(assoc ‘garden *nodes*)

(defun describe-location (location nodes)
                                       (cadr
                                                (assoc location nodes)
                                       )
)

;;(describe-location 'living-room *nodes*)

(defparameter *edges* '(
                                        (living-room
                                                           (garden west door)
                                                           (attic upstairs ladder))
                                        (garden (living-room east door))
                                        (attic (living-room downstairs ladder))
                                      )
)

(defun describe-path (edge)
  `(there is a ,(caddr edge) going ,(cadr edge) from here.))

