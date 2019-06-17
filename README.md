# redis-helloworld

This stack is for 101 level intro for setting up redis hello world environment with: <br><br>
(i) Admin Work Station: This is our Test/Benchmark Point from which we will insert, read and measure performance of Redis.<br>
-> Use install-packages.sh to get your testbed setup. <br>
-> once Redis Origin/Master is up check connection from Admin Work Station with: <br>
$ redis-cli -h <ip-of-redis-osserver> ping and make sure you see PONG response. <br>
 -> once Redis Replica is up check connection from Admin Work Station with:<br> 
$ redis-cli -h <ip-of-redise-replica> -p <port#> ping and make sure you see PONG response. <br><br>
(ii) Redis Origin/Master Server Setup: Data to be inserted Here from Admin Work Station.<br>
  -> Use install-redis-osserver.sh to install and configure your redis-server. <br><br>
(iii) Redis Enterprise Replica/Slave Setup: Data gets replicated from Origin/Master Server and Data Read from Here by Admin Work Station.<br>
  -> Use install-redise-replica.sh to install and configure your replica instance. Once installation completes go to http://<ip>:8443 to create the redisdb and select remote replication with redis://<ip-of-redis-osserver>:6379 and initate replication. <br> <br>



