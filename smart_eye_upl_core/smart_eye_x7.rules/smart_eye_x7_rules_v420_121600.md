## 2023-12-16 00:34:51
* 阅读CMOS摄像手册
    * 提取控制模型和数据模型，为接下来的设计做好准备
    * 明确代码需要实现的目标
    
## 2023-12-16 23:30:20
* 自动化脚本所需的指令
```tcl
ipgui::add_page -name {note} -component [ipx::current_core] -display_name {note}

ipx::add_file_group -type product_guide {} [ipx::current_core]
current_project edit_ip_project
ipx::add_file ./cmd_ini_shk.html [ipx::get_file_groups xilinx_productguide -of_objects [ipx::current_core]]
set_property type html [ipx::get_files cmd_ini_shk.html -of_objects [ipx::get_file_groups xilinx_productguide -of_objects [ipx::current_core]]]
```