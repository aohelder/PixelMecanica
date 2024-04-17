<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="OrdensServicosSaidas.aspx.cs" Inherits="PixelMecanica.Site.OrdensServicosSaidas" %>

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
            Lista de Ordem de Serviço</h2>
        <ul>
            <li>
                <asp:Button ID="btnNovaOss" Text="Abrir Ordem" PostBackUrl="~/OrdemServicoSaida.aspx"
                    runat="server" CssClass="submit mid" /></li>
        </ul>
    </div>
    <!-- .block_head ends -->
    <div class="block_content">
        <div class="clearfix">
        </div>
        <fieldset>
            <legend>Busca</legend>
            <table style="width: 100%">
                <tr>
                    <td>
                        <label>
                            Cod.:</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtCod" CssClass="text small" />
                    </td>
                    <td>
                        <label>
                            Placa.:</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtPlaca" CssClass="text small" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Data Início:</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtDataInicio" CssClass="text small" />
                    </td>
                    <td>
                        <label>
                            Data Fim:</label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtDataFim"  CssClass="text small"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            Status:</label>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlStatus" >
                            <asp:ListItem Text="Orçamento" Value="1" />
                            <asp:ListItem Text="Em Execução" Value="2" />
                            <asp:ListItem Text="Finalizada" Value="3" />
                            <asp:ListItem Text="Parada" Value="4" />
                        </asp:DropDownList>
                    </td>
                    <td colspan="3">
                        <asp:Button runat="server" ID="btnFiltro" Text="Buscar" CssClass="submit small" EnableViewState="false"
                            OnClick="btnFiltro_Click" />
                    </td>
                </tr>
            </table>
        </fieldset>
        <asp:Repeater ID="rptOss" runat="server" OnItemDataBound="rptOss_ItemDataBound" OnItemCommand="Action">
            <HeaderTemplate>
                <table cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <th>
                            Cod.
                        </th>
                        <th>
                            Data
                        </th>
                        <th>
                            Valor Total
                        </th>
                        <th>
                            Cliente
                        </th>
                        <th>
                            Placa
                        </th>
                        <th>
                            Carro
                        </th>
                        <th>
                            Fabricante
                        </th>
                        <th>
                            Status
                        </th>
                        <th>
                            &nbsp;
                        </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Literal ID="litId" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litData" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litValor" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litCliente" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litPlaca" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litCarro" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litFabricante" runat="server" />
                    </td>
                    <td>
                        <asp:Literal ID="litStatus" runat="server" />
                    </td>
                    <td>
                        <div class="icon-operacao">
                            <span class="icon-editar">
                                <asp:Literal runat="server" ID="litLinkEditar"></asp:Literal>
                            </span>
                            
                            <span class="icon-detetar" runat="server" id="spanDeletar" visible="false">
                                <asp:LinkButton OnClientClick="return confirm('Confirma Excluir Ordem de Serviço ?');" CommandArgument="del"
                                    runat="server" ID="linkDel" Text="asd" Visible="false"></asp:LinkButton>
                            </span>

                            <span class="icon-print" runat="server" id="spanPrint" visible="false">
                                <asp:Literal ID="litPrint" runat="server" />
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
