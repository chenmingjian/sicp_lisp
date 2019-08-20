#lang sicp


(define (nth-stream n s)
  (if (= n 0)
      (head s)
      (nth-stream (-1+ n) (tail s))))
(define (print-stream s)
  (cond ((empty-stream? e) "done")
        (else (print (head s))
              (print-stream (tail s)))))

(define (integers-from n)
  (cons-stream
   n
   (integers-from (+ 1 n))))

(define integers (integers-from 1))

(nth-stream 20 integers)
