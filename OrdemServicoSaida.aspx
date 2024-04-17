<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="OrdemServicoSaida.aspx.cs" Inherits="PixelMecanica.Site.OrdemServicoSaida" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <!-- Mascaras dos controles -->
    <script src="js/jquery-fieldselection.js" type="text/javascript"></script>
    <script src="js/jquery.decimalMask.1.1.1.min_.js" type="text/javascript"></script>
    <script type="text/javascript">
        
        var jsonValorTotal = { "Total": [
                    { "Pecas": "0" },
                    { "Servico": "0" },
                    { "Desconto": "0" }
                ]
        };

        function SomaValorTotal(valor, campo) {
            var ValorParametro = (valor.replace(',', '.') * 1);

            // pecas
            if (campo == "pecas")
                jsonValorTotal.Total[0].Pecas = ValorParametro;
            else if (campo == "servico")
                jsonValorTotal.Total[1].Servico = ValorParametro;
            else if (campo == "desconto")
                jsonValorTotal.Total[2].Desconto = ValorParametro;

            var Resultado = (jsonValorTotal.Total[0].Pecas + jsonValorTotal.Total[1].Servico) - jsonValorTotal.Total[2].Desconto;

            document.getElementById("txtValorTotal").value = Resultado;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="block_head">
        <div class="bheadl">
        </div>
        <div class="bheadr">
        </div>
        <h2>
            Abrir Ordem de Serviço</h2>
        <ul class="tabs">
            <li class="active">
                <a href="#" onclick="AbrirTela('<%= LinkTela %>', 'Relatorio');">Imprimir</a>
            </li>
        </ul>
    </div>
    <!-- .block_head ends -->
    <div class="block_content">
        <div class="container_12">
            <div class="clearfix">
            </div>
            <div style="float: right; margin-left: 5px">
                <asp:DropDownList runat="server" ID="ddlStatus" Visible="false" CssClass="styled">
                </asp:DropDownList>
            </div>
            <h2 style="float: right">
                Status -
                <asp:Label ID="lblStatusOrcamento" Text="Orçamento" runat="server" />
            </h2>
            <div style="clear: both">
            </div>
            <asp:UpdatePanel ID="updBuscaCarro" runat="server">
                <ContentTemplate>
                    <fieldset>
                        <legend>Selecione um carro</legend>
                        <asp:Literal ID="litMensagemCarro" runat="server" />
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    <label>
                                        Placa</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPlaca" runat="server" CssClass="text" />
                                    <asp:Button ID="btnBuscaCarro" Text="Buscar Carro" runat="server" CssClass="submit mid"
                                        OnClick="btnBuscaCarro_Click" />
                                </td>
                                <td>
                                    <asp:UpdateProgress ID="updPsCarro" runat="server" AssociatedUpdatePanelID="updBuscaCarro"
                                        DynamicLayout="true">
                                        <ProgressTemplate>
                                            <asp:Image ID="Image1" ImageUrl="~/Images/ajax-loader.gif" runat="server" />
                                        </ProgressTemplate>
                                    </asp:UpdateProgress>
                                </td>
                            </tr>
                        </table>
                        <table border="0" cellpadding="0" cellspacing="0" id="tbClienteCarro" runat="server">
                            <tr>
                                <td>
                                    <asp:Label ID="litClienteCarroId" runat="server" />
                                    <asp:Literal ID="litCarro" runat="server" />
                                </td>
                                <td>
                                    <asp:Literal ID="litNomeCliente" runat="server" />
                                </td>
                                <td>
                                    Km: <asp:TextBox ID="txtKmAtual" runat="server" Visible="false" CssClass="text" />
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <asp:UpdatePanel ID="updPecas" runat="server">
                <ContentTemplate>
                    <fieldset>
                        <legend>Peças</legend>
                        <asp:Literal ID="litMensagemPeca" runat="server" />
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    Código
                                    <asp:TextBox ID="txtCodPeca" runat="server" AutoPostBack="true" OnTextChanged="txtCodPeca_TextChanged"
                                        CssClass="text" />
                                    <asp:Label ID="lblNomePeca" runat="server" />
                                    <asp:Label ID="lblProdutoId" Visible="false" runat="server" />
                                </td>
                                <td>
                                    Valor
                                    <asp:TextBox ID="txtValor" ClientIDMode="Static" runat="server" CssClass="text" />
                                </td>
                                <td>
                                    Quantidade
                                    <asp:TextBox ID="txtQtde" runat="server" CssClass="text" />
                                </td>
                                <td>
                                    <asp:Button ID="btnAddPeca" Text="Adicionar" runat="server" CssClass="submit small"
                                        OnClick="btnAddPeca_Click" />
                                </td>
                                <td>
                                    <asp:UpdateProgress ID="updsPecas" runat="server" AssociatedUpdatePanelID="updPecas"
                                        DynamicLayout="true">
                                        <ProgressTemplate>
                                            <asp:Image ID="Image2" ImageUrl="~/Images/ajax-loader.gif" runat="server" />
                                        </ProgressTemplate>
                                    </asp:UpdateProgress>
                                </td>
                            </tr>
                        </table>
                        <asp:Repeater ID="rptPecas" runat="server" OnItemDataBound="rptPecas_ItemDataBound"
                            OnItemCommand="rptPecas_ItemCommand">
                            <HeaderTemplate>
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                    <tr>
                                        <th>
                                            <label>
                                                Peça</label>
                                        </th>
                                        <th>
                                            <label>
                                                Valor</label>
                                        </th>
                                        <th>
                                            <label>
                                                Quantidade</label>
                                        </th>
                                        <th>
                                            &nbsp;
                                        </th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Literal ID="litCod" runat="server" />
                                        <asp:Literal ID="litPeca" runat="server" />
                                        <asp:Literal ID="litPecaId" Visible="false" runat="server" />
                                    </td>
                                    <td>
                                        <asp:Literal ID="litValor" runat="server" />
                                    </td>
                                    <td>
                                        <asp:Literal ID="litQuantidade" runat="server" />
                                    </td>
                                    <td>
                                        <div class="icon-operacao">
                                            <span class="icon-detetar">
                                                <asp:LinkButton OnClientClick="return confirm('Confirma Excluir Peça ?');" CommandArgument="del"
                                                    runat="server" ID="linkDel" Text="asd"></asp:LinkButton>
                                            </span>
                                        </div>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                <tr>
                                    <td>
                                        <strong>TOTAL</strong>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                        <strong>
                                            <asp:Label ClientIDMode="Static" ID="lblTotalPecas" runat="server" /></strong>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                </table></FooterTemplate>
                        </asp:Repeater>
                    </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <asp:UpdatePanel ID="upServicos" runat="server">
                <ContentTemplate>
                    <fieldset>
                        <legend>Serviço</legend>
                        <asp:Literal ID="litMensagemServico" runat="server" />
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                            <tr>
                                <td colspan="4">
                                    <textarea runat="server" id="txtServico"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Valor
                                    <asp:TextBox ID="txtValorServico" runat="server" CssClass="text" />&nbsp;
                                    <asp:Button ID="btnAddServico" Text="Adicionar" CssClass="submit small" OnClick="btnAddServico_Click"
                                        runat="server" />
                                </td>
                                <td>
                                    <asp:UpdateProgress ID="upsServicos" runat="server" AssociatedUpdatePanelID="upServicos"
                                        DynamicLayout="true">
                                        <ProgressTemplate>
                                            <asp:Image ID="Image3" ImageUrl="~/Images/ajax-loader.gif" runat="server" />
                                        </ProgressTemplate>
                                    </asp:UpdateProgress>
                                </td>
                            </tr>
                        </table>
                        <asp:Repeater ID="rptServico" runat="server" OnItemDataBound="rptServico_ItemDataBound"
                            OnItemCommand="rptServico_ItemCommand">
                            <HeaderTemplate>
                                <table class="stats" rel="line" cellpadding="0" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>
                                                <label>
                                                    Serviço</label>
                                            </th>
                                            <th>
                                                <label>
                                                    Valor</label>
                                            </th>
                                            <th>
                                                &nbsp;
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr runat="server" id="trLinhaEditada" visible="false">
                                    <td colspan="6" style="border-bottom: 1px #000 solid">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td>
                                                    <label>
                                                        Serviço</label>
                                                </td>
                                                <td>
                                                    <textarea runat="server" id="txtServico" cols="600"></textarea>
                                                </td>
                                                <td>
                                                    <label>
                                                        Valor</label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtValorServico" runat="server" CssClass="text" />&nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="border-bottom: 1px #000 solid">
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
                                        <asp:Label ID="lblServicoId" Visible="false" runat="server" />
                                        <asp:Literal ID="litServico" runat="server" />
                                    </td>
                                    <td>
                                        <asp:Label ID="lblValorServico" runat="server" />
                                    </td>
                                    <td>
                                        <div class="icon-operacao">
                                            <span class="icon-editar">
                                                <asp:LinkButton CommandArgument="edt" runat="server" ID="linkEdt" Text="Editar" ToolTip="Editar este item"></asp:LinkButton>
                                            </span><span class="icon-detetar">
                                                <asp:LinkButton OnClientClick="return confirm('Confirma Excluir Serviço ?');" CommandArgument="del"
                                                    runat="server" ID="linkDel" Text="asd"></asp:LinkButton>
                                            </span>
                                        </div>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                                <tr>
                                    <td>
                                        <span style="font-weight: bold">TOTAL</span>
                                    </td>
                                    <td>
                                        <span style="font-weight: bold">
                                            <asp:Label ID="lblValorTotal" runat="server" /></span>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                        <label>
                            Desconto</label>
                        <asp:TextBox ID="txtDesconto" AutoPostBack="true" OnTextChanged="txtDesconto_TextChanged"
                            runat="server" CssClass="text" /><br />
                        <br />
                        <h3>
                            Valor total do serviço com desconto (R$):
                            <asp:Label ClientIDMode="Static" ID="lblValorDesconto" runat="server" /></h3>
                    </fieldset>
                    <br />
                    <asp:UpdatePanel ID="updMecanico" runat="server">
                        <ContentTemplate>
                            <fieldset>
                                <legend>Mecanico</legend>
                                <asp:Literal ID="litMensagemMecanico" runat="server" />
                                <table border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            Nome
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlMecanico" runat="server" CssClass="styled">
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            Porcentagem
                                            <asp:TextBox ID="txtPctMecanico" CssClass="text" AutoPostBack="true" runat="server"
                                                OnTextChanged="txtPctMecanico_TextChanged" />
                                        </td>
                                        <td>
                                            Valor
                                            <asp:TextBox ID="txtValorMecanico" Enabled="false" runat="server" CssClass="text" />
                                        </td>
                                        <td>
                                            <asp:Button ID="btnAddMecanico" Text="Adicionar" runat="server" CssClass="submit small"
                                                OnClick="btnAddMecanico_Click" />
                                        </td>
                                        <td>
                                            <asp:UpdateProgress ID="updsMecanico" runat="server" AssociatedUpdatePanelID="updMecanico"
                                                DynamicLayout="true">
                                                <ProgressTemplate>
                                                    <asp:Image ID="Image4" ImageUrl="~/Images/ajax-loader.gif" runat="server" />
                                                </ProgressTemplate>
                                            </asp:UpdateProgress>
                                        </td>
                                    </tr>
                                </table>
                                <asp:Repeater ID="rptMecanico" runat="server" OnItemDataBound="rptMecanico_ItemDataBound"
                                    OnItemCommand="rptMecanico_ItemCommand" OnItemCreated="rptMecanico_ItemCreated">
                                    <HeaderTemplate>
                                        <table class="stats" rel="line" cellpadding="0" cellspacing="0" width="100%">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        <label>
                                                            Mecanico</label>
                                                    </th>
                                                    <th>
                                                        <label>
                                                            Porcentagem</label>
                                                    </th>
                                                    <th>
                                                        <label>
                                                            Valor</label>
                                                    </th>
                                                    <th>
                                                        &nbsp;
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr runat="server" id="trLinhaEditada" visible="false">
                                            <td colspan="6" style="border-bottom: 1px #000 solid">
                                                <table border="0" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblMecanico" runat="server" />
                                                        </td>
                                                        <td>
                                                            Porcentagem
                                                            <asp:TextBox ID="txtPctMecanico" AutoPostBack="true" runat="server" OnTextChanged="txtPctMecanicoEdit_TextChanged"
                                                                CssClass="text" />
                                                        </td>
                                                        <td>
                                                            Valor
                                                            <asp:TextBox ID="txtValorMecanico" Enabled="false" runat="server" CssClass="text" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="border-bottom: 1px #000 solid">
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
                                                <asp:Label ID="lblMecanicoId" Visible="false" runat="server" />
                                                <asp:Literal ID="litMecanico" runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblPctMecanico" runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblValorMecanico" runat="server" />
                                            </td>
                                            <td>
                                                <div class="icon-operacao">
                                                    <span class="icon-editar">
                                                        <asp:LinkButton CommandArgument="edt" runat="server" ID="linkEdt" Text="Editar" ToolTip="Editar este item"></asp:LinkButton>
                                                    </span><span class="icon-detetar">
                                                        <asp:LinkButton OnClientClick="return confirm('Confirma Excluir Mecanico ?');" CommandArgument="del"
                                                            runat="server" ID="linkDel" Text="asd"></asp:LinkButton>
                                                    </span>
                                                </div>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </tbody>
                                        <tr>
                                            <td>
                                                <span style="font-weight: bold">TOTAL</span>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <span style="font-weight: bold">
                                                    <asp:Label ClientIDMode="Static" ID="lblValorTotal" runat="server" /></span>
                                            </td>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        </table>
                                    </FooterTemplate>
                                </asp:Repeater>
                                <asp:HiddenField ID="hdIndexMecanico" runat="server" />
                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <label>
                Valor Total (R$):
            </label>
            <asp:TextBox ID="txtValorTotal" ClientIDMode="Static" runat="server" Enabled="true"
                CssClass="text" />
        </div>
        <div style="position: relative; text-align: right; margin-top: 5px; float: right">
            <asp:Button ID="btnSalvar" OnClick="btnSalvar_Click" Text="Salvar" runat="server"
                CssClass="submit small" />
        </div>
        <div style="position: relative; text-align: right; margin-top: 5px; float: right">
            <asp:Button ID="btnVoltar" Text="Voltar" runat="server" PostBackUrl="~/OrdensServicosSaidas.aspx"
                CssClass="submit small" />
        </div>
        
        <div style="position: relative; text-align: right; margin-top: 5px; float: right">
            <input type="button" name="imprimir" class="submit small" value="Imprimir" onclick="AbrirTela('<%= LinkTela %>', 'Relatorio');" />
        </div>
        
        <br />
        <asp:Literal ID="litMensagemGeral" runat="server" />
    </div>
</asp:Content>
