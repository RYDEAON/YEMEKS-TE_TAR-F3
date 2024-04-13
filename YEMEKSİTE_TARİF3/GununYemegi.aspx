<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YEMEKSİTE_TARİF3.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        text-align: center;
    }
    .auto-style12 {
        font-size: x-large;
    }
    .auto-style13 {
        margin-right: 104px;
    }
    .auto-style14 {
        width: 130%;
    }
    .auto-style15 {
        text-align: left;
    }
    .auto-style16 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style13" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" Width="445px">
    <ItemTemplate>
        <table class="auto-style6">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style12" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td><strong>Malzemeler</strong>:<asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Tarif</strong><asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Image ID="Image2" runat="server" Height="182px" ImageUrl="~/Resimler/images.jpeg" Width="330px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style6">
                        <tr>
                            <td class="auto-style15"><strong>Puan</strong>:<asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            </td>
                            <td class="auto-style16">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi</strong>:<em><asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </em></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
