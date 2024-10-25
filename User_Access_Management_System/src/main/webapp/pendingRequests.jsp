<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Pending Access Requests</title>
</head>
<body>
    <h2>Pending Access Requests</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Employee Name</th>
                <th>Software Name</th>
                <th>Access Type</th>
                <th>Reason</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>name1</td>
                <td>Software 1</td>
                <td>Read</td>
                <td>access required</td>
                <td>
                    <form action="ApprovalServlet" method="post" style="display:inline;">
                        <input type="hidden" name="requestId" value="1">
                        <input type="hidden" name="action" value="Approve">
                        <input type="submit" value="Approve">
                    </form>
                    <form action="ApprovalServlet" method="post" style="display:inline;">
                        <input type="hidden" name="requestId" value="1">
                        <input type="hidden" name="action" value="Reject">
                        <input type="submit" value="Reject">
                    </form>
                </td>
            </tr>
        </tbody>
    </table>

    <% if(request.getParameter("success") != null) { %>
        <p style="color:green;"><%= request.getParameter("success") %></p>
    <% } %>
</body>
</html>
