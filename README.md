# 优惠码生成源码使用说明
1.执行getRand.sql源码，生成mysql数据库执行函数getRand()  
2.执行youhu.sql源码，生成mysql数据库存储过程youhui()  
3.执行存储过程call youhui(生成优惠数量, 金额，使用产品编号 ,'标签');
注意：本源码无需重复执行，首次执行后下次生成优惠码时直接调用call youhui(生成优惠数量, 金额，使用产品编号 ,'标签');
