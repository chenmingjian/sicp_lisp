#lang sicp

(define make-counter
  (lambda (n)
    (lambda ()
             (set! n (+ 1 n))
             n)))

(define c1 (make-counter 0))
(define c2 (make-counter 10))
(c1)
(c1)
(c1)
(c1)
(c1)
(c2)

; Cesaro's method to calculate pi

(define (monte-carlo reials experiment)
  (define (iter remaining passed)
    (cond ((= remaining 0)
           (/ passed reials))
          ((experiment )
           (iter (-1+ remaining)
                 (1+ passed)))
          (else
           (iter (-1+ remaining)
                 passed)))))

(define rand
  (let ((x random-init))
    (lambda ()
      (set! x ( rand-update x))
      x)))
(define (estimate-pi n)
  (sqrt (/ 6 (monte-carlo n cesaro))))
(define (cesaro)
  (= (gcd (rand) (rand)) 1))

