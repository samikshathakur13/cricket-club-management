<%@ Page Title="" Language="C#" MasterPageFile="~/custMasterPage.master" AutoEventWireup="true" CodeFile="custprofile.aspx.cs" Inherits="custprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" style="width: 50%; height: 60%;">
        <tr align="center">
            <td colspan="2">
                <h2>
                    <asp:Label ID="Label1" runat="server" Text="CUSTOMER PROFILE FORM"></asp:Label>
                </h2>
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:Label ID="Label2" runat="server" Text="NAME"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:Label ID="Label3" runat="server" Text="AGE"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Text="31/12/1999" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Please Enter Age" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:Label ID="Label4" runat="server" Text="GENDER"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:Label ID="Label5" runat="server" Text="EMAIL"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Text="Enter Email Address" 
                    Width="200px"></asp:TextBox>
                <br />
                <asp:CustomValidator ID="CV" runat="server" 
                    ClientValidationFunction="validateEmail" ControlToValidate="TextBox3" 
                    EnableClientScript="true" ErrorMessage="Please Enter Email Address" 
                    ForeColor="Red" ValidateEmptyText="true"></asp:CustomValidator>
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:Label ID="Label6" runat="server" Text="ADDRESS"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Text="Enter Address" 
                    TextMode="MultiLine" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Please Enter Address" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:Label ID="Label7" runat="server" Text="MOBILE NO."></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Text="Enter Mobile No." Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Please Enter Mobile No." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <asp:RegularExpressionValidator ID="revContactPhoneValidator" runat="server" 
                ControlToValidate="TextBox5" Display="Dynamic" 
                ErrorMessage="Numbers only please." Font-Bold="True" ForeColor="Red" 
                ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
        </tr>
        <tr align="center">
            <td>
                <asp:Label ID="Label8" runat="server" Text="PASSWORD"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Text="Enter Password" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Please Enter Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:Label ID="Label9" runat="server" Text="CONFIRM PASSWORD"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Text="ReEnter Password" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Please Re-Enter Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox6" ControlToValidate="TextBox7" 
                    ErrorMessage="Please Enter Same Password" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:Button ID="regbtn" runat="server" onclick="regbtn_Click" 
                    Text="UPDATE RECORD" />
            </td>
            <td>
                <asp:Button ID="clrbtn" runat="server" onclick="clrbtn_Click" Text="CLEAR" />
            </td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

