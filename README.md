# magnetw-web

[![Docker Pulls](https://img.shields.io/docker/pulls/gowah/forsaken-mail.svg)](https://hub.docker.com/r/gowah/forsaken-mail)

## 运行命令

```
docker run --restart=always --name forsaken-mail -d -p 25:25 -p 3000:3000  gowah/forsaken-mail:latest
```


## 正确设置DNS

为了接收电子邮件，您的smtp服务器地址应该在某处可用。应将两条记录添加到DNS记录中。让我们假装我们想要收到以下电子邮件`*@subdomain.domain.com`：

- 首先是MX记录：`subdomain.domain.com MX 10 mxsubdomain.domain.com`。
- 然后A记录：`mxsubdomain.domain.com A the.ip.address.of.your.mailin.server`。

您可以启动Mailin（请参阅下一节）并使用[smtp服务器测试](http://mxtoolbox.com/diagnostic.aspx)程序验证一切正确。

