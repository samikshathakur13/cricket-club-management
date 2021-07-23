<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphbody" Runat="Server">

 <h1 style="color: #00FF00" align="center"  >Feedback
</h1>

    <table style="border-style: groove; border-color: #00FFFF; width: 70%" 
        align="center">
        <tr>
            <td width="30%" colspan="2" style="width: 70%" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="30%" colspan="2" style="width: 70%" align="center">
                <h2 style="color: #00FFFF; font-family: forte;">Send your message now</h2>
                <p style="color: #00FFFF; font-family: forte; height: 3px;">&nbsp;</p>
            </td>
        </tr>
        <tr>
            <td width="30%" align="left" 
                
                style="color: #B7BC70; font-size: large; font-family: 'MS Reference Sans Serif'; width: 70%;" 
                colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="30%" align="right" 
                style="color: #B7BC70; font-size: large; font-family: 'MS Reference Sans Serif';">
                Name:</td>
            <td width="40%" align="left">
                <asp:TextBox ID="txt_name" runat="server" Width="80%" ValidationGroup="a"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_name" ErrorMessage="Your good name" Font-Italic="True" 
                    Font-Size="Small" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td width="30%" align="right" 
                
                style="color: #B7BC70; font-size: large; font-family: 'MS Reference Sans Serif'; height: 27px;">
                Email:&nbsp;&nbsp;</td>
            <td width="40%" align="left" style="height: 27px">
                <asp:TextBox ID="txt_email" runat="server" Width="80%" ValidationGroup="a"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txt_email" ErrorMessage="Enter in correct Format" 
                    Font-Italic="True" Font-Size="Small" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td width="30%" align="right" 
                style="color: #B7BC70; font-size: large; font-family: 'MS Reference Sans Serif'; height: 89px;">
                Message:<br />
&nbsp;</td>
            <td width="40%" align="left" style="height: 89px">
                <asp:TextBox ID="txt_message" runat="server" Height="85px" TextMode="MultiLine" 
                    Width="288px" ValidationGroup="a" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_message" ErrorMessage="Enter the Message" 
                    Font-Italic="True" Font-Size="Small" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td width="30%" align="right">
                &nbsp;</td>
            <td width="40%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="30%" align="right">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td width="40%">
                <asp:Label ID="lblmsg" runat="server" ForeColor="#FF9900"></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="30%">
                &nbsp;</td>
            <td width="40%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="30%">
                &nbsp;</td>
            <td width="40%">
                <asp:Button ID="btn_send" runat="server" BackColor="Aqua" Height="10%" 
                    Text="Send" Width="41%" CssClass="button" onclick="btn_send_Click" 
                    ValidationGroup="a"  />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_reset" runat="server" BackColor="Aqua" Height="10%" 
                    Text="Reset" Width="31%" CssClass="button" onclick="btn_reset_Click" 
                    ValidationGroup="a" />
            </td>
        </tr>
        <tr>
            <td width="30%">
                &nbsp;</td>
            <td width="40%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphlast" Runat="Server">
</asp:Content>

