(define (fibonacci n)
    (if (< n 2)
        n
        (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))

(display (fibonacci 40))
(newline)

(define v (make-vector 45 (- 1)))
; (vector-set! v 0 0)
; (vector-set! v 1 1)
(define (fibonacci n)
    (define n-1 (- n 1))
    (define n-2 (- n 2))

    ; (display "n=")
    ; (display n)
    ; (newline)

    (if (> n 1)
        (if (= (vector-ref v n-1) (- 1))
            (vector-set! v n-1 (fibonacci n-1))))
    (if (> n 1)
        (if (= (vector-ref v n-2) (- 1))
            (vector-set! v n-2 (fibonacci n-2))))

    (if (< n 2)
        n
        (+ (vector-ref v n-1) (vector-ref v n-2))
    )
)

(define tmp 41)
(fibonacci tmp)
(display (vector-ref v (- tmp 1)))
(newline)
(display "v = ")
(display v)
(exit)