<%--
  Created by IntelliJ IDEA.
  User: chans
  Date: 2023-10-22
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="model.MemberDAO" %>
<%
    int number = Integer.parseInt(request.getParameter("number"));

    MemberDAO dao = new MemberDAO();
    int count = dao.memberDelete(number);

    if (count > 0) {
        response.sendRedirect("/member/memberList.jsp");
    } else {
        throw new ServletException("delete fail");
    }
%>