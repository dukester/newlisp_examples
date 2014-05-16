;Use dotimes whenyouknowthenumberofrepetition
(dotimes (c 10) ;0 -> n-1
	(println c " times 3 is " (* c 3)))

(println "\n")

;use for when you want to work out how many repetitions should be made
(for (c 1 -1 .5)
	(println c))

(println "\n")

;从1开始到10
(for (x 1 10)
	(println x))

(println "\n")

;从0开始到9
(dotimes (x 10)
	(println x))

(exit)