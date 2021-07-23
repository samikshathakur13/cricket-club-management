<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
     function validateEmail(sender, args) {
         if (args.Value == "") {
             args.IsValid = false;
         }
         else {
             var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
             if (!filter.test(args.Value)) {
                 args.IsValid = false;
             }
         }
     }
    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphlast" Runat="Server">
</asp:Content>

<asp:Content ID="Content5" runat="server" contentplaceholderid="cphbody">
    <table style="width: 50%; height: 60%;"   cellpadding="2" align="center"  >
       <tr align="center"><td colspan="2">
           <h2><asp:Label ID="Label1" runat="server" Text="REGISTRATION FORM"></asp:Label></h2>
           </td></tr>
           <tr align="center">
           <td>
               <asp:Label ID="Label2" runat="server" Text="NAME"></asp:Label></td>
           <td>
               <asp:TextBox ID="TextBox1" runat="server"  Width="200px"></asp:TextBox>
               <br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator></td>
           </tr>
           <tr align="center">
           <td>
               <asp:Label ID="Label3" runat="server" Text="AGE"></asp:Label></td>
           <td>
               <asp:TextBox ID="TextBox2" runat="server" Text="31/12/1999"  Width="200px"></asp:TextBox><br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Age" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator></td>
           </tr>
           <tr align="center">
           <td>
               <asp:Label ID="Label4" runat="server" Text="GENDER"></asp:Label></td>
           <td>
               <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                   <asp:ListItem>MALE</asp:ListItem>
                   <asp:ListItem>FEMALE</asp:ListItem>
               </asp:DropDownList>
            </td> 
          
           </tr>
           <tr align="center">
           <td>
               <asp:Label ID="Label5" runat="server" Text="EMAIL"></asp:Label></td>
           <td>
               <asp:TextBox ID="TextBox3" runat="server" Text="Enter Email Address" Width="200px"></asp:TextBox>
               <br />
            <asp:CustomValidator ID="CV" runat="server" EnableClientScript="true" ValidateEmptyText="true" ClientValidationFunction="validateEmail" ControlToValidate="TextBox3" ErrorMessage="Please Enter Email Address" ForeColor="Red"></asp:CustomValidator>
            </td>
           </tr>
           <tr align="center">
           <td>
               <asp:Label ID="Label6" runat="server" Text="ADDRESS"></asp:Label></td>
           <td>
               <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Text="Enter Address" Width="200px"></asp:TextBox>
               <br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Address" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator></td>
           </tr>
           <tr align="center">
           <td>
               <asp:Label ID="Label7" runat="server" Text="MOBILE NO."></asp:Label></td>
           <td>
               <asp:TextBox ID="TextBox5" runat="server" Text="Enter Mobile No." Width="200px"></asp:TextBox>
               <br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Mobile No." ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator></td>
          <asp:RegularExpressionValidator ID="revContactPhoneValidator" runat="server" ValidationExpression="^[0-9]*$" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Numbers only please." Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
           </tr>
           <tr align="center">
           <td>
               <asp:Label ID="Label8" runat="server" Text="PASSWORD"></asp:Label></td>
           <td>
               <asp:TextBox ID="TextBox6" runat="server" Text="Enter Password"  Width="200px" TextMode="Password"></asp:TextBox>
               <br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator></td>
           </tr>
           <tr align="center">
           <td>
               <asp:Label ID="Label9" runat="server" Text="CONFIRM PASSWORD"></asp:Label></td>
           <td>
               <asp:TextBox ID="TextBox7" runat="server" Text="ReEnter Password"  Width="200px" TextMode="Password"></asp:TextBox>
               <br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Re-Enter Password" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>
               <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Please Enter Same Password" ControlToValidate="TextBox7" ControlToCompare="TextBox6" ForeColor="Red"></asp:CompareValidator>
               </td>
           </tr>
            <tr align="center">
           <td>
               <asp:Button ID="regbtn" runat="server" Text="REGISTRATION" onclick="regbtn_Click" 
                    />
              </td>
           <td>
               <asp:Button ID="clrbtn" runat="server" Text="CLEAR" onclick="clrbtn_Click" />
            </td>  
            
           </tr>
           <tr align="center"><td colspan="2">
               <asp:Label ID="lblerror" runat="server" Text=""></asp:Label></td></tr>
        </table>
</asp:Content>


