(define f
  (let ((x 1) (y 2)) 
      (lambda (z) (list x y z)))) ;(lambda (z) (list x y z))
;f是(lambda (z) (list x y z))

(setq x 3 y 4 z 5)

(f 1) ;(3 4 1)
(let ((x 5)(y 6)(z 7)) (f 1)) ;(5 6 1)
