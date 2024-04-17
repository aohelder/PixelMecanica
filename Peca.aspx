<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Peca.aspx.cs" Inherits="PixelMecanica.Site.Peca" %>

<%@ Register Src="Controls/Paginacao.ascx" TagName="Paginacao" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="block_head">
        <div class="bheadl">
        </div>
        <div class="bheadr">
        </div>
        <h2>
            Cadastro de Peças</h2>
    </div>
    <div class="block_content">
        <fieldset>
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <th scope="col">
                        Nome
                    </th>
                    <td>
                        <asp:TextBox runat="server" ID="txtNome" />
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
            <asp:Button ID="btnVoltar" Text="Voltar" runat="server" PostBackUrl="~/Pecas.aspx"
                CssClass="submit small" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
