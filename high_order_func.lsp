(map eval '((+ 1) (+ 1 2 3) 11)) ;(1 6 11)
;(list (+ 1) (+ 1 2 3) 11)
(map string? '(1 "Hello" 2 " World!")) ;(nil true nil true)

;The map function can also take more than one list argument
(map + '(1 2 3 4) '(4 5 6 7) '(8 9 10 11)) ;(13 16 19 22)

;detect which elements are even
(map (fn (x) (= 0 (% x 2))) '(1 2 3 4)) ;(nil true nil true)

(filter (fn (x) (= 0 (% x 2))) '(1 2 3 4)) ;(2 4)

(index (fn (x) (= 0 (% x 2))) '(1 2 3 4)) ;(1 3)

(apply + '(1 2 3)) ;6

(setq op +)
(apply op '(1 2 3))
