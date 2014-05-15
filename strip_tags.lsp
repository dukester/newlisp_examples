; clean HTML tags
;
(define (clean-html page) 
   (replace "<[^>]*>" page "" 0))
   
(clean-html (get-url "http://yahoo.com"))