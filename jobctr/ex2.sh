pidwait () {
  pid=$1
  while kill -0 "$pid" 2> /dev/null; do
    echo "Wait..."
    sleep 1
  done
   
  echo "进程 $pid 已结束"
}

# kill -0 "pid"
# 如果进程 存在，返回 0（即成功）
# 如果进程 不存在，或者当前用户无权限访问该进程，返回 非零值
