<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YEMEKSİTE_TARİF3.Yemekler" %>

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
        .auto-style9 {
            width: 29px;
        }
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            font-weight: bold;
            font-size: small;
        }
        .auto-style12 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style3">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>YEMEK&nbsp; LİSTESİ </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
               <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/Delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style6">
                 <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh-icon-27.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5">
        <table class="auto-style3">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style10" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style10" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                </td>
                <td>YEMEK&nbsp; EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style3">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style11" Text="Ekle" Width="100px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
