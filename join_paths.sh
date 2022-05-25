#!/bin/bash
path1="/etc/httpd/conf"
path2="/usr/local/bin"

join_path=${path1}/${path2}
echo "${join_path}"

echo="convert strings into lower/upper"
my_name="shell"
my_name_up=${my_name^^}
my_name_lo=${my_name,,}
echo "upper data: $my_name_up"
echo "lower data: $my_name_lo"
echo "$my_name"

httpd_conf_path_line="/etc/httpd/conf/httpd.conf"
httpd_conf_home=$(dirname $httpd_conf_path_line)
httpd_conf_line=$(basename $httpd_conf_path_line)
echo "httpd conf path line:$httpd_conf_path_line"
echo "httpd conf home: $httpd_conf_home"
echo "httpd conf line: $httpd_conf_line"
