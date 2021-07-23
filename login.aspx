<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>






<asp:Content ID="Content2" runat="server" contentplaceholderid="cphlast">
         <table align="center" bgcolor="#99CCFF" style="width: 60%; height: 60%;" >
       <tr align="center" ><td colspan="2">
           <asp:Label ID="Label1" runat="server" Text="LOGIN FORM"></asp:Label></td></tr>
           <tr align="center"><td><asp:Label ID="Label2" runat="server" Text="USER NAME"></asp:Label></td>
           <td><asp:TextBox ID="TextBox1" runat="server"  Width="200px"></asp:TextBox></td></tr>
             <tr align="center"><td><asp:Label ID="Label3" runat="server" Text="PASSWORD"></asp:Label></td>
           <td><asp:TextBox ID="TextBox2" runat="server"  Width="200px" TextMode="Password"></asp:TextBox></td></tr>
            <tr align="center"><td>
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" /></td>
           <td> <asp:Button ID="Button2" runat="server" Text="CLEAR" /></td></tr>
           <tr align="center"><td colspan="2">
               <asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"></asp:Label>
               <br />
               <a href="#"><asp:Label ID="Label4" runat="server" Text="Registration Form"></asp:Label></a> </td></tr>
         </table>
        </asp:Content>


