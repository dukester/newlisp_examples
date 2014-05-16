(define x (if flag 1 -1))

(define result
	(if
		(< x 0)  "impossible"
		(< x 10) "small"
		(< x 20) "medium"
				 "large"))

(println result)

(exit)