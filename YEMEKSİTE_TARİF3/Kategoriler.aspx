<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YEMEKSİTE_TARİF3.Banner_Foto.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            background-color: #CCCCCC;
        }
    .auto-style6 {
        text-align: right;
    }
    .auto-style7 {
        width: 263px;
    }
    .auto-style8 {
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        KATEGORİ LİSTESİ
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/Delete.png" Width="30px" />
                        </td>
                        <td class="auto-style6">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh-icon-27.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
