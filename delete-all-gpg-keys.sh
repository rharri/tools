#!/usr/bin/env bash
gpg --list-keys --with-colons | awk -F: '$1 == "pub" {print $5}' | xargs gpg --batch --yes --delete-keys
