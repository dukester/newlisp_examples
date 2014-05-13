(set 'x 1 'y 2)

;注意x,y作用域
(let ((x 3) (y 4))
    (println x)
    (println (list x y)))

(println x)
(println y)

(exit)
