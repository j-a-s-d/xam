#!/usr/bin/env bash

function RUN_TEST {
	nim c -r $1
	rm $1
}

cd tests
RUN_TEST test_xam
RUN_TEST test_xam_ansi
RUN_TEST test_xam_time
RUN_TEST test_xam_exceptions
RUN_TEST test_xam_files
RUN_TEST test_xam_directories
RUN_TEST test_xam_html
RUN_TEST test_xam_jsons
RUN_TEST test_xam_looping
RUN_TEST test_xam_maths
RUN_TEST test_xam_nimlang
RUN_TEST test_xam_semanticversion
RUN_TEST test_xam_set
RUN_TEST test_xam_seqs
RUN_TEST test_xam_sizes
RUN_TEST test_xam_strings
RUN_TEST test_xam_structures
RUN_TEST test_xam_temp
cd ..
