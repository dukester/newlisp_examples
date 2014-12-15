(define number-list '(100 300 500 701 900 1100 1300 1500))
(dolist (n number-list)
	(println (/ n 2))) ;not div

(println "\n")

(dolist (n number-list (!= (mod n 2) 0))
	(println (/ n 2)))
	
(println "\n")

(dotimes (c 7 (!= (mod (number-list c) 2) 0)) 
	(println (/ (number-list c) 2)))

(println "\n")

(for (c 0 7 1 (!= (mod (number-list c) 2) 0)) 
	(println (/ (number-list c) 2)))

(exit)