<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf8">
  <title>title</title>
</head>
<body>

<a href="<c:url value="/" />">
  main page
</a><br/>
<c:if test="${not empty message}"><div class="message green">${message.toString()}</div></c:if>
<c:if test="${not empty param.error}">
  <font color="red">
    : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message} </font>
</c:if>

<form method="POST" action="<c:url value="/j_spring_security_check" />">
  <table>
    <tr>
      <td align="right">login</td>
      <td><input type="text" name="j_username" /></td>
      <form:errors path="username"  />
    </tr>
    <tr>
      <td align="right">password</td>
      <td><input type="password" name="j_password" /></td>
    </tr>
    <tr>
      <td align="right">remembe</td>
      <td><input type="checkbox" name="_spring_security_remember_me" /></td>
    </tr>
    <tr>
      <td colspan="2" align="right"><input type="submit" value="Login" />
        <input type="reset" value="Reset" /></td>
    </tr>
  </table>
  <a href="<c:url value="/user/addUser" /> ">
    <label>Регистрация:</label>
  </a>
  <a href="<c:url value="/signup" /> ">
    <label>Login:</label>
  </a>
  <a href="<c:url value="/showUser" /> ">
    <label>showUser :</label>
  </a>
  <a href="<c:url value="/user/editUser" /> ">
    <label>editUser :</label>
  </a>
  <a href="<c:url value="/contract" /> ">
    <label>Contract :</label>
  </a>
  <a href="<c:url value="/author" /> ">
    <label>Authors :</label>
  </a>
</form>

</body>
</html>