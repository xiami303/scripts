Rem /A 命令行开关指定等号右边的字符串为被评估的数字表达式。
Rem set的/A参数就是让SET可以支持数学符号进行加减等一些数学运算!

:: 该表达式评估器很简单并以递减的优先权顺序支持下列操作:
:: () - 分组
:: ! ~ - - 一元运算符
:: * / % - 算数运算符
:: + - - 算数运算符
:: << >> - 逻辑移位
:: & - 按位“与”
:: ^ - 按位“异”
:: | - 按位“或”
:: = *= /= %= += -= - 赋值
:: &= ^= |= <<= >>=
:: , - 表达式分隔符

:: set /a val+=1  is the same as set /a val=%val%+1
set val=0
set /a val+=1  
echo %val%
:: result would be 1


:: set /a var"&=" 1 等于set /a var = %var% "&" 1 注意引号
:: set /a var= 1 "&" 1 
:: set /a var= 1 "+" 1 
:: set /a var= 1 "%" 1 
:: set /a var= 2 "<<" 2
:: set /a var= 4 ">>" 2

set /a a=1+1,b=2+1,c=3+1
echo %a% %b% %c%
:: result 2 3 4
pause


:: 测试字符串替换
:: 替换字符串里的空格
set a= bbs.verybat.cn
echo 替换前的值: "%a%"
:: result 替换前的值: bbs.verybat.cn
set var=%a: =%
echo 替换后的值: "%var%"
:: result 替换后的值:bbs.verybat.cn
pause




