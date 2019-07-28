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
; abave is a pre version.

(define constant?
  (lambda (exp var)
    (and (atom? exp)
         (not (eq? exp var)))))
  
(define (same-var? exp var)
  (and (atom? exp)
       (eq? exp var)))

(define (make-sum addend augend)
  (list '+ addend augend))

(define addend cadr)

`
(define (sum? exp)
   (and (not (atom? exp))
        (eq (car exp) '+)))

(define (product? exp)
  (and (not (atom? exp))
       (eq? (car exp) '*)))
(define (make-product m1 m2)
  (list '* m1 m2))

(define multiplier cadr)
(define multiplicand caddr)


(define (deriv-real exp var)
   (cond ((constant? exp var) 0)
         ((same-var? exp var) 1)
         ((sum? exp)
          (make-sum (deriv (addend exp) var)
                    (derive (augend exp) var)))
         ((product? exp)
          (make-sum
           (make-product (multiplier exp)
                         (deriv (multiplicand exp) var))
           (make-product (deriv (multiplier exp) var)
                         (multiplicand exp))))))
  

          
                    