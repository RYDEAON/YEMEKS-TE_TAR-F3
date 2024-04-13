<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YEMEKSİTE_TARİF3.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            background-color: #CCCCCC;
        }

        .auto-style9 {
            width: 29px;
            height: 34px;
        }

        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            height: 34px;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5" Height="35px" Width="448px">
        <table class="auto-style3">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                </td>
                <td class="auto-style11">MESAJ LİSTESİ </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    <asp:DataList ID="DataList1" runat="server" Width="445px" CssClass="auto-style11">
        <ItemTemplate>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                    </td>
                    <td class="auto-style12">
                 <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/reading-icon-png_265270.jpg" Width="32px" />
                  </a> </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
</asp:Content>
