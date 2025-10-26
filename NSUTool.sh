#!/bin/bash
# 模拟
# 颜色定义 - 前景色
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
BLACK='\033[0;30m'

# 颜色定义 - 粗体前景色
BOLD_RED='\033[1;31m'
BOLD_GREEN='\033[1;32m'
BOLD_YELLOW='\033[1;33m'
BOLD_BLUE='\033[1;34m'
BOLD_PURPLE='\033[1;35m'
BOLD_CYAN='\033[1;36m'
BOLD_WHITE='\033[1;37m'
BOLD_BLACK='\033[1;30m'

# 颜色定义 - 背景色
BG_RED='\033[41m'
BG_GREEN='\033[42m'
BG_YELLOW='\033[43m'
BG_BLUE='\033[44m'
BG_PURPLE='\033[45m'
BG_CYAN='\033[46m'
BG_WHITE='\033[47m'
BG_BLACK='\033[40m'

# 样式定义
BOLD='\033[1m'
UNDERLINE='\033[4m'
BLINK='\033[5m'
REVERSE='\033[7m'
HIDDEN='\033[8m'

# 重置所有样式
NC='\033[0m'
if [ -n "$(find /sdcard/.FbDrive -name "Fastboot" -print -quit)" ]; then
    sleep 0.000001
else
    clear
    echo "# can not found drive || tmp & main.sh"
    echo
    echo "[✘] ${BOLD_RED}FastBoot驱动不存在！${NC}"
    exit 1
fi
echo
mkdir -p /sdcard/NSU
truncate -s 4046K /sdcard/NSU/tmp2
luanma=�G6h34���.sh�
echo "${luanma}\������������
���������
����d64�������������
������������������/�����������������*����������������������������������������������������������������������������������������������������������������������������������������������������������*���������������������������������������������������������������������������������������������������������������������������������������������������������*���������������������������������������������������������������������������������������������������������������������������������������������������������*�����������������������������������������������������������������������������������������������������������������������
��������������������*���������������������������������������������������������������������������������������������������������������������������������������������������������*�������������������������������������������������������" > /sdcard/NSU/tmp
# 基础进度条函数
jdt() {
# 第一个进度条：从0%到100%
for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20; do
    # 计算百分比
    percent=$((i * 4))
    if [ $i -eq 20 ]; then
        percent=100
    fi
    
    # 构建进度条字符串
    bar="["
    
    # 添加已完成部分
    j=0
    while [ $j -lt $i ]; do
        bar="${bar}█"
        j=$((j + 1))
    done
    
    # 添加未完成部分
    j=$i
    while [ $j -lt 20 ]; do
        bar="${bar}□"
        j=$((j + 1))
    done
    
    bar="${bar}] ${percent}%"
    
    # 输出进度条
    echo -ne "\r${BOLD_CYAN}进度：${PURPLE}${bar}"
    
    # 延迟
    sleep 0.02
done
echo -ne " ${BOLD_CYAN}完成${NC}"
}
echo -e "[加载] ${BOLD_CYAN}正在加载全局函数，请稍后...${NC}"
echo
jdt
clear
echo "#!/system/bin/sh&bash || sdcard>Android
"
jdt2() {
# 第一个进度条：从0%到100%
for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20; do
    # 计算百分比
    percent=$((i * 4))
    if [ $i -eq 20 ]; then
        percent=100
    fi
    
    # 构建进度条字符串
    bar="["
    
    # 添加已完成部分
    j=0
    while [ $j -lt $i ]; do
        bar="${bar}${BOLD_GREEN}#"
        j=$((j + 1))
    done
    
    # 添加未完成部分
    j=$i
    while [ $j -lt 20 ]; do
        bar="${bar}${NC}#${NC}"
        j=$((j + 1))
    done
    
    bar="${bar}${NC}] ${percent}${NC}%${NC}"
    
    # 输出进度条
    echo -ne "\rflash : ${bar}"
    
    # 延迟
    sleep 0.078
done
echo -n " ${NC}done !"
}
sleep 0.2
echo -e "${BOLD_YELLOW}============ NSUTool ============"
echo
sleep 0.1
echo -e "${NC}● ${BOLD_CYAN}脚本名称：${NC}NSUTool

● ${BOLD_CYAN}脚本作者：${NC}KUAN MineACE

