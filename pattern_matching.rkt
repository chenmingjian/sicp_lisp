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