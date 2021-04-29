#!/usr/bin/env bash

red=$(tput setaf 1)
none=$(tput sgr0)

show_help() {
    printf "usage: $0 [--help] [--report] [--test] [<path to package>]

Script for running all unit and widget tests with code coverage.
(run from root of repo)

where:
    <path to package>
        runs all tests with coverage and reports
    -t, --test
        runs all tests with coverage, but no report
    -r, --report
        generate a coverage report
        (requires lcov, install with Homebrew)
    -h, --help
        print this message
"
}

run_tests() {
    if [[ -f "pubspec.yaml" ]]; then
        rm -rf coverage/
        flutter test --coverage --track-widget-creation
    else
        printf "\n${red}Error: this is not a Flutter project${none}"
        exit 1
    fi
}

run_report() {
    if [[ -f "coverage/lcov.info" ]]; then
        genhtml -o coverage coverage/lcov.info --no-function-coverage -s --sort
        rm -f coverage/lcov.info
        open coverage/index.html
    else
        printf "\n${red}Error: no coverage info was generated${none}"
        exit 1
    fi
}

case $1 in
    -h|--help)
        show_help
        ;;
    -t|--test)
        run_tests
        ;;    
    -r|--report)
        run_report
        ;;
    *)
        run_tests
        run_report
        ;;
esac


