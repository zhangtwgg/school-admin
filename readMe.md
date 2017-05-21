## 管理系统
#### 整体说明
> `Restful`风格架构，采用`spring-boot`框架，使用`spring-data-rest`以及`spring-data-jpa`进行数据操作；使用`bootstrap`进行前端展现

**配置的时候注意yml文件的格式（尤其是空格）**

推荐开发工具为`IntelliJ IDEA`,导入项目后不做任何改动即可使用（eclipse要经过一个繁琐的项目配置过程） 
[下载IntelliJ IDEA](https://download.jetbrains.com/idea/ideaIC-2017.1.3.exe)
#### 编译步骤
> 需要安装`jdk1.8`,`mysql-5.7.17`以及`apache-maven-3.3.9`
1. 下载
```shell
git clone https://github.com/alleyZ/school-admin. 
```
2. 配置
> 1. 端口
> 修改配置文件`application.yml`的`port`值
> 2. 项目根路径
> 修改配置文件`application.yml`的`context-path:`值，默认方式方式`http://localhost:8081/`
>3. 数据库
>  修改配置文件`application.yml`的`datasource`中的各选项

3. 编译
```sbtshell
#到项目根路径(pom.xml文件路径)
mvn clean package -DskipTests
```

4. 导入库与数据
> 将`~/doc`下的sql导入到数据库中即可

5. 运行
```sbtshell
# Ide中，右击运行`Application`类即可
# 或者命令行(依赖第二步编译好的jar)中执行
java -jar school-admin-1.0 ckage com.alleyz.school.Application
#执行此句的时候需要配好java的classpath
```
6. 访问
```
# 访问地址格式
http://localhost:{port}/{context-path}
```
> 默认地址[点击访问](http://localhost:8081/)