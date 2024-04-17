<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Fornecedor.aspx.cs" Inherits="PixelMecanica.Site.Fornecedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="block_head">
        <div class="bheadl">
        </div>
        <div class="bheadr">
        </div>
        <h2>
            Fornecedor</h2>
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
            <asp:Button ID="btnVoltar" Text="Voltar" runat="server" PostBackUrl="~/Fornecedors.aspx"
                CssClass="submit small" />
        </div>
        <br />
        <asp:Literal ID="litMensagemGeral" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
