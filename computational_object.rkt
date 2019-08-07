#lang sicp

;(define a (make-wire))
;(define b (make-wire))
;(define c (make-wire))
;(define d (make-wire))
;(define e (make-wire))
;(define s (make-wire))

;(or-gate a b d)
;(and-get a b c)
;(inverter c e)
;(and-gate d e s)

;NB Alonzo church hack
(define (cons x y)
  (lambda (m) (m x y)))

(define (car x)
  (x (lambda (a d) a)))

(define (cdr x )
  (x  (lambda (a d) d)))

(display (car(cons 1 2)))