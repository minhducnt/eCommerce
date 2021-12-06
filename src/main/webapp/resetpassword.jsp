<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Reset Password</title>
    <link rel="stylesheet" href="/css/style.css">
    <script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="/js/jquery.validate.min.js"></script>
    <!-- Logo -->
    <link rel="shortcut icon"
          type="image/x-icon"
          href="assets/img/logo/favicon.ico">
</head>
<body>

<div align="center">
    <h2>Reset Your Password</h2>
    <p>
        Please enter your login email, we'll send a new random password to your inbox:
    </p>

    <form action="reset_password" method="post">
        <input type="hidden" name="action" value="resetpass">
        <table>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email" id="email" size="20"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <button type="submit">Send me new password</button>
                </td>
            </tr>
        </table>
    </form>
</div>
<c:if test="${not empty message}">
    <script>
        window.addEventListener("load", function () {
            alert("${message}");
        })
    </script>
</c:if>
<script type="text/javascript">

    $(document).ready(function () {
        $("#resetForm").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                }
            },

            messages: {
                email: {
                    required: "Please enter email",
                    email: "Please enter a valid email address"
                }
            }
        });

    });

</script>
</body>
</html>