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









// 默认参数
// LGPerson * self, SEL _cmd


// LGPerson * self,
// id
// 符号 @， 通配符， 通用类型


// SEL _cmd
// 符号 :




static NSString * _I_LGPerson_name(LGPerson * self, SEL _cmd) { return (*(NSString *__strong *)((char *)self + OBJC_IVAR_$_LGPerson$_name)); }




//  属性 name， 用 strong 修饰


// 赋值
static void _I_LGPerson_setName_(LGPerson * self, SEL _cmd, NSString *name) { (*(NSString *__strong *)((char *)self + OBJC_IVAR_$_LGPerson$_name)) = name; }
// @end









//   看起来， copy 和 strong 修饰, 对于属性的 getter 方法，没啥影响





///



///




// 方法 : sel - imp
// oc - c 函数实现
// 封装
// sel : funcHaha (sel)  ------   页码(imp)  --- 具体实现内容 (函数)

// sel 相当于书的目录

// sel 方法编号







// @16@0:8
// @: 返回值
// 16 参数共用字节 16
// 第二个 @ :第一个参数 8
// 0 : 从0 开始
// : : sel 8


static struct /*_method_list_t*/ {
    unsigned int entsize;  // sizeof(struct _objc_method)
    unsigned int method_count;
    struct _objc_method method_list[8];
} _OBJC_$_INSTANCE_METHODS_LGPerson __attribute__ ((used, section ("__DATA,__objc_const"))) = {
    sizeof(_objc_method),
    8,
    
    
    
    
    
    
    // "@16@0:8",   这个是签名
    // 签名，是通过标识，更容易的区分
    
    
    
    
    // 编码方式
    // type encoding
    
    
    
    
    
    {{(struct objc_selector *)"nickName", "@16@0:8", (void *)_I_LGPerson_nickName},
    
        
        
        
        
        
    {(struct objc_selector *)"setNickName:", "v24@0:8@16", (void *)_I_LGPerson_setNickName_},
    {(struct objc_selector *)"name", "@16@0:8", (void *)_I_LGPerson_name},
    {(struct objc_selector *)"setName:", "v24@0:8@16", (void *)_I_LGPerson_setName_},
    {(struct objc_selector *)"nickName", "@16@0:8", (void *)_I_LGPerson_nickName},
    {(struct objc_selector *)"setNickName:", "v24@0:8@16", (void *)_I_LGPerson_setNickName_},
    {(struct objc_selector *)"name", "@16@0:8", (void *)_I_LGPerson_name},
    {(struct objc_selector *)"setName:", "v24@0:8@16", (void *)_I_LGPerson_setName_}}
};

