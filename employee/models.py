from django.db import models


# Create your models here.
class DeptInfo(models.Model):
    dept_name = models.CharField(max_length=255, verbose_name='部门')
    # dept_code = models.IntegerField(verbose_name='部门代码')

    class Meta:
        verbose_name = '部门信息表'
        verbose_name_plural = verbose_name
        db_table = 'tb_dept'

    def __str__(self):
        """定义每个数据对象的显示信息"""
        return self.dept_name


class EmployeeInfo(models.Model):
    em_name = models.CharField(max_length=255, verbose_name='姓名')
    em_sex = models.CharField(max_length=6, verbose_name='性别')
    em_age = models.IntegerField(default=18, verbose_name='年龄')
    em_telephone = models.CharField(max_length=15, verbose_name='电话号码')
    entry_time = models.DateField(verbose_name='入职时间')
    dept_name = models.ForeignKey(DeptInfo, max_length=255, verbose_name='所属部门')

    class Meta:
        verbose_name = '员工信息表'
        verbose_name_plural = verbose_name
        db_table = 'tb_employee'

    def __str__(self):
        """定义每个数据对象的显示信息"""
        return self.em_name



