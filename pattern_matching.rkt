#lang sicp

(define deriv-rules
  '(
    ( (dd (?c c) (? v)) 0)
    ( (dd (?v v) (? v)) 1)
    ))

(display   deriv-rules)

(define dsimp
  (simplifier deriv-rules))