#!/usr/bin/env bash



script_get() {
    print_massage "不用下载" "Do not download"
}

script_install() {
    if [[ -f /usr/local/bin/hit-boss ]];then
        print_massage "检测到当前系统已安装" "Detected that the current system is installed"
        exit
    fi
    
    test_bin hit-boss

	print_massage "hit-boss安装完成" "The hit-boss is installed"
	print_massage "安装目录：/usr/local/bin/hit-boss" "Install Dir：/usr/local/bin/hit-boss"
	print_massage "使用：hit-boss" "Use：hit-boss"
	print_massage "使用说明：打boss小游戏" "Instructions for use: Play boss game"
}

script_remove() {
	rm -rf /usr/local/bin/hit-boss
    
    [ -f /usr/local/bin/hit-boss ] && print_error "hit-boss未成功删除，请检查脚本" "hit-boss unsuccessfully deleted, please check the script" || print_massage "hit-boss卸载完成！" "hit-boss Uninstall completed！"
}

script_info() {
	print_massage "名字：hit-boss" "Name：hit-boss"
	print_massage "版本：1.0" "Version：1.0"
	print_massage "介绍：打boss小游戏脚本" "Introduce：Play boss game script"
	print_massage "作者：速度与激情小组---Linux部" "Author：Speed and Passion Group --- Linux Department"
}