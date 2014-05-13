(fn (x) (= 0 (% x 2))) ;(lambda (x) (= 0 (% x 2)))
(define (f x y) (+ x y z)) ;f是(lambda (x y) (+ x y z))
(first f) ;(x y)
(last f); (+ x y z)

(setf (nth 1 f) '(+ x y z 1)) ;(lambda (x y) (+ x y z 1))

let ((z 2)) (expand f 'z)) ;(lambda (x y) (+ x y 2 1))
