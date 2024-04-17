<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Cliente.aspx.cs" Inherits="PixelMecanica.Site.ClientePagina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Literal runat="server" ID="litMensagem"></asp:Literal>
    <div class="block_head">
        <div class="bheadl">
        </div>
        <div class="bheadr">
        </div>
        <h2>
            Cadastro de Clientes</h2>
        <ul class="tabs">
            <li class="active"><a href="#tab1">Cadastro Pessoal</a></li>
            <li><a href="#tab3">Endereços</a></li>
            <li><a href="#tab2">Carros</a></li>
        </ul>
    </div>
    <div class="block_content">
        <div id="tab1" class="tab_content" style="display: block;">
            <h2>
                Cliente</h2>
            <table style="width: 100%">
                <tr>
                    <td>
                        <label for="txtNome">
                            Nome</label>
                    </td>
                    <td>
                        <label for="txNasc">
                            Data de Nascimento</label>
                    </td>
                    <td>
                        <label for="txtCPF">
                            CPF</label>
                    </td>
                    <td>
                        <label for="txtRg">
                            Documento RG</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input runat="server" type="text" name="txtNome" id="txtNome" class="text medium " />
                    </td>
                    <td>
                        <input runat="server" type="text" name="txNasc" clientidmode="Static" id="txNasc"
                            class="text smalling" alt="date" />
                    </td>
                    <td>
                        <input runat="server" type="text" name="txtCPF" clientidmode="Static" id="txtCPF"
                            class="text smalling" alt="cpf" />
                    </td>
                    <td>
                        <input runat="server" type="text" name="txtRg" id="txtRg" class="text smalling" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <label for="txtEmail">
                            E-mail</label>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <input type="text" runat="server" name="txtEmail" id="txtEmail" class="text medium" />
                    </td>
                </tr>
            </table>
            <fieldset>
                <legend>Telefones</legend>
                <table style="width: 100%">
                    <tr>
                        <td>
                            <label for="txtResidencial">
                                Residencial</label>
                        </td>
                        <td>
                            <label for="txtComercial">
                                Comercial</label>
                        </td>
                        <td>
                            <label for="txtCelular">
                                Celular</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input runat="server" type="text" name="txtResidencial" id="txtResidencial" class="text small" alt="phone" />
                        </td>
                        <td>
                            <input runat="server" type="text" name="txtComercial" id="txtComercial" class="text small" alt="phone" />
                        </td>
                        <td>
                            <input runat="server" type="text" name="txtCelular" id="txtCelular" class="text small" alt="phone-cel" />
                        </td>
                    </tr>
                </table>
            </fieldset>
        </div>
        <div id="tab3" class="tab_content" style="display: block;">
            <h2>
                Endereços</h2>
            <asp:UpdatePanel ID="upCEP" runat="server">
                <ContentTemplate>
                    <table style="width: 100%">
                        <tr>
                            <td>
                                <label>
                                    CEP</label>
                            </td>
                            <td>
                                <label>
                                    Rua</label>
                            </td>
                            <td>
                                <label>
                                    Número</label>
                            </td>
                            <td>
                                <label>
                                    Complemento</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtCEP" CssClass="text small" AutoPostBack="true"
                                    OnTextChanged="txtCEP_TextChanged" />
                                <asp:UpdateProgress ID="updPsCarro" runat="server" AssociatedUpdatePanelID="upCEP"
                                    DynamicLayout="true">
                                    <ProgressTemplate>
                                        <asp:Image ID="Image1" ImageUrl="~/Images/ajax-loader.gif" runat="server" />
                                        Buscando Endereço...
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtRua" CssClass="text small" />
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtNumero" CssClass="text small" />
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtComplemento" CssClass="text small" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    Bairro</label>
                            </td>
                            <td>
                                <label>
                                    Cidade</label>
                            </td>
                            <td>
                                <label>
                                    Estado</label>
                            </td>
                            <td>
                                <label>
                                    Tipo de Endereço</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtBairro" CssClass="text small" />
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtCidade" CssClass="text small" />
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtEstado" CssClass="text small" />
                            </td>
                            <td>
                                <asp:DropDownList runat="server" ID="ddlTipo">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                    <div style="width: 100%; text-align: right; margin-top: 5px">
                        <asp:Button runat="server" ID="btnAddEndereco" Text="Adicionar" CssClass="submit small"
                            OnClick="btnAddEndereco_Click" />
                    </div>
                    <asp:Literal ID="litMensagemEndereco" runat="server" />
                    <div id="Div1">
                        <div class="container_12">
                            <asp:Repeater ID="rptClientesEnderecos" runat="server" OnItemDataBound="rptClientesEnderecos_ItemDataBound"
                                OnItemCommand="rptClientesEnderecos_OnItemCommand">
                                <HeaderTemplate>
                                    <table width="920px" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <th scope="col">
                                                Rua
                                            </th>
                                            <th scope="col">
                                                Numero
                                            </th>
                                            <th scope="col">
                                                Complemento
                                            </th>
                                            <th scope="col">
                                                Cep
                                            </th>
                                            <th scope="col">
                                                Bairro
                                            </th>
                                            <th scope="col">
                                                Cidade
                                            </th>
                                            <th scope="col">
                                                Estado
                                            </th>
                                            <th scope="col">
                                                Tipo
                                            </th>
                                            <th>
                                                &nbsp;
                                            </th>
                                        </tr>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr runat="server" id="trLinhaEditada" visible="false">
                                        <td colspan="7" style="border-bottom: 1px #000 solid">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td>
                                                        <label>
                                                            CEP</label>
                                                    </td>
                                                    <td>
                                                        <label>
                                                            Rua</label>
                                                    </td>
                                                    <td>
                                                        <label>
                                                            Número</label>
                                                    </td>
                                                    <td>
                                                        <label>
                                                            Complemento</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtCepedt" CssClass="text small" AutoPostBack="false"
                                                            OnTextChanged="txtCEP_TextChanged" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtRua" CssClass="text small" />
                                                    </td>
                                                    <td>
                                                        <input runat="server" type="text" name="txtNumero" id="txtNumero" class="text smalling"
                                                            visible="false" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtComplemento" CssClass="text smalling" Visible="false" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label>
                                                            Bairro</label>
                                                    </td>
                                                    <td>
                                                        <label>
                                                            Cidade</label>
                                                    </td>
                                                    <td>
                                                        <label>
                                                            Estado</label>
                                                    </td>
                                                    <td>
                                                        <label>
                                                            Tipo</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtBairro" CssClass="text small" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtCidade" CssClass="text small" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtEstado" CssClass="text small" />
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList runat="server" ID="ddlTipoEdt">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td scope="col" style="border-bottom: 1px #000 solid">
                                            <div class="icon-operacao">
                                                <span class="icon-atualizar">
                                                    <asp:LinkButton CommandArgument="atu" runat="server" ID="LinkUpd" Text="Atualizar"
                                                        Visible="false" ToolTip="Atualizar"></asp:LinkButton>
                                                </span><span class="icon-cancelar">
                                                    <asp:LinkButton CommandArgument="can" runat="server" ID="linkCancelar" Text="Cancelar"
                                                        Visible="false" ToolTip="Cancelar Edição"></asp:LinkButton>
                                                </span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr runat="server" id="trLinha">
                                        <td scope="col">
                                            <asp:Label ID="litClienteEnderecoId" Visible="false" runat="server"></asp:Label>
                                            <asp:Label ID="lblRua" runat="server"></asp:Label>
                                        </td>
                                        <td scope="col">
                                            <asp:Label ID="lblNumero" runat="server"></asp:Label>
                                        </td>
                                        <td scope="col">
                                            <asp:Label ID="lblComplemento" runat="server"></asp:Label>
                                        </td>
                                        <td scope="col">
                                            <asp:Label ID="lblCep" runat="server"></asp:Label>
                                            <asp:TextBox runat="server" ID="txtCEP" CssClass="text small" Visible="false" />
                                        </td>
                                        <td scope="col">
                                            <asp:Label ID="lblBairro" runat="server"></asp:Label>
                                        </td>
                                        <td scope="col">
                                            <asp:Label ID="lblCidade" runat="server"></asp:Label>
                                        </td>
                                        <td scope="col">
                                            <asp:Label ID="lblEstado" runat="server"></asp:Label>
                                        </td>
                                        <td scope="col">
                                            <asp:Label ID="lblTipo" runat="server"></asp:Label>
                                        </td>
                                        <td scope="col">
                                            <div class="icon-operacao">
                                                <span class="icon-editar" runat="server" id="liEdtAtua">
                                                    <asp:LinkButton CommandArgument="edt" runat="server" ID="linkEdt" Text="Editar" ToolTip="Editar este item"></asp:LinkButton>
                                                </span><span class="icon-detetar" runat="server" id="liDelCanc">
                                                    <asp:LinkButton CommandArgument="del" runat="server" ID="linkDel" Text="Deletar"
                                                        OnClientClick="return confirm('Confirma Excluir esse Endereço ?');" ToolTip="Excluir"></asp:LinkButton>
                                                </span>
                                            </div>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="txtCEP" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
        <div id="tab2" class="tab_content" style="display: block;">
            <h2>
                Carros</h2>
            <asp:UpdatePanel ID="upClienteCarro" runat="server">
                <ContentTemplate>
                    <table style="width: 100%">
                        <tr>
                            <td>
                                <label>
                                    Placa</label>
                            </td>
                            <td>
                                <label>
                                    Km</label>
                            </td>
                            <td>
                                <label>
                                    Fabricante</label>
                            </td>
                            <td>
                                <label>
                                    Carro</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtPlaca" CssClass="text small" />
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtKm" CssClass="text small" />
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlFabricante" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlFabricante_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlCarro" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    Ano/Carro e Ano/Modelo</label>
                            </td>
                            <td>
                                <label>
                                    Potência</label>
                            </td>
                            <td>
                                <label>
                                    Valvula</label>
                            </td>
                            <td>
                                <label>
                                    Cor</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtAnoCarro" CssClass="text smalling" />&nbsp;
                                <asp:TextBox runat="server" ID="txtAnoModelo" CssClass="text smalling" />
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtPotencia" CssClass="text small" />
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtValvula" CssClass="text small" />
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlCor" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                    <div style="width: 100%; text-align: right; margin-top: 5px">
                        <asp:Button runat="server" ID="btnAddClienteCarro" Text="Adicionar" CssClass="submit small"
                            OnClick="btnAddClienteCarro_Click" />
                    </div>
                    <asp:Literal ID="litMensagemCarro" runat="server" />
                    <div id="Div2">
                        <div class="container_12">
                            <asp:Repeater ID="rptClientesCarros" runat="server" OnItemDataBound="rptClientesCarros_ItemDataBound"
                                OnItemCommand="rptClientesCarros_OnItemCommand">
                                <HeaderTemplate>
                                    <table width="920px" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <th scope="col">
                                                Placa
                                            </th>
                                            <th scope="col">
                                                Km
                                            </th>
                                            <th scope="col">
                                                Fabricante - Carro
                                            </th>
                                            <th scope="col">
                                                Ano - Carro/Modelo
                                            </th>
                                            <th scope="col">
                                                Potência
                                            </th>
                                            <th scope="col">
                                                Valvulas
                                            </th>
                                            <th scope="col">
                                                Cor
                                            </th>
                                            <th>
                                                &nbsp;
                                            </th>
                                        </tr>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <%--Template de Edição --%>
                                    <tr runat="server" id="trLinhaEditada" visible="false">
                                        <td colspan="7" style="border-bottom: 1px #000 solid">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td>
                                                        <label>
                                                            Placa</label>
                                                    </td>
                                                    <td>
                                                        <label>
                                                            Km</label>
                                                    </td>
                                                    <td>
                                                        <label>
                                                            Fabricante</label>
                                                    </td>
                                                    <td>
                                                        <label>
                                                            Carro</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtPlaca" CssClass="text small" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtKm" CssClass="text small" />
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlFabricante" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlFabricante_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlCarro" runat="server">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label>
                                                            Ano/Carro e Ano/Modelo</label>
                                                    </td>
                                                    <td>
                                                        <label>
                                                            Potência</label>
                                                    </td>
                                                    <td>
                                                        <label>
                                                            Valvula</label>
                                                    </td>
                                                    <td>
                                                        <label>
                                                            Cor</label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtAnoCarro" CssClass="text smalling" />&nbsp;
                                                        <asp:TextBox runat="server" ID="txtAnoModelo" CssClass="text smalling" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtPotencia" CssClass="text small" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtValvula" CssClass="text small" />
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlCor" runat="server">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td scope="col" style="border-bottom: 1px #000 solid">
                                            <div class="icon-operacao">
                                                <span class="icon-atualizar">
                                                    <asp:LinkButton CommandArgument="atu" runat="server" ID="LinkUpd" Text="Atualizar"
                                                        Visible="false" ToolTip="Atualizar"></asp:LinkButton>
                                                </span><span class="icon-cancelar">
                                                    <asp:LinkButton CommandArgument="can" runat="server" ID="linkCancelar" Text="Cancelar"
                                                        Visible="false" ToolTip="Cancelar Edição"></asp:LinkButton>
                                                </span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr runat="server" id="trLinha">
                                        <td scope="col">
                                            <asp:Label ID="litClienteCarroId" Visible="false" runat="server"></asp:Label>
                                            <asp:Label ID="lblPlaca" runat="server"></asp:Label>
                                        </td>
                                        <td scope="col">
                                            <asp:Label ID="lblKm" runat="server"></asp:Label>
                                        </td>
                                        <td scope="col">
                                            <asp:Label ID="lblFabricanteCarro" runat="server"></asp:Label>
                                            <asp:Label ID="lblCarro" runat="server" Visible="false"></asp:Label>
                                            <asp:Label ID="lblFabricante" runat="server" Visible="false"></asp:Label>
                                        </td>
                                        <td scope="col">
                                            <asp:Label ID="lblAnoCarroModelo" runat="server"></asp:Label>
                                            <asp:Label ID="lblAnoCarro" runat="server" Visible="false"></asp:Label>
                                            <asp:Label ID="lblAnoModelo" runat="server" Visible="false"></asp:Label>
                                        </td>
                                        <td scope="col">
                                            <asp:Label ID="lblPotencia" runat="server"></asp:Label>
                                        </td>
                                        <td scope="col">
                                            <asp:Label ID="lblValvulas" runat="server"></asp:Label>
                                        </td>
                                        <td scope="col">
                                            <asp:Label ID="lblCor" runat="server"></asp:Label>
                                        </td>
                                        <td scope="col">
                                            <div class="icon-operacao">
                                                <span class="icon-editar" runat="server" id="liEdtAtua">
                                                    <asp:LinkButton CommandArgument="edt" runat="server" ID="linkEdt" Text="Editar" ToolTip="Editar este item"></asp:LinkButton>
                                                </span><span class="icon-detetar" runat="server" id="liDelCanc">
                                                    <asp:LinkButton CommandArgument="del" runat="server" ID="linkDel" Text="Deletar"
                                                        OnClientClick="return confirm('Confirma Excluir esse Carro ?');" ToolTip="Excluir"></asp:LinkButton>
                                                </span>
                                            </div>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div style="position: relative; text-align: right; margin-top: 5px; float: right">
            <asp:Button runat="server" ID="btnSalvar" Text="Salvar" CssClass="submit small" OnClick="btnSalvar_Click"
                EnableViewState="false" />
        </div>
        <div style="position: relative; text-align: right; margin-top: 5px; float: right">
            <asp:Button runat="server" ID="btnVoltar" Text="Voltar" CssClass="submit small" PostBackUrl="~/Clientes.aspx"
                EnableViewState="false" />
        </div>
    </div>
</asp:Content>
