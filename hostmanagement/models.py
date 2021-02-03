from django.db import models


# Create your models here.
# 定义服务器主机模型
class ServerInfo(models.Model):
    sname = models.CharField(max_length=20, verbose_name='主机名')
    sbrand = models.CharField(max_length=200, default='戴尔', verbose_name='品牌')
    sip = models.CharField(max_length=40, default='127.0.0.1', verbose_name='内网IP')
    stdisk = models.IntegerField(default=5, verbose_name="磁盘总大小")
    sfdisk = models.IntegerField(default=5, verbose_name="磁盘剩余量")
    stmemory = models.IntegerField(default=5, verbose_name="总内存")
    sfmemory = models.IntegerField(default=5, verbose_name="剩余内存")
    screate_date = models.DateField(verbose_name='创建日期')
    is_delete = models.BooleanField(default=False, verbose_name='逻辑删除')

    class Meta:
        db_table = 'tb_servers'  # 指明数据库表名
        verbose_name = '主机'  # 在admin站点中显示的名称
        verbose_name_plural = verbose_name  # 显示的复数名称
