;./uppercase < file-spec

(while (read-line) (println (upper-case (current-line))))
(exit)