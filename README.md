
### 系统结构
Halo 博客系统分为以下四个部分：

|项目名称|简介|
|-------|-------|
|halo-app|提供整个系统的服务，采用 Spring Boot 开发|
|halo-admin|负责后台管理的渲染，采用 Vue 开发，已集成在 Halo 运行包内，无需独立部署。|
|halo-comment|评论插件，采用 Vue 开发，在主题中运行方式引入构建好的 Javascript 文件即可|
|halo-theme-*|主题项目集，采用 Freemarker 模板引擎编写，需要包含一些特殊的配置才能够被 halo 所使用|


#### 配置文件说明
1. 如果需要自定义端口，修改 `server` 节点下的 `port` 即可。
2. 默认使用的是 `H2 Database` 数据库，这是一种嵌入式的数据库，使用起来非常方便。需要注意的是，默认的用户名和密码为 `admin` 和 `123456`，这个是自定义的，最好将其修改，并妥善保存。
3. 如果需要使用 `MySQL` 数据库，需要将 `H2 Database` 的所有相关配置都注释掉，并取消 `MySQL` 的相关配置。请自行配置 `MySQL` 并创建数据库，以及修改配置文件中的用户名和密码。
4. `h2` 节点为 `H2 Database` 的控制台配置，默认是关闭的，如需使用请将 `h2.console.settings.web-allow-others` 和 `h2.console.enabled` 设置为 `true`。控制台地址即为 域名`/h2-console`。注意：非紧急情况，不建议开启该配置。
5. `server.compression.enabled` 为 `Gzip` 功能配置，如有需要请设置为 `true`，需要注意的是，如果你使用 `Nginx` 或者 `Caddy` 进行反向代理的话，默认是有开启 `Gzip` 的，所以这里可以保持默认。
6. `halo.admin-path` 为后台管理的根路径，默认为 `admin`，如果你害怕别人猜出来默认的 `admin`（就算猜出来，对方什么都做不了），请自行设置。仅支持一级，且前后不带 `/`。
7. `halo.cache` 为系统缓存形式的配置，可选 `memory` 和 `level`，默认为 `memory`，将数据缓存到内存，使用该方式的话，重启应用会导致缓存清空。如果选择 `level`，则会将数据缓存到磁盘，重启不会清空缓存。如不知道如何选择，建议默认。

#### 注意
1. 使用 MySQL 之前，必须要先新建一个 halodb 数据库，MySQL 版本需 5.7 以上。
    ```sql
    create database halodb character set utf8mb4 collate utf8mb4_bin;
    ```
    
2. `Halo` 的整个额外文件全部存放在 `~/.imusk/halo` 目录下，包括 `application.yaml`（用户配置文件），`template/themes`（主题目录），`upload`（附件上传目录），`halo.db.mv`（数据库文件）。一定要保证 `~/.halo` 的存在，你博客的所有资料可都存在里面。所以你完全不需要担心安装包的安危，它仅仅是个服务而已。
    ```bash
    # Linux Config Path
    ~/.imusk/halo
    
    # Windows Config Path
    C:/Users/用户名/.imusk/halo
    ```





