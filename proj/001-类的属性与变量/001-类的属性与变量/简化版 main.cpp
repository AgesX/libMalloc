struct LGPerson_IMPL {
    
    
    
    //  NSObject 这一层的继承
    
    struct NSObject_IMPL NSObject_IVARS;
    
    
    
    
    NSString *__strong hobby;
    NSObject *__strong objc;
    
    
    
    // 属性对应的成员变量，带下划线
    // 属性有 getter 、 setter 方法
    
    NSString *__strong _nickName;
    NSString *__strong _name;
};








// @property (nonatomic, copy) NSString *nickName;
// @property (nonatomic, strong) NSString *name;

/* @end */



// @implementation LGPerson

// 怎么生成 - objc_setProperty ?


// 生成属性对应的 getter 和 setter 方法



// why copy + strong ?  clang - llvm
// llvm




static NSString * _I_LGPerson_nickName(LGPerson * self, SEL _cmd) { return (*(NSString *__strong *)((char *)self + OBJC_IVAR_$_LGPerson$_nickName)); }
extern "C" __declspec(dllimport) void objc_setProperty (id, SEL, long, id, bool, bool);




//  属性 nickName， 用 copy 修饰



static void _I_LGPerson_setNickName_(LGPerson * self, SEL _cmd, NSString *nickName) { objc_setProperty (self, _cmd, __OFFSETOFIVAR__(struct LGPerson, _nickName), (id)nickName, 0, 1); }










static NSString * _I_LGPerson_name(LGPerson * self, SEL _cmd) { return (*(NSString *__strong *)((char *)self + OBJC_IVAR_$_LGPerson$_name)); }




//  属性 name， 用 strong 修饰


// 赋值
static void _I_LGPerson_setName_(LGPerson * self, SEL _cmd, NSString *name) { (*(NSString *__strong *)((char *)self + OBJC_IVAR_$_LGPerson$_name)) = name; }
// @end









//   看起来， copy 和 strong 修饰, 对于属性的 getter 方法，没啥影响
