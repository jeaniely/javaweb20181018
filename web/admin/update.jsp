<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/17
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.neuedu.entity.Student" %>
<html>
<head>
    <title>添加</title>
</head>
<body>
<% Student student=(Student) request.getAttribute("student");%>
  <form action="/update.student" method="get">
     <table>
        <%-- <tr>
             <td>学生sno</td>
             <td>
                 <input type="text" name="sno" value="<%=student.getSno()%>" readonly>
             </td>
         </tr>--%>
         <tr>
             <td>学生姓名</td>
             <td>
                 <input type="text" name="sname" value="<%=student.getSname()%>">
             </td>
         </tr>
         <tr>
             <td>学生sex</td>
             <td>
                 <%
                    if("男".equals(student.getSsex())){
                        %>
                 <input type="radio" name="ssex" value="男" checked>男
                 <input type="radio" name="ssex" value="女">女
                 <%
                    }else{
                 %>
                 <input type="radio" name="ssex" value="男">男
                 <input type="radio" name="ssex" value="女" checked>女
                 <%}%>
             </td>
         </tr>
         <tr>
             <td>学生sage</td>
             <td>

                 <input type="number" name="sage" value="<%=student.getSage()%>" >
             </td>
         </tr>

         <tr>
             <td>学生sdept</td>
             <td>
                 <select name="sdept">
                     <%
                         if("计算机系".equals(student.getSdept())){
                     %>
                     <option value="数学系">数学系</option>
                     <option value="计算机系" selected>计算机系</option>
                     <option value="英语系">英语系</option>
                     <%
                     }else if("数学系".equals(student.getSdept())){
                     %>
                     <option value="数学系" selected>数学系</option>
                     <option value="计算机系">计算机系</option>
                     <option value="英语系">英语系</option>
                     <%}else {
                     %>
                     <option value="数学系">数学系</option>
                     <option value="计算机系">计算机系</option>
                     <option value="英语系" selected>英语系</option>
                     <%}%>
                 </select>
             </td>
         </tr>
         <tr>
             <td>学生birthday</td>
             <td>
                <input type="date" name="birthday" value="<%=student.getBirthday()%>">
             </td>
         </tr>
         <tr>
             <td colspan="2">
                 <input type="hidden" name="sno" value="<%=student.getSno()%>" >
                 <input type="submit" value="提交">
             </td>

         </tr>
     </table>
  </form>
</body>
</html>
