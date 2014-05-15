; check if file is a link
; Mac OS X, Linux and BSDs, not on Win32
; see man page for fstat on Unix
; instead of octal 0120000 can use:
; 0xA000 hex or 40960 decimal
;
; example: 
;    (link? "Desktop") => true

(define (link? path-name) 
   (= 0120000 (& (file-info path-name 1) 0120000)))