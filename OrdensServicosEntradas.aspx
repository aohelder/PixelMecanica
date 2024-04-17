<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="OrdensServicosEntradas.aspx.cs" Inherits="PixelMecanica.Site.OrdensServicosEntradas" %>

<%@ Register Src="Controls/Paginacao.ascx" TagName="Paginacao" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <%--<link href="css/jquery.dropdown.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.dropdown.js" type="text/javascript"></script>
    <script type="text/javascript">
        $().ready(function () {
            $('.jquery-dropdown').dropdown();
        });
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="block_head">
        <div class="bheadl">
        </div>
        <div class="bheadr">
        </div>
        <h2>
            Entradas em Estoque</h2>
        <ul>
            <li>
                <asp:Button ID="btnNovaOss" Text="Dar Entrada" PostBackUrl="~/OrdemServicoEntrada.aspx"
                    runat="server" CssClass="submit mid" /></li>
        </ul>
    </div>
    <!-- .block_head ends -->
    <div class="block_content">
    <fieldset>
            <legend>Busca</legend>
            <table style="width: 100%" cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td style="width:120px">
                        <label>
                            Número Serial.:</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtNumeroSerial" CssClass="text small" />
                    </td>
                    <td style="width:120px">
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
        <asp:Repeater ID="rptOss" runat="server" OnItemDataBound="rptOss_ItemDataBound">
            <HeaderTemplate>
                <table cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <th>
                            Cod.
                        </th>
                        <th>
                            Data
                        </th>
                        <th>
                            Valor Total
                        </th>
                        <th>
                            Fornecedor
                        </th>
                        <th>
                            Nota Fiscal
                        </th>
                        <th>
                            &nbsp;
                        </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Literal ID="litId" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litData" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litValor" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litFornecedor" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litNotaFiscal" runat="server" />
                    </td>
                    <td>
                        <div class="icon-operacao">
                            <span class="icon-editar">
                                <asp:Literal runat="server" ID="litLinkEditar"></asp:Literal>
                            </span>
                        </ul>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        <uc2:Paginacao ID="PaginacaoBottom" runat="server" />
    </div>
</asp:Content>
