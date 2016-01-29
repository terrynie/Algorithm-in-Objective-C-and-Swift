#String
在Objective-C中，字符串不是基本数据类型，而是作为对象存在的，所以创建一个字符串就是：<br>
```
NSString *s1 = @""; //创建一个空字符串
NSString *test = @"Hello World!";
testLen = [test length]; //字符串test的长度
NSLog(@"%lu",(unsigned long)testLen);
NSString *subStr1 = [test substringFromIndex:3]; //@"lo World!"
NSString *subStr2 = [test substringToIndex:5];   //@"Hello"
NSString *subStr3 = [test substringWithRange:NSMakeRange(1, 5)];  //@"ello "
char c = [test characterAtIndex:2]; //'l'

NSMutableString *mutableStr = [NSMutableString stringWithString:@"Hello Objective-C"]; //"Hello Objective-C"
[mutableStr insertString:@"World! " atIndex:6];   //"Hello World! Objective-C"
[mutableStr appendFormat:@" %d",5];   //"Hello World! Objective-C 5"
[mutableStr setString:@"Hello World! Objective-C"];  //"Hello World! Objective-C"
[mutableStr appendString:@" is awesome!"]; //"Hello World! Objective-C is awesome!"
[mutableStr deleteCharactersInRange:NSMakeRange(12, 24)]; //"Hello World!"
[mutableStr replaceCharactersInRange:NSMakeRange(6, 6) withString:@"Objective-C!"]; //"Hello Objective-C!"
```
而在Swift中，字符串是基本数据类型，创建一个字符串也是极其简单：<br>
```
let swiftStr1: String = "Hello World!" //"Hello World!"
var strLen: Int = swiftStr1.characters.count //12
let swiftStr2: String = String.init(format: "Hello World! %d", 5) //"Hello World! 5"
let index = swiftStr2.startIndex.advancedBy(3)  //3
let index1 = swiftStr2.startIndex.advancedBy(5) //5
let range = Range<String.Index>(start: swiftStr2.startIndex.advancedBy(1), end: swiftStr2.startIndex.advancedBy(6)) //1..<6
let subStr1: String = swiftStr2.substringFromIndex(index) //"lo World! 5"
let subStr2: String = swiftStr2.substringToIndex(index1)  //"Hello"
let subStr3: String = swiftStr2.substringWithRange(range) //"ello "
let c = swiftStr2.substringWithRange(index2range) //"l"

let index2start = swiftStr2.startIndex.advancedBy(2)  //2
let index2end = swiftStr2.startIndex.advancedBy(3)    //3
let index2range = Range<String.Index>(start: index2start, end: index2end) //2..<3
let c = swiftStr2.substringWithRange(index2range) //"l"

var str2 = "Hello ObjectiveC"  //"Hello ObjectiveC"
str2.insert("-", atIndex: str2.startIndex.advancedBy(15)) //"Hello Objective-C"
str2.appendContentsOf(" World!")  //"Hello Objective-C World!"
str2.replaceRange(Range<String.Index>(start: str2.startIndex.advancedBy(0), end: str2.endIndex.advancedBy(0)), with: "Hello World!") //"Hello World!"
str2.removeAtIndex(str2.endIndex.advancedBy(-1))   //str2 = "Hello World"
str2.removeRange(Range<String.Index>(start: str2.endIndex.advancedBy(-6), end: str2.endIndex.advancedBy(0)))  //"Hello"
```