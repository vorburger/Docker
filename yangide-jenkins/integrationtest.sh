#!/bin/bash
set -e
set -x

# ? /bin/tini -- /usr/local/bin/jenkins.sh
/usr/local/bin/jenkins.sh &

# We need to wait to let Jenkins actually start up
until [ "`curl --silent --show-error --connect-timeout 1 -I http://localhost:8080/cli | grep '302 Found'`" != "" ];
do
  sleep 5
done

# Now lets build our Job, and fail if that doesn't work
wget http://localhost:8080/jnlpJars/jenkins-cli.jar -P /tmp
java -jar /tmp/jenkins-cli.jar -s http://localhost:8080/ build yangide -f -s -v -w

# Shutdown Jenkins (via its PID, as its the last started background process)
kill $!
