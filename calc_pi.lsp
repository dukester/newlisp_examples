; - pi - calculate to n digits on Unix
;
; Calculate Pi to n digits on Mac OS X and other 
; Unix this requires the UNIX utility bc which is 
; installed by default on most UNIX systems
;
; (pi 30) 
; => "3.141592653589793238462643383276"

(define (pi n)
 (replace "\\" (join (exec 
   (format "echo 'scale=%d; 4 * a(1)' | bc -ql" n))) ""))