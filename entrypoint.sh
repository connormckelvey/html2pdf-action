#!/bin/sh -l


main() {
    echo files in cwd
    ls -la
    echo file in /github/workspace
    ls -la /github/workspace
    echo pwd
    pwd
    html2pdf "$@"
}

main "$@"