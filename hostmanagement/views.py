from django.db.models import Count
from django.shortcuts import render

# Create your views here.
from employee.views import logger
from hostmanagement.models import ServerInfo
from utils.tools import getDiskInfo, SendMail


def hosts(request):
    # 获取服务器负载率
    num = getDiskInfo()
    if int(num) > 30:
        # 记录日志
        logger.info("磁盘负载危险")
        # 发送邮件
        sendm = SendMail(receive_addr=['miujoke@gmail.com'], sub_info='XXXXX有限责任公司', content_info='服务器严重负载，请及时维护。')
        sendm.send()
    # 获取服务器品牌
    res = ServerInfo.objects.all().values("sbrand").annotate(num=Count('sbrand'))
    flag = []
    data = []
    for item in res:
        flag.append(item["sbrand"])
        data.append({"value": item["num"], "name": item["sbrand"]})
    return render(request, "hosts.html", context={"num": num, "flag": flag, "data": data})


def list(request):
    return render(request, "list.html")
