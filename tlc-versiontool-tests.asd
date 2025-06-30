;;; -*- Lisp; coding: utf-8; -*-
;;; SPDX-Copyright-Text: 2025 Tammy Cravit <tammy@tammymakesthings.com>
;;; SPDX-License-Identifier: MIT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Project    : tlc-versiontool
;;; File Name  : tlc-versiontool-tests.asd
;;; Description: ASDF system definition for the unit test suite.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#+quicklisp
(ql:quickload '("rove"))

(in-package :asdf-user)

(defsystem "tlc-versiontool-tests"
    :author "Tammy Cravit"
    :license "MIT"
    :depends-on ("tlc-versiontool"
		 "rove")
    :components (
		 (:module "tests"
			  :serial t
			  :components
			  (
			   (:file "packages")
			   (:module "core"
				    :serial t
				    :components
				    (
				     (:file "test-version-spec")
				     (:file "test-version-file")
				     )
				    )
			   (:module "cli"
				    :serial t
				    :components
				    (
				     (:file "test-bump")
				     (:file "test-get")
				     (:file "test-set")
				     (:file "test-toplevel")
				     )
				    )
			   )
			  )
		 )
    :description "Test system for tlc-versiontool"
    :perform (test-op (op c) (symbol-call :rove :run c)))
