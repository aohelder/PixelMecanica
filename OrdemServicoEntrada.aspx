<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="OrdemServicoEntrada.aspx.cs" Inherits="PixelMecanica.Site.OrdemServicoEntrada" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="block_head">
        <div class="bheadl">
        </div>
        <div class="bheadr">
        </div>
        <h2>
            Entrada de Peças</h2>
    </div>
    <!-- .block_head ends -->
    <div class="block_content">
        <div class="container_12">
            <div class="clearfix">
            </div>
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <label>
                            Número Nota Fiscal</label>
                        <asp:TextBox ID="txtNotaFiscal" runat="server" CssClass="text" />
                    </td>
                    <td>
                        <label>
                            Fornecedor</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlFornecedor" runat="server" CssClass="styled">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <asp:UpdatePanel ID="updOsEntrada" runat="server">
                <ContentTemplate>
                    <fieldset>
                        <legend>Peças</legend>
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    <label>
                                        Peça</label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlProduto" runat="server" CssClass="styled">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <label>
                                        Valor</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtValor" CssClass="text small" runat="server" />
                                </td>
                                <td>
                                    <label>
                                        Valor Venda</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtValorVenda" CssClass="text small" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>
                                        Quantidade</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtQtde" CssClass="text small" runat="server" />
                                </td>
                                <td>
                                    <label>
                                        Data de Compra</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDtGarantia" ClientIDMode="Static" CssClass="text small" runat="server" />
                                </td>
                                <td>
                                    <label>
                                        Número Serial</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNumeroSerial" CssClass="text small" runat="server" />
                                </td>
                            </tr>
                        </table>
                        <asp:Button ID="btnAddPeca" Text="Adicionar" runat="server" CssClass="submit small"
                            OnClick="btnAddPeca_Click" />
                        <asp:Literal ID="litValidacao" runat="server" />
                        <asp:Repeater ID="rptPecas" runat="server" OnItemDataBound="rptPecas_ItemDataBound"
                            OnItemCommand="rptPecas_ItemCommand">
                            <HeaderTemplate>
                                <table border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <th scope="col">
                                            <label>
                                                Peça</label>
                                        </th>
                                        <th scope="col">
                                            <label>
                                                Valor</label>
                                        </th>
                                        <th scope="col">
                                            <label>
                                                Valor Sugerido</label>
                                        </th>
                                        <th scope="col">
                                            <label>
                                                Quantidade</label>
                                        </th>
                                        <th scope="col">
                                            <label>
                                                Data de Compra</label>
                                        </th>
                                        <th scope="col">
                                            <label>
                                                Número Serial</label>
                                        </th>
                                        <th>
                                            &nbsp;
                                        </th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr runat="server" id="trLinhaEditada" visible="false">
                                    <td colspan="6" style="border-bottom: 1px #000 solid">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td>
                                                    <label>
                                                        Produto</label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlProduto" runat="server">
                                                    </asp:DropDownList>
                                                </td>
                                                <td>
                                                    <label>
                                                        Valor</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtValor" runat="server" />
                                                </td>
                                                <td>
                                                    <label>
                                                        Valor Venda</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtValorVenda" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label>
                                                        Quantidade</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtQtde" runat="server" />
                                                </td>
                                                <td>
                                                    <label>
                                                        Data de Compra</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtDtGarantia" runat="server" />
                                                </td>
                                                <td>
                                                    <label>
                                                        Número Serial</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtNumeroSerial" runat="server" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td scope="col" style="border-bottom: 1px #000 solid">
                                        <div class="icon-operacao">
                                            <span class="icon-atualizar">
                                                <asp:LinkButton CommandArgument="atu" runat="server" ID="LinkUpd" Text="Atualizar"
                                                    ToolTip="Atualizar"></asp:LinkButton>
                                            </span><span class="icon-cancelar">
                                                <asp:LinkButton CommandArgument="can" runat="server" ID="linkCancelar" Text="Cancelar"
                                                    ToolTip="Cancelar Edição"></asp:LinkButton>
                                            </span>
                                        </div>
                                    </td>
                                </tr>
                                <tr runat="server" id="trLinha">
                                    <td>
                                        <asp:Literal ID="litPecaId" runat="server" Visible="false" />
                                        <asp:Literal ID="litPeca" runat="server" />
                                    </td>
                                    <td>
                                        <asp:Literal ID="litValor" runat="server" />
                                    </td>
                                    <td>
                                        <asp:Literal ID="litValorVenda" runat="server" />
                                    </td>
                                    <td>
                                        <asp:Literal ID="litQuantidade" runat="server" />
                                    </td>
                                    <td>
                                        <asp:Literal ID="litDtGarantia" runat="server" />
                                    </td>
                                    <td>
                                        <asp:Literal ID="litNumSerial" runat="server" />
                                    </td>
                                    <td scope="col">
                                        <div class="icon-operacao">
                                            <span class="icon-editar">
                                                <asp:LinkButton CommandArgument="edt" runat="server" ID="linkEdt" Text="Editar" ToolTip="Editar este item"></asp:LinkButton>
                                            </span><span class="icon-detetar">
                                                <asp:LinkButton OnClientClick="return confirm('Confirma Excluir Peça ?');" CommandArgument="del"
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
                    </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div style="position: relative; text-align: right; margin-top: 5px; float: right">
            <asp:Button Text="Salvar" runat="server" CssClass="submit small" ID="btnSalvar" OnClick="btnSalvar_Click" />
        </div>
        <div style="position: relative; text-align: right; margin-top: 5px; float: right">
            <asp:Button ID="btnVoltar" Text="Voltar" runat="server" PostBackUrl="~/OrdensServicosEntradas.aspx"
                CssClass="submit small" />
        </div>
        <br />
        <asp:Literal ID="litMensagemGeral" runat="server" />
    </div>
</asp:Content>
