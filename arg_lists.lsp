(define (f z , x y)
  (setq x 1 y 2)
  (list x y z))

(f 3) ;(1 2 3)

;类似
(define (f z)
  (let ((x 1)(y 2))
      (list x y z))) ;(lambda (z) (let ((x 1)(y 2)) (list x y z)))

(define (f z x y)
  (if (not x) (setq x 1))
  (if (not y) (setq y 2))
  (list x y z))
