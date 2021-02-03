import time

import paramiko
from django.core.mail import send_mail


def getDiskInfo():
    try:
        # 实例化SSHClient
        client = paramiko.SSHClient()
        # 自动添加策略，保存服务器的主机名和密钥信息，如果不添加，那么不再本地know_hosts文件中记录的主机将无法连接
        client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        # 连接SSH服务端，以用户名和密码进行认证
        client.connect(hostname='192.168.150.128', port=22, username='', password='')
        # 打开一个Channel并执行命令
        stdin, stdout, stderr = client.exec_command('df -h ')  # stdout 为正确输出，stderr为错误输出，同时是有1个变量有值
        # 打印执行结果
        return stdout.readlines()[5].split()[4][0:2]
    except Exception as e:
        # 关闭SSHClient
        client.close()
        pass


# 邮件发送
class SendMail(object):
    def __init__(self, receive_addr, sub_info, content_info):
        sub_data = time.strftime("%Y-%m-%d_%H:%M:%S", time.localtime())
        self.receive_addr = receive_addr
        self.sub_info = sub_info + sub_data
        self.content_info = content_info

    def send(self):
        try:
            send_mail(
                subject=self.sub_info,
                message=self.content_info,
                from_email='',
                recipient_list=self.receive_addr,
                fail_silently=False,
            )
            return True
        except Exception as e:
            print(e)
            return False


