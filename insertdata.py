#!/usr/bin/env python
#inserting data to remote redisdb
import redis
rc = redis.Redis(host='192.168.100.13', port=6379)
i = 1
while (i< 101):
    rc.lpush('datanew', i)
    i += 1
