<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/17
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--page 标签：属性import ：导入包--%>
<%@page import="com.neuedu.entity.Student,java.util.*" %>
<html>
  <head>
    <title>显示数据</title>
  </head>
  <body>
  <%--
     3：显示数据
      知识点：1）内置对象--request
              2）内置对象--out
  --%>
   <%
       List<Student> list= (List<Student>) request.getAttribute("list");
       out.print("<table>");
     out.print("<tr><td>学号</td><td>姓名</td><td>操作</td></tr>");
       for(Student s:list){
           out.print("<tr><td>"+s.getSno()+"</td><td>"+s.getSname()+"</td><td><a href='/delete.student?sno="+s.getSno()
                    +"'>删除</a>&nbsp;&nbsp;<a href='/find.student?sno="+s.getSno()+"'>修改</a></td></tr>");
//           修改，首先先要取出数据，执行find，通过find将数据传入到修改界面
           // 第二步，通过修改界面完成修改
       }
     out.print("</table>");
   %>

  <a href="admin/add.jsp">添加</a>
  </body>
</html>
