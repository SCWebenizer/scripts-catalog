#!/bin/bash

current_path=$(pwd)
path=$(realpath "${BASH_SOURCE:-$0}")
dir_path=$(dirname $path)

echo 'The current path is' $current_path
echo '-----------------------------------'
echo 'The absolute path is' $path
echo '-----------------------------------'
echo 'The directory path is' $dir_path
