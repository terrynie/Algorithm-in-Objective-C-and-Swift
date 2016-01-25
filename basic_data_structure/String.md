#String
在Objective-C中，字符串不是基本数据类型，而是作为对象存在的，所以创建一个字符串就是：<br>
```
NSString *s1 = @""; //创建一个空字符串
NSString *test = @"Hello World!";
testLen = test.length; //字符串test的长度，也可以使用[test length]
NSLog(@"%lu",(unsigned long)testLen);
NSString *subStr1 = [test substringFromIndex:3]; //@"lo World!"
NSString *subStr2 = [test substringToIndex:5];   //@"Hello"
NSString *subStr3 = [test substringWithRange:NSMakeRange(1, 5)];  //@"ello "
```
而在Swift中，字符串是基本数据类型，创建一个字符串也是极其简单：<br>
```
let test = "Hello World!"
```