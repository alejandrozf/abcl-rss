# abcl-rss
### _Alejandro Zamora <ale2014.zamora@gmail.com>_

This is an alternative to cl-feedparser or cl-rss from Quicklisp whom are not working with ABCL-1.9

Quickstart

Clone this repository to your Quicklisp local-projects (or other discoverable) folder

```
CL-USER> (require :abcl-contrib)
NIL
CL-USER> (require :abcl-asdf)
("ABCL-ASDF")
CL-USER> (asdf:load-system :quicklisp-abcl)
T
CL-USER> (ql:quickload :abcl-rss)
To load "abcl-jmathplot":
  Load 1 ASDF system:
    abcl-jmathplot
; Loading "abcl-jmathplot"

(:ABCL-JMATHPLOT)
CL-USER> (abcl-jmathplot:quick-plot '(1 3 4 44 1 0) '(0 10 5 2 7 3) "test")
NIL
CL-USER>
```


## License

MIT
