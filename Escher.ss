#lang sicp
(define 1-to-4 (list 1 2 3 4))

(define
(car(cdr 1-to-4))
(car(cdr (cdr 1-to-4)))