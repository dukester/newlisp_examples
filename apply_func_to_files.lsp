; apply-dir - applies a file and a directory function
; to all files and directories in dir
;
; USAGE:
;     (apply-to-dir <file-func> <dir-func> <root-dir>)
;
; EXAMPLE:
;     (apply-dir delete-file remove-dir "someDir")
;
; the example would delete all file and directories
; in someDir in the current directory
;

(define (apply-dir ffunc dfunc dir)
  (dolist (nde (directory dir))
    (if (and (directory? (append dir "/" nde)) 
             (!= nde ".") (!= nde ".."))
        (begin
          (apply-dir ffunc dfunc (append dir "/" nde))
          (dfunc (append dir "/" nde)))
        (ffunc (append dir "/" nde)))))