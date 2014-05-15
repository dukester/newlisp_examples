; get all IPs assigned to this machine on Win32
; on Linux/UNIX use (exec "ifconfig")
;
; (get-ips) 
; => ("192.168.2.254" "255.255.255.0" "192.168.2.94")
;
(define (get-ips , ips)
  (dolist (ln (exec "ipconfig")) ; ifconfig on Mac OSX / UNIX
    (if (find 
      {\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b} ln 0) 
        (push $0 ips)))
  ips)