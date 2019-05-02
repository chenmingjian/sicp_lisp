(define (sum_of_square x y)
    (+(* x x)(* y y )))


(define (+ x y)
    (if (= x 0)
        y
        (+ (-1+ x) (1+ y))))    

(define (+ x y)
    (if (= x 0)
        y
        (1+ (+ (-1+ x) y))))
    
(display (+ 100 101))
(exit)