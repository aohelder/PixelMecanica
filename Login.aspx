<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PixelMecanica.Site.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>PixelMecanica &#9679; Login</title>
    <style type="text/css" media="all">
        @import url("css/style.css");
        @import url("css/visualize.css");
    </style>
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=7" /><![endif]-->
    <!--[if lt IE 8]><style type="text/css" media="all">@import url("css/ie.css");</style><![endif]-->
    <!--[if IE]><script type="text/javascript" src="js/excanvas.js"></script><![endif]-->
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.filestyle.mini.js"></script>
    <script type="text/javascript" src="js/jquery.visualize.js"></script>
    <script type="text/javascript" src="js/jquery.select_skin.js"></script>
    <script type="text/javascript" src="js/jquery.pngfix.js"></script>
    <script src="js/jquery.meio.mask.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/custom.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager runat="server" ID="smLogin" />
    <asp:UpdatePanel ID="updLogin" runat="server">
        <ContentTemplate>
            <div id="hld">
                <div class="wrapper">
                    <!-- wrapper begins -->
                    <div class="block small center login">
                        <div class="block_head">
                            <div class="bheadl">
                            </div>
                            <div class="bheadr">
                            </div>
                            <h2>
                                PixelMecanica - Login</h2>
                        </div>
                        <!-- .block_head ends -->
                        <div class="block_content">
                            <asp:Literal ID="litMensagem" runat="server" />
                            <p>
                                <label>
                                    Usuário:</label>
                                <br />
                                <asp:TextBox ID="txtUsuario" Text="" CssClass="text" runat="server" />
                            </p>
                            <p>
                                <label>
                                    Senha:</label>
                                <br />
                                <asp:TextBox ID="txtSenha" Text="Ananias123" TextMode="Password" CssClass="text" runat="server" />
                            </p>
                            <p>
                                <asp:Button ID="btnEntrar" OnClick="btnEntrar_Click" runat="server" Text="Entrar"
                                    CssClass="submit" />
                                <asp:UpdateProgress ID="updPsLogin" runat="server" AssociatedUpdatePanelID="updLogin"
                                    DynamicLayout="true">
                                    <ProgressTemplate>
                                        <asp:Image ID="Image1" ImageUrl="~/Images/ajax-loader.gif" runat="server" />
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </p>
                        </div>
                        <!-- .block_content ends -->
                        <div class="bendl">
                        </div>
                        <div class="bendr">
                        </div>
                    </div>
                    <!-- .login ends -->
                </div>
                <!-- wrapper ends -->
            </div>
            <!-- #hld ends -->
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
