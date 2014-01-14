# zap pattern: kill all processes matching pattern
# final version

# PATH=/bin:/usr/bin
IFS='
'           #change IFS to just newline

case $# in
"")     echo 'Usage: zap [-2] pattern' 1>&2; exit 1 ;;
-*)     SIG=$1; shift
esac

echo '  PID               TIME CMD'
kill $SIG `pick \`ps -a | egrep "$*"\` | awk '{print $1}'`