● ${BOLD_CYAN}脚本简介：${NC}一款适配全 Android 机型的 Root 工具，可自由选择绕过方式、自由选择面具管理器等。"
echo
sleep 2.5
echo -e "${BOLD_YELLOW}=======  选择面具(管理器) =======${NC}"
echo
echo -e "1) ${BOLD_CYAN}Alpha(兼容性强，推荐)${NC}"
echo
echo -e "2) ${BOLD_CYAN}Delta(已停更，不推荐)${NC}"
echo
echo -e "3) ${BOLD_CYAN}KernelSU(内核级隐藏)${NC}"
echo
echo -e "4) ${BOLD_CYAN}APatch(稳定性较差)${NC}"
echo
echo -e "5) ${BOLD_CYAN}SukisuUltra(真神，强烈推荐)${NC}"
echo
echo -e "6) ${BOLD_CYAN}WildKSU(小众但界面美观)${NC}"
echo
echo -e "7) ${BOLD_CYAN}KernelSUNext(T0级别的管理器)${NC}"
echo
echo -e "8) ${BOLD_CYAN}APatchNext(4系想极致隐藏首选)${NC}"
echo
echo -e "9) ${BOLD_CYAN}MKSU(KernelSU的分支)${NC}"
echo
echo -e "10) ${BOLD_CYAN}Magiks(官方原版面具)"
echo
echo -e "${BOLD_YELLOW}=================================${NC}"
echo
echo -ne "[输入] ${BOLD_GREEN}"
read su
echo
sleep 0.7
echo "${BOLD_YELLOW}============ 绕过方式 ===========${NC}"
sleep 0.1
echo
echo -e "1) ${BOLD_CYAN}sallySU(适用于Android16)${NC}"
echo
echo -e "2) ${BOLD_CYAN}BootROM(适用于Android15，推荐)${NC}"
echo
echo -e "3) ${BOLD_CYAN}VmUltra(适用于Android15，6系内核)${NC}"
echo
echo -e "4) ${BOLD_CYAN}Bashing(适用于Android8-14，4系内核)"
echo 
echo -e "${NC}5) ${BOLD_CYAN}JzsData(适用于Android8-14)${NC}"
echo
echo -e "6) ${BOLD_CYAN}YTintPro(适用于Android10-14，5系内核)"
echo
echo -e "${NC}7) ${BOLD_CYAN}GoogleHook(适用于Android8-16)"
echo
echo -e "${NC}8) ${BOLD_CYAN}退出脚本并清理缓存${NC}"
echo
echo -e "${BOLD_YELLOW}=================================${NC}"
echo
echo -ne "[输入] ${BOLD_GREEN}"
read fs

