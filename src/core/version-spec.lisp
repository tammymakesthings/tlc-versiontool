;;; -*- Lisp; coding: utf-8; -*-
;;; SPDX-Copyright-Text: 2025 Tammy Cravit <tammy@tammymakesthings.com>
;;; SPDX-License-Identifier: MIT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Project    : tlc-versiontool
;;; File Name  : src/core/version-spec.lisp
;;; Description: Core functionality for parsing version strings.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package tlc-versiontool/core)

(defun parse-version-string (verstring)
  (let ((version-list (uiop/version:parse-version verstring)))
    (list
     (or (nth 0 version-list) 0)
     (or (nth 1 version-list) 0)
     (or (nth 2 version-list) 0)
     (or (nth 3 version-list) 0))))