<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Usuario.aspx.cs" Inherits="PixelMecanica.Site.Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="block_head">
        <div class="bheadl">
        </div>
        <div class="bheadr">
        </div>
        <h2>
            Cadastro de Usuários</h2>
    </div>
    <div class="block_content">
        <asp:UpdatePanel ID="upUsuario" runat="server">
            <ContentTemplate>
                <fieldset>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <th scope="col">
                                Nome
                            </th>
                            <td>
                                <asp:TextBox runat="server" ID="txtNome" CssClass="text" />
                            </td>
                            <th scope="col">
                                Login
                            </th>
                            <td>
                                <asp:TextBox runat="server" ID="txtLogin" CssClass="text" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="col">
                                Senha
                            </th>
                            <td>
                                <asp:TextBox runat="server" ID="txtSenha" TextMode="Password" CssClass="text" />
                            </td>
                            <th scope="col">
                                Confirmar Senha
                            </th>
                            <td>
                                <asp:TextBox runat="server" ID="txtConfirmaSenha" TextMode="Password" CssClass="text" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="col">
                                Email
                            </th>
                            <td>
                                <asp:TextBox runat="server" ID="txtEmail" CssClass="text" />
                            </td>
                            <th scope="col">
                                Ativo
                            </th>
                            <td>
                                <asp:CheckBox ID="chkAtivo" runat="server" Checked="true" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="col">
                                Grupo
                            </th>
                            <td>
                                <asp:CheckBoxList runat="server" ID="cblGrupo">
                                </asp:CheckBoxList>
                            </td>
                        </tr>
                    </table>
                    <asp:Literal runat="server" ID="litMensagem"></asp:Literal>
                </fieldset>
                <div style="position: relative; text-align: right; margin-top: 5px; float: right">
                    <asp:Button ID="btnSalvar" OnClick="btnSalvar_Click" Text="Salvar" runat="server"
                        CssClass="submit small" />
                </div>
                <div style="position: relative; text-align: right; margin-top: 5px; float: right">
                    <asp:Button ID="btnVoltar" Text="Voltar" runat="server" PostBackUrl="~/Usuarios.aspx"
                        CssClass="submit small" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
