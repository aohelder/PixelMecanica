<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ConsultaEstoque.aspx.cs" Inherits="PixelMecanica.Site.ConsultaEstoque" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="block_head">
        <div class="bheadl">
        </div>
        <div class="bheadr">
        </div>
        <h2>
            Consulta de Peças em Estoque</h2>
    </div>
    <div class="block_content">
        <fieldset>
            <legend>Busca</legend>
            <table style="width: 100%" cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td style="width: 120px">
                        <label>
                            Número Serial.:</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtNumeroSerial" CssClass="text small" />
                    </td>
                    <td style="width: 120px">
                        <label>
                            Peça.:</label>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlPecas" CssClass="jquery-dropdown">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button runat="server" ID="btnFiltro" Text="Buscar" CssClass="submit small" EnableViewState="false"
                            OnClick="btnFiltro_Click" />
                    </td>
                </tr>
            </table>
        </fieldset>
        <asp:Literal ID="litMensagem" runat="server" EnableViewState="false" />
        
        <asp:Repeater runat="server" ID="rptPecaEstoque" OnItemDataBound="rptPecaEstoque_ItemDataBound">
            <HeaderTemplate>
                <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                    <tr>
                        <th>
                            Número Serial
                        </th>
                        <th>
                            Peça
                        </th>
                        <th>
                            Quantidade em Estoque
                        </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Literal ID="litNumeroSerial" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litPeca" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litQuantidadeEmEstoque" runat="server" />
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
   <%-- <link href="css/jquery.dropdown.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.dropdown.js" type="text/javascript"></script>
    <script type="text/javascript">
        $().ready(function () {
            // $('.jquery-dropdown').dropdown();
        });
    </script>--%>
</asp:Content>
