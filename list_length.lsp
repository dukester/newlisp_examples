;A list can be processed with a recursive algorithm.
;define can be used not only to define variables but also functions
(define (list-length a-list)
  (if (first a-list)
      (+ 1 (list-length (rest a-list)))
      0))

(println (list-length '(1 2 5)))
