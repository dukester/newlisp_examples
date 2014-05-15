; get file name part of filename, strip 
; directory part
;
; example:
;  (basename "/usr/etc/hosts") => "hosts"
;

(define (basename path) 
   (last (parse path "/")))