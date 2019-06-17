# redis-helloworld

This stack is for 101 level intro for setting up redis hello world environment with: <br><br>
(i) Admin work station: This is our test/benchmark point from which we will insert, read and measure performance of Redis.<br>
-> Use install-packages.sh to get your testbed setup. <br>
-> once redis origin/master is up check connection from admin work station with: <br>
$ redis-cli -h ip-of-redis-osserver -p <port#> ping <br>
and make sure you see PONG response. <br>
 -> once redis replica is up check connection from admin work station with:<br> 
$ redis-cli -h ip-of-redise-replica -p <port#> ping <br>
and make sure you see PONG response. <br><br>
(ii) Redis origin/master server Setup: Data to be inserted Here from admin work station.<br>
  -> Use install-redis-osserver.sh to install and configure your redis-server. <br><br>
(iii) Redis enterprise replica/slave setup: Data gets replicated from origin/master server and data read from Here by admin work station.<br>
  -> Use install-redise-replica.sh to install and configure your replica instance. Once installation completes go to http://<ip>:8443 to create the redisdb and select remote replication with redis://<ip-of-redis-osserver>:6379 and initate replication. <br> <br>