GoogleHook() {
echo
sleep 0.5
echo -e "${BOLD_PURPLE}[输出] 正在跳转至GoogleHook...${NC}"
sleep 2.3
clear
echo "Googlekey||cd>/xml/#!/bin/bash&keybox"
sleep 0.1
echo -e "${BOLD_YELLOW}========== GoogleHook ==========${NC}"
echo
echo -e "● ${BOLD_CYAN}名称：${NC}GoogleHook"
echo
echo -e "● ${BOLD_CYAN}等级：${NC}内核级"
echo
echo -e "${BOLD_YELLOW}=================================${NC}"
}
sasllysu() {
echo
sleep 0.5
echo -e "${BOLD_PURPLE}[输出] 正在跳转至sallySU...${NC}"
sleep 2.3
clear
echo "sallySU||cd>/data/#!/bin/bash&system"
sleep 0.1
echo -e "${BOLD_YELLOW}========== sallySU ==========${NC}"
echo
echo -e "● ${BOLD_CYAN}名称：${NC}sallySU"
echo
echo -e "● ${BOLD_CYAN}等级：${NC}内核级"
echo
echo -e "${BOLD_YELLOW}=================================${NC}"
}
BootROM() {
echo
sleep 0.5
echo -e "${BOLD_PURPLE}[输出] 正在跳转至BootROM...${NC}"
sleep 2.3
clear
echo "BootROM||cd>/sdcard/#!/bin/sh&system"
sleep 0.1
echo -e "${BOLD_YELLOW}========== BootROM ==========${NC}"
echo
echo -e "● ${BOLD_CYAN}名称：${NC}BootROM"
echo
echo -e "● ${BOLD_CYAN}等级：${NC}用户级"
echo
echo -e "${BOLD_YELLOW}=================================${NC}"
}
VmU() {
echo
sleep 0.5
echo -e "${BOLD_PURPLE}[输出] 正在跳转至VmUltra...${NC}"
sleep 2.3
clear
echo "Ultra||cd>/sdcard/#!/bin/bash&system"
sleep 0.1
echo -e "${BOLD_YELLOW}========== VmUltra ==========${NC}"
echo
echo -e "● ${BOLD_CYAN}名称：${NC}VmUltra"
echo
echo -e "● ${BOLD_CYAN}等级：${NC}用户级"
echo
echo -e "${BOLD_YELLOW}=================================${NC}"
}
Bashing() {
echo
sleep 0.5
echo -e "${BOLD_PURPLE}[输出] 正在跳转至Bashing...${NC}"
sleep 2.3
clear
echo "bash||cd>/sdcard/#!/bin/bash&Imge"
sleep 0.1
echo -e "${BOLD_YELLOW}========== Bashing ==========${NC}"
echo
echo -e "● ${BOLD_CYAN}名称：${NC}Bashing"
echo
echo -e "● ${BOLD_CYAN}等级：${NC}内核级"
echo
echo -e "${BOLD_YELLOW}=================================${NC}"
}
Jzs() {
echo
sleep 0.5
echo -e "${BOLD_PURPLE}[输出] 正在跳转至JzsData...${NC}"
sleep 2.3
clear
echo "bin||cd>/sdata/#!/bin/bash&system.sh"
sleep 0.1
echo -e "${BOLD_YELLOW}========== JzsData ==========${NC}"
echo
echo -e "● ${BOLD_CYAN}名称：${NC}JzsData"
echo
echo -e "● ${BOLD_CYAN}等级：${NC}用户级"
echo
echo -e "${BOLD_YELLOW}=================================${NC}"
}
YT() {
echo
sleep 0.5
echo -e "${BOLD_PURPLE}[输出] 正在跳转至YTintPro...${NC}"
sleep 2.3
clear
echo "suca||cd>/Android/#!/bin/bash/&Base64_end"
sleep 0.1
echo -e "${BOLD_YELLOW}========== YTintPro ==========${NC}"
echo
echo -e "● ${BOLD_CYAN}名称：${NC}YTintPro"
echo
echo -e "● ${BOLD_CYAN}等级：${NC}内核级"
echo
echo -e "${BOLD_YELLOW}=================================${NC}"
}
case $fs in
    1)
       echo
       # 获取Android版本号（主版本）
       android_version=$(getprop ro.build.version.release | cut -d. -f1)

       # 检测Android版本是否大于8且小于15
       if [ -n "$android_version" ] && [ "$android_version" -gt 15 ] && [ "$android_version" -lt 17 ]; then
       echo "Android版本符合条件"
       else
       echo "Android版本不符合条件"
       exit 1
       fi
       sasllysu
    ;;
    2)
       echo
       # 获取Android版本号（主版本）
       android_version=$(getprop ro.build.version.release | cut -d. -f1)

       # 检测Android版本是否大于8且小于15
       if [ -n "$android_version" ] && [ "$android_version" -gt 14 ] && [ "$android_version" -lt 16 ]; then
       echo "Android版本符合条件"
       else
       echo "Android版本不符合条件"
       exit 1
       fi
       BootROM
    ;;
    3)
      echo
       # 获取Android版本号（主版本）
       android_version=$(getprop ro.build.version.release | cut -d. -f1)

       # 检测Android版本是否大于8且小于15
       if [ -n "$android_version" ] && [ "$android_version" -gt 14 ] && [ "$android_version" -lt 16 ]; then
       echo "Android版本符合条件"
       else
       echo "Android版本不符合条件"
       exit 1
       fi
              # 获取内核主版本号
       kernel_version=$(uname -r | cut -d. -f1)

       # 检测内核版本是否低于5系或等于6系
       if [ "$kernel_version" -eq 6 ]; then
       echo "内核版本等于6系"
       else
       echo "内核版本不符合条件"
       exit 1
       fi
       VmU
    ;;
    4)
      echo
              # 获取Android版本号（主版本）
       android_version=$(getprop ro.build.version.release | cut -d. -f1)

       # 检测Android版本是否大于8且小于15
       if [ -n "$android_version" ] && [ "$android_version" -gt 7 ] && [ "$android_version" -lt 15 ]; then
       echo "Android版本符合条件"
       else
       echo "Android版本不符合条件"
       exit 1
       fi
              # 获取内核主版本号
       kernel_version=$(uname -r | cut -d. -f1)

       # 检测内核版本是否低于5系或等于6系
       if [ "$kernel_version" -eq 4 ]; then
       echo "内核版本等于4系"
       else
       echo "内核版本不符合条件"
       exit 1
       fi
       Bashing
    ;;
    5)
       echo
              # 获取Android版本号（主版本）
       android_version=$(getprop ro.build.version.release | cut -d. -f1)

       # 检测Android版本是否大于8且小于15
       if [ -n "$android_version" ] && [ "$android_version" -gt 7 ] && [ "$android_version" -lt 15 ]; then
       echo "Android版本符合条件"
       else
       echo "Android版本不符合条件"
       exit 1
       fi
       Jzs
    ;;
    6)
       echo
              # 获取Android版本号（主版本）
       android_version=$(getprop ro.build.version.release | cut -d. -f1)

       # 检测Android版本是否大于8且小于15
       if [ -n "$android_version" ] && [ "$android_version" -gt 10 ] && [ "$android_version" -lt 15 ]; then
       echo "Android版本符合条件"
       else
       echo "Android版本不符合条件"
       exit 1
       fi
              # 获取内核主版本号
       kernel_version=$(uname -r | cut -d. -f1)

       # 检测内核版本是否低于5系或等于6系
       if [ "$kernel_version" -eq 5 ]; then
       echo "内核版本等于5系"
       else
       echo "内核版本不符合条件"
       exit 1
       fi
       YT
    ;;
    7)
              # 获取Android版本号（主版本）
       android_version=$(getprop ro.build.version.release | cut -d. -f1)

       # 检测Android版本是否大于8且小于15
       if [ -n "$android_version" ] && [ "$android_version" -gt 7 ] && [ "$android_version" -lt 17 ]; then
       echo "Android版本符合条件"
       else
       echo "Android版本不符合条件"
       exit 1
       fi
       GoogleHook
    ;;
    8)
    echo -e "${NC}"
       echo "[输出] 再见 ！"
       rm -rf /sdcard/NSU
       exit 0
    ;;
    *)
       echo
       echo "[输出] 无效选项 ！"
       exit 1
    ;;
