#!/bin/bash
# format_haed_tab.bash 
# 将每一个制表符替换为4个空格。

# 思路：
#  1.若未指定参数，则递归遍历当前目录下所有bash c cpp C c++ go java json log py sh text文件．可基于全局变量mSuffixs任意扩展．
#  2.若指定`目录`参数，若是参数是目录则同1的方式处理；

# 处理退出信号
trap 'echo Exiting~' EXIT

# 定义全局变量，代表需要处理的文件后缀
readonly mSuffixs="bash c cpp C c++ go java json log py sh text"
printf "将会处理的文件的后缀:%s\n" "$mSuffixs"
readonly mIgnores="git ~"
printf "将会忽略的目录:%s\n" "$mIgnores"

# 处理
for suffix in $mSuffixs
do
    sufReg=".*(\.$suffix)$"
    find ${1:-./} -mount -perm /u+w -regextype posix-extended \
        \( -not -path ${1:-./}*.git* -and -not -path ${1:-./}*~ -and -regex $sufReg \) \
        -exec sed -i -E -e 's/(\t)/    /g' {} \;
done