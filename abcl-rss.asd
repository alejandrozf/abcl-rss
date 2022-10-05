;;;; abcl-rss.asd

(asdf:defsystem #:abcl-rss
  :description "RSS for ABCL using Rome library"
  :author "Alejandro Zamora <ale2014.zamora@gmail.com>"
  :license  "MIT"
  :version "0.0.1"
  :serial t
  :components ((:mvn "org.apache.httpcomponents/httpclient/4.5.2")
               (:mvn "com.rometools/rome/1.9.0")
               (:file "package")
               (:file "abcl-rss")))
