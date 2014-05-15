 Get the type of an expression
; - type - function
; Returns the type of a newLISP expression.
; "cdecl" and "stdcall" are library functions. 
; They behave like primitives but are not global.
;
; example:
; (type '(a b c)) => "list" 

(define (type x)
  (let (types 
         '("bool" "bool" "integer" "float" 
           "string" "symbol" "context" "primitive" 
           "import-simple" "import-libffi" "quote" "list" "lambda" 
           "macro" "array"))
    (types (& 0xf ((dump x) 1)))))