#!/bin/bash

# Usage:
# ./templateMover.sh <oldTemplateName> <newTemplateName>
# The script will replace any matches of <oldTemplateName> with <newTemplateName> in file names and contents, in the working directory.
# Effectively, a glorified regex recursive replace of substring with another substring, for names and content.
# Probably works the best for Ubuntu.

echo "Template mover script (content and filename changer)"

oldTemplateName=$1
newTemplateName=$2

if [ "$#" -ne 2 ]; then
        echo "Invalid number of parameters"
        echo "Usage: $0 <oldTemplateName> <newTemplateName>"
else
        echo "Replacing all mentions and file names with $1 to $2"
        pwd
        find . -type f -exec sed -i "s/$oldTemplateName/$newTemplateName/g" {} +
        for f in *$oldTemplateName*; do
                mv -i -- "$f" "${f//$oldTemplateName/$newTemplateName}";
        done
fi
