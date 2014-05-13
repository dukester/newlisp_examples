(set 'y 'x)
(set y 1)
;y是x,x是1

(setq y 1) ;y是1
(define y 2) ;y是2,define只能绑定1个，setq可以多个

(set 'x 1 'y 2) ;整个表达式返回2
(setq x 3 y 4) ;x是3,y是4
