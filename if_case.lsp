(set 'x 20)
(if
	(< x 0) (define a "impossible")
	(< x 10) (define a "small")
	(< x 20) (define a "medium")
	(>= x 20) (define a "large"))

(println a)
(exit)