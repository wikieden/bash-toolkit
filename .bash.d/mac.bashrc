# support chinese character
alias ls="ls -w -G"
alias vi='env LC_CTYPE=zh_CN.UTF-8 vi'

# mysql bins
export PATH=$PATH:/usr/local/mysql/bin

# increase open files, default is 256
ulimit -n 4096
