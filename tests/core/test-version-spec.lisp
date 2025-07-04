;;; -*- Lisp; coding: utf-8; -*-
;;; SPDX-Copyright-Text: 2025 Tammy Cravit <tammy@tammymakesthings.com>
;;; SPDX-License-Identifier: MIT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Project    : tlc-versiontool
;;; File Name  : tests/core/test-version-spec.lisp
;;; Description: Unit tests for the version spec core functionality.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package tlc-versiontool-tests/core)

(deftest test-parse-version-string
  (testing "returns correct number of elements"
           (ok (= (length (parse-version-string "1")) 4))
           (ok (= (length (parse-version-string "1.0")) 4))
           (ok (= (length (parse-version-string "1.0.0")) 4))
           (ok (= (length (parse-version-string "1.0.0.0")) 4))
           (ok (= (length (parse-version-string "")) 4))
           (ok (= (length (parse-version-string nil)) 4)))
  (testing "returns correct elements"
           (ok (= (nth 0 (parse-version-string "1.2.3.4")) 1))
           (ok (= (nth 1 (parse-version-string "1.2.3.4")) 2))
           (ok (= (nth 2 (parse-version-string "1.2.3.4")) 3))
           (ok (= (nth 3 (parse-version-string "1.2.3.4")) 4)))
  (testing "returns correct default elements"
           (ok (= (nth 0 (parse-version-string "1")) 1))
           (ok (= (nth 1 (parse-version-string "1")) 0))
           (ok (= (nth 2 (parse-version-string "1")) 0))
           (ok (= (nth 3 (parse-version-string "1")) 0))))

           