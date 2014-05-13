(define my-setq
  (lambda-macro (_key _value)
                (set _key (eval _value))))
