#!/usr/bin/env python
#read data from redisdb in reverse order
import redis
rc = redis.Redis(host='192.168.100.6', port=17164)
while(rc.llen('data')!=0):
    print(rc.lpop('data'))
