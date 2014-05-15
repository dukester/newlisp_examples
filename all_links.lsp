; write links.html with all links in page

(setq page (get-url "http://www.baidu.com"))

(write-file "links.html" 
  (join (find-all 
      "<a href=([^>]+)>([^>]*)</a>" page) 
      "<br>\n"))