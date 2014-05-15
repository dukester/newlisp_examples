; Character strings in URLs and POST data when 
; using HTTP methods must not use certain unsafe 
; characters. These routines encode and decode 
; to save URL format.
;
; (url-encode "this is a test?") 
;   => "this%20is%20a%20test%3F"
; (url-decode "this%20is%20a%20test%3F") 
;   => "this is a test?"
;
; (url-encode "所有的愛是公平的") 
; =>  "%e6%89%80%e6%9c%89%e7%9a%84%e6%84%9b%e6%98%af%e5%85%ac%e5%b9%b3%e7%9a%84"
; (url-decode (url-encode ""所有的愛是公平的")) => "所有的愛是公平的" 

; simple encoder
(define (url-encode str) 
  (replace {([^a-zA-Z0-9])} str (format "%%%2X" (char $1)) 0))

; UTF-8 encoder, encodes everything into %xx form
(define (url-encode str) ; for UTF-8 strings       
  (join (map (fn (c) (format "%%%02x" c)) (unpack (dup "b" (length str)) str))))

; universal decoder, works for ASCII and UTF-8
(define (url-decode url (opt nil))
  (if opt (replace "+" url " "))
  (replace "%([0-9a-f][0-9a-f])" url (pack "b" (int $1 0 16)) 1))