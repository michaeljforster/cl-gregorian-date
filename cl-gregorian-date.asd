;;;; cl-gregorian-date.asd

;;; The MIT License (MIT)
;;;
;;; Copyright (c) 2004 Michael J. Forster
;;;
;;; Permission is hereby granted, free of charge, to any person obtaining a copy
;;; of this software and associated documentation files (the "Software"), to deal
;;; in the Software without restriction, including without limitation the rights
;;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;;; copies of the Software, and to permit persons to whom the Software is
;;; furnished to do so, subject to the following conditions:
;;;
;;; The above copyright notice and this permission notice shall be included in all
;;; copies or substantial portions of the Software.
;;;
;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;;; SOFTWARE.

;;; Date algorithms
;;; Copyright 1998, Peter Baum
;;;
;;; Although all rights are reserved under the copyright laws, programmers
;;; may implement the algorithms without permission. However, I would ask
;;; that if this is done for any of the algorithms that are not known to
;;; be fully documented elsewhere, a reference be made to this
;;; document. Doing so will assure full and consistent documentation,
;;; minimize the propagation of any errors that might be discovered, and
;;; provide a central location for any improvements that are made in the
;;; future.
;;;
;;; http://web.archive.org/web/20061029060658/http://vsg.cape.com/~pbaum/date/date0.htm

#-asdf3.1 (error "cl-gregorian-date requires ASDF 3.1 or later. Please upgrade your ASDF.")

(asdf:defsystem "cl-gregorian-date"
  :description "Common Lisp library for handling Gregorian dates"
  :author "Michael J. Forster <mike@forsterfamily.ca>"
  :license "MIT"
  :version "0.0.1"
  :class :package-inferred-system
  :defsystem-depends-on ("asdf-package-system")
  :depends-on ("cl-gregorian-date/core/all")
  :in-order-to ((test-op (load-op "cl-gregorian-date/test/all")))
  :perform (test-op (o c)
                    (uiop:symbol-call "CL-GREGORIAN-DATE/TEST/ALL" "RUN-TESTS")))

(asdf:defsystem "cl-gregorian-date/test"
  :depends-on ("cl-gregorian-date/test/all"))
