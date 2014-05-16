;without else part
(set 'x 10)

(when (> x 0)
	(define a "positive")
	(define b "not zero")
	(define c "not negative"))

(println a ";" b ";" c)

(exit)