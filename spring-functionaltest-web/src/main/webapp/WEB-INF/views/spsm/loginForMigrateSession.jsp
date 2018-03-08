<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<div id="wrapper">

  <h3 id="screenTitle">ログインフォーム</h3>
  <c:if test="${param.containsKey('error')}">
    <span id="loginError"> <t:messagesPanel
        messagesAttributeName="SPRING_SECURITY_LAST_EXCEPTION" />
    </span>
  </c:if>
  <form action="${pageContext.request.contextPath}/spsm/${testNo}/authenticate" method="post">
    <table>
      <tr>
        <td><label for="username">ユーザー名</label></td>
        <td><input type="text" id="username" name="username"></td>
      </tr>
      <tr>
        <td><label for="password">パスワード</label></td>
        <td><input type="password" id="password" name="password"></td>
      </tr>
      <tr>
        <td><label for="session">セッション情報</label></td>
        <td><span id="session"> <c:if test="${!empty sessionForm.oeratorName}">
                        ${f:h(sessionForm.oeratorName)}
                    </c:if>
        </span></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><button id="login">ログイン</button></td>
      </tr>
    </table>
    <sec:csrfInput />
  </form>
</div>