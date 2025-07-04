;;; -*- Lisp; coding: utf-8; -*-
;;; SPDX-Copyright-Text: 2025 Tammy Cravit <tammy@tammymakesthings.com>
;;; SPDX-License-Identifier: MIT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Project    : tlc-versiontool
;;; File Name  : src/packages.lisp
;;; Description: Main application package definitions.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#+quicklisp
(ql:quickload '("uiop" "alexandria" "iterate" "str" "split-sequence"
                "clingon"))

(defpackage tlc-versiontool
  (:use #:cl)
  )

(defpackage tlc-versiontool/core
  (:use #:cl)
  (:import-from #:split-sequence
                #:split-sequence)
  (:export #:parse-version-string)
  (:local-nicknames (:s :str)
                    (:it :iterate)
                    (:al :alexandria)))

(defpackage tlc-versiontool/cli
  (:use #:cl)
  (:import-from #:clingon)
  (:import-from #:split-sequence
                #:split-sequence)
  (:local-nicknames (:s :str)
                    (:it :iterate)
                    (:al :alexandria)))

(in-package #:tlc-versiontool)
