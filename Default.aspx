<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />   
    <title></title> 
    <style type="text/css">
        .style1
        {
            font-weight: bold;
            font-family: Verdana;
            color: #000000;
            font-size: 8pt;
            text-align: left;
        }
        .style2
        {
            font-weight: bold;
            font-family: Verdana;
            color: #000000;
            font-size: 8pt;
            text-align: center;
        }
    </style>
</head>
<body style="margin: 0px">
    <form id="form1" runat="server">
    <div>
    <table border="1" cellpadding="1" cellspacing="1" style="width: 60%" align="center" class="Table">
            <tr>
                <td colspan="2" class="style2">
                    User Registration Form</td>
            </tr>
            <tr>
                <td colspan="2" valign="top">
                    <table style="width: 100%">
                        <tr>
                            <td align="left" width="30%" class="style1">
                                First Name:<a href="App_Data/Database.mdf">Database.mdf</a></td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtFirstName" runat="server" MaxLength="50" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" width="20%">
                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                                    ErrorMessage="First Name can't be left blank" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="left" width="30%" class="FieldCaptionTD">
                                Last Name:</td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtLastName" runat="server" MaxLength="50" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" width="20%">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName"
                                    ErrorMessage="Last Name can't be left blank" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="left" width="30%" style="height: 26px" class="FieldCaptionTD">
                                UserName:</td>
                            <td align="left" width="50%" style="height: 26px">
                                <asp:TextBox ID="txtUserName" runat="server" MaxLength="12" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" width="20%" style="height: 26px">
                                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                                    ErrorMessage="UserName can't be left blank" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="left" width="30%" class="FieldCaptionTD">
                                Password:</td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtPwd" runat="server" MaxLength="15" CssClass="TextinputText" 
                                    TextMode="Password"></asp:TextBox></td>
                            <td align="left" width="20%">
                                <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd"
                                    ErrorMessage="Password can't be left blank" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="left" width="30%" style="height: 26px" class="FieldCaptionTD">
                                Confirm Password:</td>
                            <td align="left" width="50%" style="height: 26px">
                                <asp:TextBox ID="txtRePwd" runat="server" MaxLength="15" 
                                    CssClass="TextinputText" TextMode="Password"></asp:TextBox></td>
                            <td align="left" width="20%" style="height: 26px">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="txtRePwd" ControlToValidate="txtPwd" 
                                    Operator="Equal" ErrorMessage="Password and confirm password do not match" 
                                    SetFocusOnError="True"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" width="30%" class="FieldCaptionTD">
                                Gender:</td>
                            <td align="left" width="50%">
                                <asp:RadioButtonList ID="rdoGender" runat="server" 
                                    onselectedindexchanged="rdoGender_SelectedIndexChanged">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList></td>
                            <td align="left" width="20%">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rdoGender"
                                    ErrorMessage="Gender can't be left blank" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="left" width="30%" class="FieldCaptionTD">
                                Address:</td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtAdress" runat="server" TextMode="MultiLine" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" width="20%">
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAdress"
                                    ErrorMessage="Address can't be left blank" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
                        </tr>
                        
                        <tr>
                            <td align="left" width="30%" class="FieldCaptionTD">
                                Email ID:</td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtEmailID" runat="server" MaxLength="70" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" width="20%">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmailID"
                                    ErrorMessage="Email can't be left blank" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table style="width: 100%" class="Table">
                        <tr>
                            <td>
                                <asp:Label ID="lblMsg" runat="server" CssClass="Label" Font-Bold="True" 
                                    ForeColor="Red"></asp:Label></td>
                            <td>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                    ShowSummary="False" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <asp:Button ID="btnSave" runat="server" Text="Sign Up" CssClass="Button" 
                                    onclick="btnSave_Click" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
