<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Test1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
</head>
<body>
     <form runat="server">
        <label>Usuario:</label>
        <input type="text" name="username" required /><br /><br />
        <label>Contraseña:</label>
        <input type="password" name="password" required /><br /><br />
        <input type="submit" value="Iniciar sesión" />
    </form>
</body>
</html>

<%  
    if (IsPostBack)  
    {  
        string username = Request.Form["username"];  
        string password = Request.Form["password"];  
        
        if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))  
        {  
            Response.Write("<script>alert('Por favor ingrese su nombre de usuario y contraseña.');</script>");  
        }  
        else  
        {  
            if (username == "test" && password == "123")  
            {  
                Response.Redirect("Inicio.aspx");  
            }  
            else  
            {  
                Response.Write("<script>alert('Nombre de usuario o contraseña incorrectos. Por favor, intente de nuevo.');</script>");  
            }  
        }  
    }  
%>
