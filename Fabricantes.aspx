<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Fabricantes.aspx.cs" Inherits="PixelMecanica.Site.Fabricantes" %>

<%@ Register Src="Controls/Paginacao.ascx" TagName="Paginacao" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="block_head">
        <div class="bheadl">
        </div>
        <div class="bheadr">
        </div>
        <h2>
            Fabricantes</h2>
        <ul>
            <li>
                <asp:Button ID="btnNovaOss" Text="Novo" PostBackUrl="~/Fabricante.aspx" runat="server"
                    CssClass="submit small" /></li>
        </ul>
    </div>
    <div class="block_content">
        <asp:Repeater ID="rptFabricante" runat="server" OnItemDataBound="rptFabricante_ItemDataBound"
            OnItemCommand="rptFabricante_ItemCommand" ViewStateMode="Disabled">
            <HeaderTemplate>
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <th scope="col">
                            ID
                        </th>
                        <th scope="col">
                            Nome
                        </th>
                        <th>
                            &nbsp;
                        </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="lblID" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblNome" runat="server"></asp:Label>
                    </td>
                    <td>
                        <div class="icon-operacao">
                            <span class="icon-editar">
                                <asp:Literal runat="server" ID="litLinkEditar"></asp:Literal>
                            </span><span class="icon-detetar">
                                <asp:LinkButton OnClientClick="return confirm('Confirma Excluir Fabricante ?');"
                                    CommandArgument="del" runat="server" ID="linkDel" Text="asd"></asp:LinkButton>
                            </span>
                        </div>
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
