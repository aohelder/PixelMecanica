<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Clientes.aspx.cs" Inherits="PixelMecanica.Site.Clientes" %>

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
            Clientes</h2>
        <ul>
            <li>
                <asp:Button ID="btnNovaOss" Text="Novo" PostBackUrl="~/Cliente.aspx" runat="server"
                    CssClass="submit small" /></li>
        </ul>
    </div>
    <div class="block_content">
        <h2>
        </h2>
        <div class="clearfix">
        </div>
        <fieldset>
            <legend>Filtros</legend>
            <table style="width: 100%">
                <tr>
                    <td>
                        <label>
                            Nome:</label>
                    </td>
                    <td>
                        <input runat="server" type="text" name="txtNome" id="txtNome" class="text small" />
                    </td>
                    <td>
                        <label>
                            Telefone:</label>
                    </td>
                    <td>
                        <input runat="server" type="text" name="txtTelefone" id="txtTelefone" class="text small" />
                    </td>
                    <td>
                        <asp:Button runat="server" ID="btnFiltro" Text="Buscar" CssClass="submit small" EnableViewState="false"
                            OnClick="btnFiltro_Click" />
                    </td>
                </tr>
            </table>
        </fieldset>
        <asp:Repeater ID="rptClientes" runat="server" OnItemDataBound="rptClientes_ItemDataBound"
            OnItemCommand="Action" ViewStateMode="Enabled">
            <HeaderTemplate>
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <th scope="col">
                            Id
                        </th>
                        <th scope="col">
                            Nome
                        </th>
                        <th scope="col">
                            CPF
                        </th>
                        <th scope="col">
                            RG
                        </th>
                        <th scope="col">
                            E-Mail
                        </th>
                        <th scope="col">
                            Fone Resid.
                        </th>
                        <th scope="col">
                            Fone Comerc.
                        </th>
                        <th scope="col">
                            Fone Celular
                        </th>
                        <th>
                            &nbsp;
                        </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td scope="col">
                        <asp:Label ID="litClienteId" runat="server"></asp:Label>
                    </td>
                    <td scope="col">
                        <asp:Literal ID="litNome" runat="server"></asp:Literal>
                    </td>
                    <td scope="col">
                        <asp:Literal ID="litCpf" runat="server"></asp:Literal>
                    </td>
                    <td scope="col">
                        <asp:Literal ID="litRg" runat="server"></asp:Literal>
                    </td>
                    <td scope="col">
                        <asp:Literal ID="litEmail" runat="server"></asp:Literal>
                    </td>
                    <td scope="col">
                        <asp:Literal ID="litFoneResidencial" runat="server"></asp:Literal>
                    </td>
                    <td scope="col">
                        <asp:Literal ID="litFoneComercial" runat="server"></asp:Literal>
                    </td>
                    <td scope="col">
                        <asp:Literal ID="litFoneCelular" runat="server"></asp:Literal>
                    </td>
                    <td scope="col">
                        <div class="icon-operacao">
                            <span class="icon-editar">
                                <asp:Literal runat="server" ID="litLinkEditar"></asp:Literal>
                            </span><span class="icon-detetar">
                                <asp:LinkButton OnClientClick="return confirm('Confirma Excluir Cliente ?');" CommandArgument="del"
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
