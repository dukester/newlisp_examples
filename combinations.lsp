(define (combinations n k (r '()))
     (if (= (length r) n)
       (list (sort r <))
       (apply append (map 
                (fn (x) (combinations n ((+ 1 $idx) k) (cons x r))) k))))

; (combinations 2 '(a b c))
; =>  ((a b) (a c) (b c))