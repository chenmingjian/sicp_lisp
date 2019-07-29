(define (sum_int a  b)
    (if ( > a b)
        0
        (+ a 
            (sum_int (1+ a) b))))

(define square (lambda (a)
    (* a a)))


(define (sum_sq a b)
    (if (> a b)
        0
        (+ (square a) 
            (sum_sq (1+ a) b))))


(define sum (lambda (term a next b)
    (if (> a b)
        0
        (+ (term a)
            (sum term 
                (next a)
                next 
                b)))))

(define sum_int_2 (lambda (a b)
    (define identity (lambda (a) a))
    (sum identity a 1+ b)))

(define sum_square_2 (lambda (a b)
    (sum square a 1+ b)))

(define leibniz (lambda (a)
    (define next (lambda (a) (+ 4 a)))
    (define term (lambda (a) (/ 1 (* a (+ a 2)))))
    (sum term 1 next a)))

(display (format "~f" (* 8 (leibniz 100000))))

(exit)