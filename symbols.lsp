(context 'F)
(setq x 1 y 2)

;the symbols function returns the names of symbols bound in the current context
(symbols) ;(x y)

(define (id z) z ) ;(lambda (z) z)
(symbols) ;(id x y z)
