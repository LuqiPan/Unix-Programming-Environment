# zap pattern: kill all processes matching pattern
# BUG in this version

PATH=/bin:/usr/bin

case $# in
0)  echo 'Usage: zap pattern' 1>&2; exit 1
esac

kill `pick \`ps -a | grep "$*"\` | awk '{print $1}'`
