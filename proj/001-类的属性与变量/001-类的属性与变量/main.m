//
//  main.m
//  001-类的属性与变量
//
//  Created by cooci on 2020/9/12.
//  Copyright © 2020 cooci. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

#ifdef DEBUG
#define LGLog(format, ...) printf("%s\n", [[NSString stringWithFormat:format, ## __VA_ARGS__] UTF8String]);
#else
#define LGLog(format, ...);
#endif

void lgObjc_copyIvar_copyProperies(Class pClass){
    
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList(pClass, &count);
    for (unsigned int i=0; i < count; i++) {
        Ivar const ivar = ivars[i];
        //获取实例变量名
        const char*cName = ivar_getName(ivar);
        NSString *ivarName = [NSString stringWithUTF8String:cName];
        LGLog(@"class_copyIvarList:%@",ivarName);
    }
    free(ivars);

    unsigned int pCount = 0;
    objc_property_t *properties = class_copyPropertyList(pClass, &pCount);
    for (unsigned int i=0; i < pCount; i++) {
        objc_property_t const property = properties[i];
        //获取属性名
        NSString *propertyName = [NSString stringWithUTF8String:property_getName(property)];
        //获取属性值
        LGLog(@"class_copyProperiesList:%@",propertyName);
    }
    free(properties);
}







// 成员变量 ivar

// vs

// 属性 property



@interface LGPerson : NSObject
{
    
    // 成员变量 ivar
    
    NSString *hobby;
    NSObject *objc;
}

// 属性 property

@property (nonatomic, copy) NSString *nickName;
@property (nonatomic, strong) NSString *name;




@end


@implementation LGPerson

@end










#pragma mark - 各种类型编码


void lgTypes(void){
    NSLog(@"char --> %s",@encode(char));
    NSLog(@"int --> %s",@encode(int));
    NSLog(@"short --> %s",@encode(short));
    NSLog(@"long --> %s",@encode(long));
    NSLog(@"long long --> %s",@encode(long long));
    NSLog(@"unsigned char --> %s",@encode(unsigned char));
    NSLog(@"unsigned int --> %s",@encode(unsigned int));
    NSLog(@"unsigned short --> %s",@encode(unsigned short));
    NSLog(@"unsigned long --> %s",@encode(unsigned long long));
    NSLog(@"float --> %s",@encode(float));
    NSLog(@"bool --> %s",@encode(bool));
    NSLog(@"void --> %s",@encode(void));
    NSLog(@"char * --> %s",@encode(char *));
    NSLog(@"id --> %s",@encode(id));
    NSLog(@"Class --> %s",@encode(Class));
    NSLog(@"SEL --> %s",@encode(SEL));
    int array[] = {1,2,3};
    NSLog(@"int[] --> %s",@encode(typeof(array)));
    typedef struct person{
        char *name;
        int age;
    }Person;
    NSLog(@"struct --> %s",@encode(Person));
    
    typedef union union_type{
        char *name;
        int a;
    }Union;
    NSLog(@"union --> %s",@encode(Union));

    int a = 2;
    int *b = {&a};
    NSLog(@"int[] --> %s",@encode(typeof(b)));
}

void one(void){
    
    LGPerson *person = [LGPerson alloc];
   
   //   ivar_getTypeEncoding(CFBridgingRetain(person.name));
   
    Class pClass     = object_getClass(person);
   
    lgObjc_copyIvar_copyProperies(pClass);
    
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        //      lgTypes();
        
        
        //   看的是， 继承关系
        
        /*
         
         Class tcls = self->ISA()
         
         if (tcls == cls) return YES;
        
        */
        
        
        //  [NSObject class] 的 isa 是 meta NSObject
        //  meta NSObject 继承自 [NSObject class]
        
        
        BOOL re1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];       //
        BOOL re2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];     //
        
        
        
        
        
        // LGPerson meta class,  NSObject meta , NSObject class
        BOOL re3 = [(id)[LGPerson class] isKindOfClass:[LGPerson class]];       //
        
        
        BOOL re4 = [(id)[LGPerson class] isMemberOfClass:[LGPerson class]];     //
        
        
        NSLog(@" re1 :%hhd\n re2 :%hhd\n re3 :%hhd\n re4 :%hhd\n",re1,re2,re3,re4);
        
        
        
        
        
        

        BOOL re5 = [(id)[NSObject alloc] isKindOfClass:[NSObject class]];       //
        BOOL re6 = [(id)[NSObject alloc] isMemberOfClass:[NSObject class]];     //
        BOOL re7 = [(id)[LGPerson alloc] isKindOfClass:[LGPerson class]];       //
        
        
        BOOL re8 = [(id)[LGPerson alloc] isMemberOfClass:[LGPerson class]];     //
        
        
        NSLog(@" re5 :%hhd\n re6 :%hhd\n re7 :%hhd\n re8 :%hhd\n",re5,re6,re7,re8);
        
        
        
        
        
        // 1000 1111   ,            这个
        
        
        
        
        
        
        // 1000 0000
        // 1011 0001
        
        
        // 1110 1110
        
        
        // 作业: 面试题 1 + 2的分析
        //
        
        
         
    }
    return 0;
}
