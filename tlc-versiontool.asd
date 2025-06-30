;;; -*- Lisp; coding: utf-8; -*-
;;; SPDX-Copyright-Text: 2025 Tammy Cravit <tammy@tammymakesthings.com>
;;; SPDX-License-Identifier: MIT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Project    : tlc-versiontool
;;; File Name  : tlc-versiontool.asd
;;; Description: ASDF system definition for the tlc-versiontool tool.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#+quicklisp
(ql:quickload '("alexandria" "uiop" "split-sequence" "iterate" "str" "clingon"))

(in-package :asdf-user)

(defsystem "tlc-versiontool"
    :version "0.0.1"
    :author "Tammy Cravit"
    :mailto "tammy@tammymakesthings.com"
    :license "MIT"
    :depends-on ("alexandria"
		 "split-sequence"
		 "iterate"
		 "str"
		 "clingon")
    :components (
		 (:module "src"
			  :serial t
			  :components
			  (
			   (:file "packages")
			   (:module "core"
				    :serial t
				    :components
				    (
				     (:file "version-spec")
				     (:file "version-file")
				     )
				    )
			   (:module "cli"
				    :serial t
				    :components
				    (
				     (:file "get")
				     (:file "set")
				     (:file "bump")
				     (:file "toplevel")
				     )
				    )
			   )
			  )
		 )

    :description "Version number file management in Lisp"
    :in-order-to ((test-op (test-op "tlc-versiontool-tests"))))
