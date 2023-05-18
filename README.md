# pgyvpn
蒲公英VPN最小镜像，支持 amd64, i386, arm, arm64
**注意：这不是官方镜像，如果介意请使用官方镜像：https://hub.docker.com/r/bestoray/pgyvpn**

免费版有3个客户端限制，超过3个需要购买收费服务

支持 amd64, i386, arm, arm64。

树莓派，香蕉派等 arm 架构的 pi 或者白裙白威联通都可以用了哦

# 食用方式
```
docker run -d \
  --restart=always \
  --device=/dev/net/tun \
  --net=host \
  --cap-add=NET_ADMIN \
  --cap-add=SYS_ADMIN \
  --env PGY_USERNAME=蒲公英用户名 \
  --env PGY_PASSWORD=蒲公英密码 \
  --name pgyvpn \
  benzbrake/pgyvpn
```

# 检查是否运行好了
```
ifconfig | grep oray
```
只要出现了相关网卡信息就可以了
```
oray_vnc: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1300
```

# 问题反馈

https://blog.iplayloli.com/using-dandelion-vpn-intelligent-networking-to-realize-remote-networking-of-equipment.html
