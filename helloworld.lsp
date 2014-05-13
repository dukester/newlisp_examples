;newlisp -x helloworld.lsp helloworld

(set 'hello "hello")
(set 'world "newlisp!")

(if true
  (begin (print hello)
         (print " ")
         (println world))
  (println "python, ruby, erlang others"))

(exit)
