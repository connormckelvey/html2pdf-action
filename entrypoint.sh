#!/bin/sh -l


main() {
    ls -la
    pwd
    html2pdf "$@"
}

main "$@"