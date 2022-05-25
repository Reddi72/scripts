httpd_v=$(httpd -v 2>&1 | awk -F  '/' 'NR==1{print $2}' | awk '{print $1}')
httpd_s=$(systemctl status httpd |grep Active | awk '{print $2}')
httpd_p=$(cat /etc/httpd/conf/httpd.conf | grep ^Listen | awk '{print $2}')
echo "the httpd version is: $httpd_v"
echo "the current status of httpd is: $httpd_s"
echo "the port for httpd is: $httpd_p"

