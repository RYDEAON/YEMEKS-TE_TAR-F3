<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YEMEKSİTE_TARİF3.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="450px">
        <ItemTemplate>
            <div class="auto-style11">
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </div>
        </ItemTemplate>
    </asp:DataList>


    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/Resimler/images (1).jpeg" Width="450px" />
</asp:Content>
