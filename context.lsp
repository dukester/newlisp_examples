(context) ;MAIN
(setq x 1)
MAIN:x ;1

(context 'FOO)
(context? FOO) ;true
(context? MAIN); true
(context? z) ;nil

(setq x 2)
FOO:x ;2
MAIN:x ;1

(context MAIN) ;(context 'MAIN)
