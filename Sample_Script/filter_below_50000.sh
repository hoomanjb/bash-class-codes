#!/bin/bash
Source_dir=/root/class_works
cat $Source_dir/file.nu | awk '{if  (substr($0,10,5) <= "50000") print $0 }'

