#!/bin/sh -l


main() {
    echo files in cwd
    ls -la
    echo file in /github/workspace
    ls -la /github/workspace
    echo pwd
    pwd

    echo "/github"
    find "/github"
    env
    sleep 5

    html2pdf "$@"
}

main "$@"