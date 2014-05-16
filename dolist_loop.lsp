(define counter 1)

(dolist (i (sequence -5 5)) ;-5到5共11个元素
	(println "Manual Element " counter ": " i) ;循环体dolist内
	(inc counter)) ;循环体dolist内

;newLISP automatically maintains a loop counter
(dolist (i (sequence -5 5))
	(println "Automatic Element " $idx ": " i)) ;$idx counter
		
;使用map和高阶函数来实现
(define counter 1)
(map (fn (i) ;lambda
	(println "Map Element " counter ": " i)
	(inc counter)) ;定义fn做2件事情:打印和递增索引
	(sequence -5 5)) ;高阶函数的参数

(exit)