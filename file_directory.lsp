; get directory part of a filename
;
; example:
;
;  (dirname "/usr/etc/hosts") => "/usr/etc"
;  (dirname "c:\\WINDOWS\\system32\\chkdsk.exe") 
;     => "c:/WINDOWS/system32"
;
; Note that MS Windows allows both / and \ as 
; path separators
;

(define (dirname path)
 (join (chop (parse path "/|\\\\" 0)) "/"))