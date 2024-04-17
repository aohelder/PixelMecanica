<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LucroDePecaRelatorio.aspx.cs"
    Inherits="PixelMecanica.Site.LucroDePecaRelatorio" %>

<%@ Register Assembly="Telerik.ReportViewer.WebForms, Version=4.2.10.1110, Culture=neutral, PublicKeyToken=a9d7983dfcc261be"
    Namespace="Telerik.ReportViewer.WebForms" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <telerik:ReportViewer ID="ReportViewer1" runat="server" Width="800px" Height="1024px">
        </telerik:ReportViewer>
    </div>
    </form>
</body>
</html>
