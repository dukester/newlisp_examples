;nlgrep "this|that" *.c

(dolist (fname (2 (main-args))) ;2 (main-args) 隐式索引，(0 (main-args)) 返回 ("newlisp")，(main-args 0) 返回 "newlisp"
    (set 'file (open fname "read"))
    ;(println "file ---> " fname)
    
	(while (read-line file)
        (if (find (main-args 1) (current-line) 0)
            (write-line)))
    (close file))
    
(exit)