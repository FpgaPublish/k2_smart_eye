 
## 23-12-17 02:42:43
* design_x7_wrapper.bit
* 完成调试功能的添加
    * 准备在PC进行联合设计
* XSA自动化缺少BIN文件
    * 补全之，方便每次的下载 
## 23-12-17 15:56:34
* design_x7_wrapper.bit
* 重新生成BIN文件用于下载
 
## 23-12-21 22:54:43
* design_x7_wrapper.bit
* 添加IIC程序
    * 准备使用实际的开发板实现最终配置测试
    
 
## 23-12-23 02:54:32
* design_x7_wrapper.bit
* 带IIC调试的程序
 
## 23-12-23 03:17:03
* design_x7_wrapper.bit
* 
* 新的调试程序 
## 23-12-23 13:43:48
* design_x7_wrapper.bit
* 完成对应的模块的修复
 
## 23-12-23 23:07:09
* design_x7_wrapper.bit
* 修复时序
 
## 23-12-24 12:17:17
* design_x7_wrapper.bit
* 添加xclk时钟
 
## 23-12-24 13:26:11
* design_x7_wrapper.bit
* 添加数据抓取信号  
    * iic抓取成功
 
## 23-12-27 22:17:04
* design_x7_wrapper.bit
* 添加CMOS信号抓取

 
## 23-12-27 22:33:11
* design_x7_wrapper.bit
* 完成问题解决
 
## 23-12-27 22:42:01
* design_x7_wrapper.bit
* 放弃时钟采集
 
## 23-12-27 22:48:04
* design_x7_wrapper.bit
* 完善采样
 
## 23-12-27 23:02:32
* design_x7_wrapper.bit
* 新的尝试
    * ILA对时钟有要求
 
## 23-12-27 23:21:16
* design_x7_wrapper.bit
* 重新编译
 
## 23-12-27 23:39:40
* design_x7_wrapper.bit
* 使用PLL
 
## 23-12-27 23:49:08
* design_x7_wrapper.bit
* 新的时钟
 
## 23-12-30 03:55:06
* design_x7_wrapper.bit
* 切换高速抓取时钟
 
## 23-12-30 05:34:08
* design_x7_wrapper.bit
* 添加时钟驱动
 
## 23-12-30 05:48:07
* design_x7_wrapper.bit
* 优化初始化
 
## 23-12-30 05:58:29
* design_x7_wrapper.bit
* 优化检测参数
 
## 23-12-30 17:16:17
* design_x7_wrapper.bit
* 优化ILA的时钟设置
    * 保证数据可以稳定读取  
 
## 23-12-30 17:40:58
* design_x7_wrapper.bit
* 准备进行测试
 
## 23-12-30 18:10:20
* design_x7_wrapper.bit
* 切换为标准时钟
 
## 23-12-30 18:31:54
* design_x7_wrapper.bit
* 使用复位
 
## 23-12-30 19:17:47
* design_x7_wrapper.bit
* 重新规划时钟域


 
## 23-12-30 19:30:39
* design_x7_wrapper.bit
* 对比ILA异常的原因
 
## 23-12-30 20:32:06
* design_x7_wrapper.bit
* 更新时钟
 
## 23-12-30 20:38:50
* design_x7_wrapper.bit
* 跳过总线
 
## 23-12-31 10:23:58
* design_x7_wrapper.bit
* 更新抓取位置
 
## 24-01-01 21:46:47
* design_x7_wrapper.bit
* 添加了DDR的模块
    * 如果在线抓取运行正常的话
    * 就准备直接建立仿真模块
    * 跳过DDR的访问了
    * 实现数据的分段处理
 
## 24-01-04 21:48:19
* design_x7_wrapper.bit
* 添加新的DDR中转模块
