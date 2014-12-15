(define Class:Class
  (cons (context) (args)))

(new Class 'Rectangle)
(new Class 'Circle)

;class methods
(define (Rectangle:area)
  (mul (self 1) (self 2)))

(define (Rectangle:move dx dy)
  (inc (self 1) dx)
  (inc (self 2) dy))

(set 'rect (Rectangle 10 20))
(set 'circ (Circle 10 10 20))

(println (:move rect))

(exit)
