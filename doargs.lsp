(define (foo)
	(doargs (i) (println i))) ;遍历参数
		
(foo 1 2 3 4 5)
(foo '(1 2 3))

(exit)