esac
echo
sleep 0.6
echo -e "${BOLD_CYAN}正在解锁Bootloader...${NC}"
sleep 0.5
echo
echo -e "[输入] ${BOLD_GREEN}unlock bootloader${NC}"
sleep 0.5
echo
yes=0
no=1
echo -e "[输出] ${BOLD_PURPLE}feedback $yes"
echo
if [ "$yes" = "0" ]; then
   sleep 0.6
   echo -e "${BOLD_BLUE}反馈码为0，解锁成功！"
else
   sleep 0.6
   echo -e "${BOLD_RED}反馈码为1，解锁失败"
   exit 1
fi
sleep 1
echo
echo -e "${NC}[执行] ${BOLD_CYAN}正在绕过SELinux程序..."
sleep 0.5
echo
echo -e "${NC}[执行] ${BOLD_CYAN}正在识别AB分区..."
sleep 0.549
echo
echo -e "${NC}[连接] ${BOLD_CYAN}正在链接服务器${NC}"
sleep 0.1
echo
jdt
echo
echo
sleep 0.1
echo -e "${NC}[下载] ${BOLD_CYAN}正在从云端下载修补好的boot/init_boot..."
echo
sleep 0.1
jdt
echo
sleep 0.1
echo
echo -e "${NC}[刷入] ${BOLD_CYAN}正在刷入boot/init_boot..."
echo -e "${NC}"
sleep 0.1
echo "================================="
echo -e "${NC}"
sleep 0.1
echo "flashing... Time : $(date)"
sleep 0.1
echo
echo
echo
echo "Flash A/B - boot/init_boot Imge"
sleep 0.3
echo
echo
echo "Android 8 - 16 & /system/bin/"
echo "Kernel : $(uname -r )"
echo "Chmod 777 NSUTool.sh"
echo
sleep 0.1
jdt2
echo
echo
sleep 0.6
echo "flash done !"
echo "Success Date : $(date)"
sleep 1
echo
echo "================================="
sleep 0.1
truncate -s 128M /sdcard/NSU/boot.img
truncate -s 8M /sdcard/NSU/init_boot.img
echo
echo -e "${NC}[状态] ${BOLD_CYAN}刷入成功！输入${NC}reboot${BOLD_CYAN}重启设备; 输入${NC}Ether${BOLD_CYAN}退出脚本..."
echo
echo -ne "${NC}[输入] ${BOLD_GREEN}"
read reboot
hcnsu() {
read hc
if [ "$hc" = "Y" ]; then
   echo -e "$NC"
   echo "[输出] 缓存已删除！(/sdcard/NSU)"
   rm -rf /sdcard/NSU
else
   sleep 0.1
fi
}
if [ "$reboot" = "reboot" ]; then
   echo
   echo -e "[输出] ${BOLD_BYAN}设备将在5秒后重启"
   sleep 5
   reboot
   echo -e "${NC}"
   exit 0
else
   echo -e "${NC}"
   echo "是否删除缓存？(Y/N)"
   echo
   echo -ne "${NC}[输入] ${BOLD_GREEN}"
   hcnsu
   echo -e "${NC}"
   echo "[输出] 再见 ！"
   exit 0
fi