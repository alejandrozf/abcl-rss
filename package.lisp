;;;; package.lisp

(defpackage #:abcl-rss
  (:use #:cl)
  (:export
   :read-feed
   :feed-get-entries))
