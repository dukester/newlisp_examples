; - include - loads a module from the standard location,
; but only loads the file if not already loaded. 
; Also shows how to write functions with memory.
;
; example:
; (include "zlib.lsp") 
; (include "sqlite3.lsp")
;
; include:modules => ("zlib.lsp" "sqlite3.lsp")

(define (include:include mdl)
  (unless (find mdl include:modules) 
    (module mdl)
    (push mdl include:modules -1)))