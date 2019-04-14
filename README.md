# 优惠码生成源码使用说明
1.执行getRand.sql源码，生成mysql数据库执行函数getRand()  
2.执行youhu.sql源码，生成mysql数据库存储过程youhui()  
3.执行存储过程call youhui(生成优惠数量, 金额，使用产品编号 ,'标签'); 
注意：本源码无需重复执行，首次执行后下次生成优惠码时直接调用call youhui(生成优惠数量, 金额，使用产品编号 ,'标签');

mysql 1418报错处理：
1. mysql> SET GLOBAL log_bin_trust_function_creators = 1; 
2. 系统启动时 –log-bin-trust-function-creators=1 
3. 在my.ini(linux下为my.conf)文件中 [mysqld] 标记后加一行内容为 log_bin_trust_routine_creators=1;

