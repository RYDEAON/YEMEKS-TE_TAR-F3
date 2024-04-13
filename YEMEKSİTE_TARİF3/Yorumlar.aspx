<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YEMEKSİTE_TARİF3.Yorumlar" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
            width: 147px;
        }
    </style>

    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5" Height="35px" Width="448px">
        <table class="auto-style3">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />

                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style11">ONAYLANAN YORUM LİSTESİ </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px" CssClass="auto-style11">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/Delete.png" Width="30px" />
                        </td>
                        <td class="auto-style6">
                          <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh-icon-27.png" Width="32px" />
                       </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
     <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5" Height="35px" Width="448px">
     <table class="auto-style3">
         <tr>
             <td class="auto-style9">
                 <asp:Button ID="Button3" runat="server" CssClass="auto-style10" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>

             </td>
             <td class="auto-style11">
                 <asp:Button ID="Button4" runat="server" CssClass="auto-style10" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
             </td>
             <td class="auto-style11">ONAYSIZ YORUM LİSTESİ </td>
         </tr>
     </table>
 </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="445px" CssClass="auto-style11">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/Delete.png" Width="30px" />
                        </td>
                        <td class="auto-style6">
                           <a href="YorumDetay.aspx?Yorumid<%#Eval("Yorumid")%>" > <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/refresh-icon-27.png" Width="32px" />
                       </a> </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
