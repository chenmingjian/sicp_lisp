#lang sicp

(define deriv-rules
  '(
    ( (dd (?c c) (? v)) 0)
    ( (dd (?v v) (? v)) 1)
    ))

(display   deriv-rules)

; (define dsimp
;   (simplifier deriv-rules))


; (define (match pat exp dict)
;   (cond ((eq? dict 'failed) 'failed)
;         ((atom? pat)
;           )))

; (+ (* (?x) (?y)) (?y))

(define (simplify-exp exp)
  (try-rules
   (if (compoind? exp)
       (map simplify-exp exp)
       exp)))

(define (try-rules exp)
  (define (scan rules)
    ***)
  (scan the-rules))

(define (scan rules)
  (if (null? rules)
      exp
      (let ((dict (match (pattern (car rules))
                    exp
                    (empty-dictionary))))
        (if (eq? dict 'failed)
            (scan (cdr rules))
            (simplify-exp
             (instantiatie
              (skeleton (car rules))
              dict))))))