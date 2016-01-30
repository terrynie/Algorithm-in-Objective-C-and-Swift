#Linked List - 链表
链表是线性表的一种。线性表是最基本、最简单、也是最常用的一种数据结构。线性表中数据元素之间的关系是一对一的关系，即除了第一个和最后一个数据元素之外，其它数据元素都是首尾相接的。线性表有两种存储方式，一种是顺序存储结构，另一种是链式存储结构。我们常用的数组就是一种典型的顺序存储结构。

相反，链式存储结构就是两个相邻的元素在内存中可能不是相邻的，每一个元素都有一个指针域，指针域一般是存储着到下一个元素的指针。这种存储方式的优点是插入和删除的时间复杂度为 O(1)，不会浪费太多内存，添加元素的时候才会申请内存，删除元素会释放内存。缺点是访问的时间复杂度最坏为 O(n)。

顺序表的特性是随机读取，也就是访问一个元素的时间复杂度是O(1)，链式表的特性是插入和删除的时间复杂度为O(1)。

链表就是链式存储的线性表。根据指针域的不同，链表分为单向链表、双向链表、循环链表等等。

#代码实现
###Objective-C
```
@interface LinkNode: NSObject
{
    NSInteger _value;
    LinkNode *_next;
}
@property NSInteger _value;
@property LinkNode *_next;

- (void)initWithValue: (NSInteger)val;
@end

#import "LinkList.h"

@implementation LinkNode

@synthesize _next;
@synthesize _value;

- (void)initWithValue:(NSInteger)val {
    _value = val;
    _next = nil;
}

@end
```
###Swift
```
class LinkNode<T>: NSObject {
    var value: T?
    var next: LinkNode?
}
```
#链表的基本操作
##反转链表
###单项链表
###Objective-C
```
@interface LinkNode: NSObject
{
    NSInteger _value;
    LinkNode *_next;
}
@property NSInteger _value;
@property LinkNode *_next;

- (void)initWithValue: (NSInteger)val;
@end

#import "LinkList.h"

@implementation LinkNode

@synthesize _next;
@synthesize _value;

- (void)initWithValue:(NSInteger)val {
    _value = val;
    _next = nil;
}

@end

LinkNode* reverse(LinkNode *head) {
    LinkNode *prev = NULL;
    while (head != NULL) {
        LinkNode *next = [head _next];
        [head set_next:prev];
        prev = head;
        head = next;
    }
    return prev;
}
```
###Swift
```
```