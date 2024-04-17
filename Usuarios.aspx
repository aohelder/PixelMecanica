<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Usuarios.aspx.cs" Inherits="PixelMecanica.Site.Usuarios" %>

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
            Usuários</h2>
        <ul>
            <li>
                <asp:Button ID="btnNovo" Text="Novo" PostBackUrl="~/Usuario.aspx" runat="server"
                    CssClass="submit small" /></li>
        </ul>
    </div>
    <!-- .block_head ends -->
    <div class="block_content">
        <asp:Repeater ID="rptUsuario" runat="server" OnItemDataBound="rptUsuario_ItemDataBound"
            OnItemCommand="rptUsuario_ItemCommand">
            <HeaderTemplate>
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <th scope="col">
                            ID
                        </th>
                        <th scope="col">
                            Nome
                        </th>
                        <th scope="col">
                            Login
                        </th>
                        <th scope="col">
                            Email
                        </th>
                        <th scope="col">
                            Ativo
                        </th>
                        <th scope="col">
                            DataCadastro
                        </th>
                        <th scope="col">
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
                        <asp:Label ID="lblLogin" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkAtivo" runat="server" Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="lblDataCadastro" runat="server"></asp:Label>
                    </td>
                    <td>
                        <div class="icon-operacao">
                            <span class="icon-editar">
                                <asp:Literal runat="server" ID="litLinkEditar"></asp:Literal>
                            </span><span class="icon-detetar">
                                <asp:LinkButton OnClientClick="return confirm('Confirma Excluir Usuário ?');" CommandArgument="del"
                                    runat="server" ID="linkDel" Text="asd"></asp:LinkButton>
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
