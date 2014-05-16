(define alphabet "abcdefghijklmnopqrstuvwxyz")

(dostring (letter alphabet)
	(print letter { }))

(println "\n")
	
(dolist (letter '("a" "b" "c" "d"))
	(print letter { }))

(exit)