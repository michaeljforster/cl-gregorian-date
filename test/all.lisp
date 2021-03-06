;;;; test/all.lisp

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

;; Test name collisions preclude use of UIOP:DEFINE-PACKAGE and
;; :USE-REEXPORT.
(defpackage "CL-GREGORIAN-DATE/TEST/ALL"
  (:use "CL")
  (:import-from "LISP-UNIT")
  (:import-from "CL-GREGORIAN-DATE/TEST/JULIAN-DAY")
  (:import-from "CL-GREGORIAN-DATE/TEST/DATE")
  (:export "RUN-TESTS"))

(in-package "CL-GREGORIAN-DATE/TEST/ALL")

(defun run-tests ()
  (lisp-unit:run-tests :all "CL-GREGORIAN-DATE/TEST/JULIAN-DAY")
  (lisp-unit:run-tests :all "CL-GREGORIAN-DATE/TEST/DATE"))
