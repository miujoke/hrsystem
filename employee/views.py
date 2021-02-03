from django.http import HttpResponse
from django.shortcuts import render
import logging
# Create your views here.
from utils.tools import getDiskInfo, SendMail

logger = logging.getLogger("django")


def disk_info(request):
    res = getDiskInfo()
    if int(res) > 10:
        # 记录日志
        logger.info("磁盘负载危险")
        # 发送邮件
        sendm = SendMail(receive_addr=['miujoke@gmail.com'], sub_info='XXXXX集团', content_info='服务器严重负载，请及时维护。')
        sendm.send()
        return HttpResponse("危险")
    else:
        return HttpResponse("正常")
