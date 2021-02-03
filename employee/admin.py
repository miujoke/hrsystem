# Register your models here.
from django.contrib import admin
from employee.models import DeptInfo, EmployeeInfo

# 注册模型类
# admin.site.register(DeptInfo)
# admin.site.register(EmployeeInfo)

# 修改站点信息
admin.site.site_header = "miujoke后台资源管理系统"
admin.site.site_title = "首页"
admin.site.index_title = "XXX科技有限责任公司"


# 自定义字段管理类
class EmployeeInfoAdmin(admin.ModelAdmin):
    # 列表中的列显示哪些字段
    list_display = ["em_name", "em_sex", "em_age", "em_telephone", "entry_time", "dept_name"]
    # 搜索框
    search_fields = ['em_name']
    # 快速过滤
    list_filter = ['dept_name']
    pass


class DeptInfoAdmin(admin.ModelAdmin):
    # 列表中的列显示哪些字段
    list_display = ["dept_name"]
    pass


# 注册模型类
admin.site.register(EmployeeInfo, EmployeeInfoAdmin)
admin.site.register(DeptInfo, DeptInfoAdmin)
