<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Fabricante.aspx.cs" Inherits="PixelMecanica.Site.Fabricante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="block_head">
        <div class="bheadl">
        </div>
        <div class="bheadr">
        </div>
        <h2>
            Fabricante</h2>
    </div>
    <!-- .block_head ends -->
    <div class="block_content">
        <div class="container_12">
            <div class="clearfix">
            </div>
            <label>
                Nome</label>
            <asp:TextBox runat="server" ID="txtNome" />
        </div>
        <div style="position: relative; text-align: right; margin-top: 5px; float: right">
            <asp:Button Text="Salvar" runat="server" CssClass="submit small" ID="btnSalvar" OnClick="btnSalvar_Click" />
        </div>
        <div style="position: relative; text-align: right; margin-top: 5px; float: right">
            <asp:Button ID="btnVoltar" Text="Voltar" runat="server" PostBackUrl="~/Fabricantes.aspx"
                CssClass="submit small" />
        </div>
        <br />
        <asp:Literal ID="litMensagemGeral" runat="server" />
    </div>
</asp:Content>
