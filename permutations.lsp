(define (permutations items) 
  (if (empty? items) 
    '(()) 
    (apply append 
      (map (lambda (element) 
        (map 
          (lambda (permutation) 
             (cons element permutation)) 
          (permutations (replace element 
             (begin items))))) 
      items))))

; the (begin ..) wrapper makes replace non-destructive
; (permutations '(1 2 3)) 
; => ((1 2 3) (1 3 2) (2 1 3) 
;     (2 3 1) (3 1 2) (3 2 1))