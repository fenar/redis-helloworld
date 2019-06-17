#!/usr/bin/env python
#read data from redisdb in reverse order
import redis
rc = redis.Redis(host='192.168.100.14', port=11758)
while(rc.llen('datanew')!=0):
    print(rc.lpop('datanew'))
