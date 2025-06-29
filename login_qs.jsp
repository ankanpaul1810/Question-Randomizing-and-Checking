<html>
<head>
<script type="text/javascript">
                    function validateForm() {
                    	var password = document.getElementById("password").value;
                    	var rePassword = document.getElementById("rePassword").value;
                    	if (password !== rePassword) {
                    		alert("Passwords do not match!");
                    		return false;
                    		}
                    	return true;
                    	}
                    </script>
                        </head>
                        <body>
                        <form name="f1" method="get" action="login_qsback.jsp">
            <table>
                <tr>
                    <td>ld</td><td><input type="Text" name="t1"></td>
                </tr>
                <tr>
                    <td>Name</td><td><input type="Text" name="t2"></td>
                </tr>
                <tr>
                    <td>Mobile No.</td><td><input type="Text" name="t3"></td>
                </tr>
                <tr>
                    <td>Password</td><td><input type="Text" name="t3"></td>
                </tr>
                <tr>
                    <td>Re-enter Password</td><td><input type="Text" name="t3"></td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <input type="submit" name="b1" value="Submit">
                        <input type="reset" name="b2" value="Reset">
                    </td>
                </tr>
            </table>
            </form>
    </body>
</html>