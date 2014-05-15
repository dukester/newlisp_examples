;./read_write_buffer < inputfile > outputfile

(while (read 0 buffer 1024)
    (write 1 buffer 1024))

(exit)