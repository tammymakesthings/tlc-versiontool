;;; -*- Lisp; coding: utf-8; -*-
;;; SPDX-Copyright-Text: 2025 Tammy Cravit <tammy@tammymakesthings.com>
;;; SPDX-License-Identifier: MIT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Project    : tlc-versiontool
;;; File Name  : tests/packages.lisp
;;; Description: Package definitions for the cl-versiontool-tests test suite.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defpackage tlc-versiontool-tests
  (:use :cl
        :tlc-versiontool
        :rove)
  (:local-nicknames (:s :str)
                    (:it :iterate)
                    (:app :tlc-versiontool)))


(defpackage tlc-versiontool-tests/main
  (:use :cl
        :tlc-versiontool
        :rove)
  (:local-nicknames (:s :str)
                    (:it :iterate)
                    (:app :tlc-versiontool)
                    (:acore :tlc-versiontool/core)))

(defpackage tlc-versiontool-tests/core
  (:use :cl
        :tlc-versiontool
        :rove)
  (:local-nicknames (:s :str)
                    (:it :iterate)
                    (:app :tlc-versiontool)
                    (:acore :tlc-versiontool/core)))

(defpackage tlc-versiontool-tests/cli
  (:use :cl
        :tlc-versiontool
        :rove)
  (:import-from :clingon)
  (:local-nicknames (:s :str)
                    (:it :iterate)
                    (:app :tlc-versiontool)
                    (:acore :tlc-versiontool/core)
                    (:acli :tlc-versiontool/cli)))

(in-package :tlc-versiontool-tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :tlc-versiontool)' in your Lisp.

(deftest test-target-1
    (testing "should (= 1 1) to be true"
	     (ok (= 1 1))))
