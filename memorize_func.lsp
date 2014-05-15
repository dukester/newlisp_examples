; A memoizing function caches its result for faster
; retrieval when called with the same parameters 
; again the following function makes a memoizing 
; function from any built-in or user defined 
; function with an arbitrary number of arguments. 
; 
; (memoize my-add add)
; (my-add 3 4) => 7
; (my-add 5 6) => 11
;
; (define (fibo n)
;    (if(< n 2) 1
;    (+  (fibo (- n 1))
;        (fibo (- n 2)))))
;
; (memoize fibo-m fibo)
;
; (time (fibo-m 25)) => 148
; (time (fibo-m 25)) => 0

(define-macro (memoize mem-func func) 
  (set (sym mem-func mem-func) 
    (letex ((f func) (c mem-func)) 
      (lambda () 
        (or (context c (string (args))) 
            (context c (string (args)) 
                    (apply f (args))))
))))

; recursive fibo can be made even faster when also 
; caching intermediate results occurring during 
; recursion:
;
; (memoize fibo
;   (lambda (n)
;     (if(< n 2) 1
;       (+  (fibo (- n 1))
;           (fibo (- n 2))))))
;
; (time (fibo 80)) => 0.024 ; 24 micro seconds
; (fibo 80)        => 37889062373143906
;