# php-extensions
PHP 返回值使用

## Requirement
PHP 5.2 +

## Install
### Linux 编译安装
```
$ /$path/phpize
$ ./configure
$ make && make install
$ //添加生成的 gglinux.so 到 php.ini

```
### Document
1. config.m4为配置定义文件，用来读取编译命令。

2. ./modules/gglinux.so 为编译后生成的二进制文件。

3. test.php 测试文件。

4. 代码在gglinux.c中，编译完成并且加入到php.ini后。

5. 运行 $ php test.php。输出 见注释。

### API

```
/*
 输出 Hello World!
*/
void gglinux_hello()

/*
 返回 int 42
*/
gglinux_long_42()

/*
 返回 string
*/
gglinux_str_hello()

/*
 返回未被使用的返回值
*/
 gglinux_no_return()

