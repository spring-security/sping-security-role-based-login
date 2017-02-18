<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎页面</title>
<link href="<c:url value='/resources/css/bootstrap.css' />"  rel="stylesheet"></link>
<link href="<c:url value='/resources/css/app.css' />" rel="stylesheet"></link>
<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
</head>
<body>
<div id="mainWrapper">
    <div class="login-container">
        <div class="login-card">
            <div class="login-form">
                <c:url var="loginUrl" value="/login" />
        		<form action="${loginUrl}" method="post" class="form-horizontal">
		            <c:if test='${authenticationFailureResult != null}'>
		                <div class="alert alert-danger">
		                    <p>Invalid user name and password.</p>
		                </div>
		            </c:if>
		            <div class="input-group input-sm">
		                <label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
		                <input type="text" class="form-control" id="username" name="ssoId">
		            </div>
		            <div class="input-group input-sm">
		                <label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
		                <input type="password" class="form-control" id="password" name="password">
		            </div>
            		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <div class="form-actions">
                        <input type="submit"
                            class="btn btn-block btn-primary btn-default" value="Log in">
                    </div>
            	</form>
            </div>
        </div>
    </div>
</div>
</body>
</html>