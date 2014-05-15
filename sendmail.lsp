; send email - Linux/UNIX
;
; a very short alternative to the smtp.lsp module
; in the newLISP distribution, but needs 'sendmail'
; in your system in /usr/bin or /bin (on FreeBSD)
; most UNIX systems seem to have it.
;
(define (sendmail to from subject body)
   (exec "/usr/bin/sendmail -t"
    (format "To: %s\nFrom: %s\nSubject: %s\n\n%s"
       to from subject body)))