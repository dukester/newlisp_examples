; sorts same letters followed by numbers in number 
; order newLISP v9.2.5 minimum is required for () 
; return of find-all ported to newLISP by G. Fischer
;
; (natural-sort '("a10" "a2" "a1" "a14")) 
;     => ("a1" "a2" "a10" "a14") 

(define (natural-sort l) 
  (let (natural-key (lambda (s) (filter true? 
    (flat (transpose (list 
            (parse s "[0-9]+" 0) 
            (map int (find-all "[0-9]+" s))))))))
    (sort l (fn (x y) (< (natural-key x) 
            (natural-key y)))) 
))