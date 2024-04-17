<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Carro.aspx.cs" Inherits="PixelMecanica.Site.Carro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="block_head">
        <div class="bheadl">
        </div>
        <div class="bheadr">
        </div>
        <h2>
            Carro</h2>
    </div>
    <!-- .block_head ends -->
    <div class="block_content">
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <label>
                        Nome</label>
                    <asp:TextBox runat="server" ID="txtNome" CssClass="text" />
                </td>
                <td>
                    <label>
                        Fabricante</label>
                </td>
                <td>
                    <asp:DropDownList runat="server" ID="ddlFabricante" CssClass="styled">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <div style="position: relative; text-align: right; margin-top: 5px; float: right">
            <asp:Button Text="Salvar" runat="server" CssClass="submit small" ID="btnSalvar" OnClick="btnSalvar_Click" />
        </div>
        <div style="position: relative; text-align: right; margin-top: 5px; float: right">
            <asp:Button ID="btnVoltar" Text="Voltar" runat="server" PostBackUrl="~/Carros.aspx"
                CssClass="submit small" />
        </div>
        <br />
        <asp:Literal ID="litMensagemGeral" runat="server" />
    </div>
</asp:Content>
