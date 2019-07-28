#lang sicp

(define dx 0.00000000001)

(define deriv
  (lambda (f)
    (lambda (x)
      (/ (- (f (+ x dx))
            (f x))
         dx))))


(define square
  (lambda (x)
    (* x x)))
((deriv square) 500)