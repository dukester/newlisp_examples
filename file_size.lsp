; print current diretory

(dolist (fname (directory)) 
	(println fname ", file size is: " ((file-info fname) 0) "bytes"))