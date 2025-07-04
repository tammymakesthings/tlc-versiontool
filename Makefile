### -*- Makefile; coding: utf-8;  -*-
### SPDX-Copyright-Text: 2025 Tammy Cravit <tammy@tammymakesthings.com>
### SPDX-License-Identifier: MIT
##############################################################################
### Project    : tlc-versiontool
### File Name  : Makefile
### Description: Makefile
##############################################################################

LISP         ?= ros -L sbcl -q --asdf run
QLOT         ?= qlot
ROVE         ?= rove
ROVE_OPTS    ?= -r dot

PROJECT_NAME := tlc-versiontool
BUILD_DIR    := $(HOME)/common-lisp/$(PROJECT_NAME)

BUILD_FILES   = $(BUILD_DIR)/qlfile
ASD_FILES     = $(wildcard *.asd)
SRC_FILES     = $(wildcard src/*.lisp) \
				$(wildcard src/core/core/*.lisp) \
				$(wildcard src/core/cli/*.lisp) \
				tests/packages.lisp
TEST_FILES    = $(wildcard tests/test-*.lisp) \
				$(wildcard tests/core/test-*.lisp) \
				$(wildcard tests/cli/test-*.lisp)
ROS_FILES     = $(wildcard roswell/*.ros)

default: test

test: 
	@echo "===> Running unit tests for $(PROJECT_NAME)"
	$(ROVE) $(ROVE_OPTS) $(TEST_FILES)

build: $(BUILD_FILES) $(ASD_FILES) $(SRC_FILES)
	@echo "===> Running build for $(PROJECT_NAME)"
	@/bin/true

docs: $(BUILD_FILES) $(ASD_FILES) $(SRC_FILES) $(ROS_FILES)
	@echo "===> Building docs for $(PROJECT_NAME)"
	@/bin/true

clean:
	@echo "===> Running clean task for $(PROJECT_NAME)"
	@/bin/true

config:
	@echo "==================================================================="
	@echo "=====                 Makefile Configuration                  ====="
	@echo "==================================================================="
	@echo ""
	@echo "LISP = $(LISP)"
	@echo "PROJECT_NAME = $(PROJECT_NAME)"
	@echo "BUILD_DIR    = $(BUILD_DIR)"
	@echo ""
	@echo "BUILD_FILES = $(BUILD_FILES)"
	@echo "ASD_FILES = $(ASD_FILES)"
	@echo "SRC_FILES = $(SRC_FILES)"
	@echo "TEST_FILES = $(TEST_FILES)"
	@echo "ROS_FILES = $(ROS_FILES)"
	@echo ""

.PHONY: clean config build test docs
