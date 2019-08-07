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

;(display (car(cons 1 2)))
; assignmentm ethod
(define (cons_2 x y)
  (lambda (m)
    (m x
       y
       (lambda (n) (set! x n))
       (lambda (n) (set! y n)))))
(define (car_2 x)
  (x (lambda (a d sa sd) a)))

(define (cdr_2 x)
  (x (lambda (a d sa sd) d)))
(define (set-car! x y)
  (x (lambda (a d sa sd) (sa y))))
(define (set-cdr! x y)
  (x (lambda (a d sa sd) (sd y))))

(define tmp (cons_2 1 2))
(set-car! tmp 2)
(display (car_2 tmp))



