from django.contrib import admin

# Register your models here.
from hostmanagement.models import ServerInfo


class ServerInfoAdmin(admin.ModelAdmin):
    # 列表中的列显示哪些字段
    list_display = ["sname", "sbrand", "sip", "stdisk", "sfdisk", "stmemory", "sfmemory", "screate_date"]
    # 搜索框
    search_fields = ['sname', 'sip', 'sbrand']
    # 快速过滤
    list_filter = ['sbrand']
    pass


admin.site.register(ServerInfo, ServerInfoAdmin)
