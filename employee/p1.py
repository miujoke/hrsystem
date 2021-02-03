import paramiko
# 实例化SSHClient
client = paramiko.SSHClient()
# 自动添加策略，保存服务器的主机名和密钥信息，如果不添加，那么不再本地know_hosts文件中记录的主机将无法连接
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
# 连接SSH服务端，以用户名和密码进行认证
client.connect(hostname='192.168.1.104', port=22, username='root', password='admin')
# 打开一个Channel并执行命令
stdin, stdout, stderr = client.exec_command('df -h ')  # stdout 为正确输出，stderr为错误输出，同时是有1个变量有值
# 打印执行结果
print(stdout.readlines()[5].split()[4][0:2])
# 关闭SSHClient
client.close()
