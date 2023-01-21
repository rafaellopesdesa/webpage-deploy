jekyll build
del .\site.tar.gz
tar.exe -cpzf site.tar.gz -C _site .
scp site.tar.gz rclsa@webadmin.oit.umass.edu:./public_html/
ssh rclsa@webadmin.oit.umass.edu "cd public_html; tar xf site.tar.gz; chmod -R 755 *; rm -rf site.tar.gz"
