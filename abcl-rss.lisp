;;;; abcl-rss.lisp

(in-package #:abcl-rss)

(defun read-feed (url)
  (let ((create-minimal-method
          (load-time-value
           (java:jmethod "org.apache.http.impl.client.HttpClients" "createMinimal")))
        (execute-method (load-time-value
                         (java:jmethod "org.apache.http.impl.client.CloseableHttpClient"
                                       "execute" "org.apache.http.client.methods.HttpUriRequest")))
        (get-entity-method (load-time-value (java:jmethod
                                             "org.apache.http.impl.execchain.HttpResponseProxy"
                                             "getEntity")))
        (get-content-method (load-time-value (java:jmethod
                                              "org.apache.http.impl.execchain.ResponseEntityProxy" "getContent")))
        (build-method (load-time-value (java:jmethod "com.rometools.rome.io.SyndFeedInput" "build" "java.io.Reader"))))

    (handler-case
        (let* ((client (java:jstatic create-minimal-method "org.apache.http.impl.client.HttpClients"))
               (request (java:jnew "org.apache.http.client.methods.HttpGet" url))
               (response (java:jcall execute-method client request))
               (entity (java:jcall get-entity-method response))
               (stream (java:jcall get-content-method entity))
               (input (java:jnew "com.rometools.rome.io.SyndFeedInput"))
               (feed (java:jcall build-method input (java:jnew "com.rometools.rome.io.XmlReader" stream))))
          feed)
      (error (e) (format t "An ~a error ocurred" e)))))


(defun feed-get-title (feed)
  (let ((get-title-method (load-time-value
                           (java:jmethod
                            "com.rometools.rome.feed.synd.SyndFeedImpl" "getTitle"))))
    (java:jcall get-title-method feed)))

(defun feed-get-entries (feed)
  (let* ((get-entries-method (load-time-value
                              (java:jmethod
                               "com.rometools.rome.feed.synd.SyndFeedImpl" "getEntries")))
         (entries (java:jcall get-entries-method feed))
         (to-array-method
           (load-time-value
            (java:jmethod "java.util.ArrayList" "toArray")))
         (get-contents-method (load-time-value
                               (java:jmethod
                                "com.rometools.rome.feed.synd.SyndEntryImpl" "getContents")))
         (get-value-method (load-time-value (java:jmethod "com.rometools.rome.feed.synd.SyndContentImpl"
                                                          "getValue")))
         (items (java:jcall to-array-method entries))
         (contents (map 'vector
                        (lambda (c)
                          (map 'vector (lambda (d)
                                         (java:jcall get-value-method d))
                               (java:jcall to-array-method
                                           (java:jcall get-contents-method c))))
                        items)))
    (values contents entries)))
