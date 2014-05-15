#!/usr/bin/newlisp
# gc - google count
# USAGE:
#     gc <term-1> [<term-2> ...]
#
# When supplying exactly 2 terms, a ratio is calculated from the counts.
# When a term contains spaces, enclose the term in quotes.

(set 'pattern "(?i)About.*?([\\d,]+).*?")

(define (hits str)
	(regex pattern (get-url 
		(string "http://www.google.com/search?hl=en&q=" (replace " " str "+"))))
  	$1)

(dolist (str (2 (main-args)))
	(println (format "%s -> %s" str (set 'hts (hits str))))
	(push (int (replace "," hts "")) lst))

(if (= (length lst) 2)
       (println (format "ratio: %.2f" (div (lst 1) (lst 0)))))

(exit)