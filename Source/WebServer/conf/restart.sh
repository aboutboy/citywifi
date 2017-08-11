$TOMCAT_HOME/bin/shutdown.sh
killall -9 java
rm -rf $TOMCAT_HOME/work/Catalina/localhost
$TOMCAT_HOME/bin/startup.sh
