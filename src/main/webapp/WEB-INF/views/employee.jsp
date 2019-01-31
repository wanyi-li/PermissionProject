<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/employee.js"></script>

</head>
<body>
<div id="tb">
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" id="add">添加</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" id="edit">编辑</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" id="delete">离职</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" id="reload">刷新</a>
    <input name="searchbox" style="width:200px"/>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" id="searchbtn">搜索</a>

</div>

<table id="datagrid"></table>

<div id="dialog">
    <form id="employeeForm">
    <table align="center" style="font-size:15px;margin-top:10px;border-spacing: 5px">
        <input type="hidden" name="id">
        <tr>
            <td>用户名</td>
            <td><input name="username" type="text" class="easyui-validatebox" data-options="required:true" /></td>
        </tr>
        <tr id="password">
            <td>密码</td>
            <td><input name="password" type="password" class="easyui-validatebox" /></td>
        </tr>
        <tr>
            <td>手机</td>
            <td><input name="tel" type="text" class="easyui-validatebox" /></td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td><input name="email" type="text" class="easyui-validatebox" data-options="validType:'email'" /></td>
        </tr>

        <tr>
            <td>入职时间</td>
            <td><input name="registime" type="text" class="easyui-datebox" data-options="editable:false" /></td>
        </tr>
        <tr>
            <td>部门</td>
            <td><input name="department.id" type="text" id="department" placeholder="请选择部门"/></td>
        </tr>
        <tr>
            <td>状态</td>
            <td>
                <select name="state" class="easyui-combobox" data-options="width:160,panelHeight:'fit',editable:false">
                    <option value=true>在职</option>
                    <option value=false>离职</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>是否管理员</td>
            <td>
                <select name="admin" class="easyui-combobox"
                        data-options="value:false,width:160,panelHeight:'fit',editable:false">
                    <option value=true>是</option>
                    <option value=false>否</option>
                </select>
            </td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>
