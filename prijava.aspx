<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prijava.aspx.cs" Inherits="Prijava.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Prijava</h1>

            Prezime i ime:<asp:TextBox ID="tbimeprezime" runat="server" ValidationGroup="Group1"/>
                <asp:RequiredFieldValidator  ID ="tbimeprezimevalidator"  
                    ErrorMessage="Ovo polje je obavezno!" 
                    ControlToValidate="tbimeprezime"
                    Display="Static"
                    ForeColor="Red"
                    EnableClientScript="false"
                    SetFocusOnError="true"
                    ValidationGroup="Group1"
                        runat="server"/>
            <br />


            Email:<asp:TextBox ID="tbemail" runat="server" ValidationGroup="Group1"/>
                <asp:RequiredFieldValidator  ID ="tbemailvalidator"  
                    ErrorMessage="Ovo polje je obavezno!" 
                    ControlToValidate="tbemail"
                    Display="Static"
                    ForeColor="Red"
                    EnableClientScript="false"
                    SetFocusOnError="true"
                    ValidationGroup="Group1"
                        runat="server"/>
                <asp:RegularExpressionValidator ID="emailformatvalidator" 
                    ErrorMessage="Nije ispravan format email-a!" 
                    ControlToValidate="tbemail"
                    Display="Static"
                    ForeColor="Red"
                    EnableClientScript="false"
                    SetFocusOnError="true"
                    ValidationGroup="Group1"
                    ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                        runat="server"/>
            <br />

             Potrvda:<asp:TextBox ID="tbpotvrda" runat="server"/>
                <asp:RequiredFieldValidator  ID ="potvrdavalidator"  
                    ErrorMessage="Ovo polje je obavezno!" 
                    ControlToValidate="tbpotvrda"
                    Display="Static"
                    ForeColor="Red"
                    EnableClientScript="false"
                    SetFocusOnError="true"
                    ValidationGroup="Group1"
                        runat="server"/>
                <asp:CompareValidator ID="potvrdacomparevalidator"
                    ErrorMessage="Ne poklapaju se emailovi!" 
                    ControlToValidate="tbpotvrda"
                    ControlToCompare="tbemail"
                    Display="Static"
                    ForeColor="Red"
                    EnableClientScript="false"
                    SetFocusOnError="true"
                    ValidationGroup="Group1"
                        runat="server" />
            <br />

             Godina rođenja:<asp:TextBox ID="tbgodina" runat="server" ValidationGroup="Group1"/>
                <asp:RequiredFieldValidator  ID ="godinavalidator"  
                    ErrorMessage="Ovo polje je obavezno!" 
                    ControlToValidate="tbgodina"
                    Display="Static"
                    ForeColor="Red"
                    EnableClientScript="false"
                    SetFocusOnError="true"
                    ValidationGroup="Group1"
                        runat="server"/>
                <asp:RangeValidator  ID ="godinaopsegvalidator"  
                    ErrorMessage="Godina mora biti od 2003 do 2010" 
                    ControlToValidate="tbgodina"
                    Display="Static"
                    ForeColor="Red"
                    EnableClientScript="false"
                    SetFocusOnError="true"
                    ValidationGroup="Group1"
                        runat="server" MinimumValue="2003" MaximumValue="2010" Type="Integer" />

            <br />

            Razred:<asp:RadioButtonList ID="razred" runat="server" ValidationGroup="Group1">
                    <asp:ListItem Text="I" Value="1"/>
                    <asp:ListItem Text="II" Value="2"/>
                    <asp:ListItem Text="III" Value="3"/>
                    <asp:ListItem Text="IV" Value="4"/>
                </asp:RadioButtonList>
            
                <asp:RequiredFieldValidator  ID ="razredvalidator"  
                   ErrorMessage="Razred je obavezan!" 
                    ControlToValidate="razred"
                    Display="Static"
                    ForeColor="Red"
                    EnableClientScript="false"
                    SetFocusOnError="true"
                    ValidationGroup="Group1"
                        runat="server"/>

            <br />
             <asp:Button ID="btnprijava"
                ValidationGroup="Group1"
                CausesValidation="true"
                OnClick="btnprijava_Click"
                Text="Prijava"
                runat="server"/>
           
            
            <br />
            <asp:Label ID="lbl" runat="server"/>
        </div>
    </form>
</body>
</html>
