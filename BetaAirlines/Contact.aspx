<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BetaAirlines.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content">
        <fieldset id="contactFields">
            <legend>Contact Us</legend>
            <asp:ValidationSummary ID="ValidationSummary" runat="server" />
            <div class="field">
                <asp:Label ID="lblDate" runat="server" Text="Today's Date: "></asp:Label>
                <asp:TextBox ID="txtDate" runat="server" ReadOnly="True" TextMode="DateTime" OnLoad="Page_Load" BorderStyle="None" Enabled="False"></asp:TextBox>
            </div>
            <div class="field">
                <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
                <asp:TextBox ID="txtName" runat="server" MaxLength="50"></asp:TextBox>
            </div>
            <div class="field">
                <asp:Label ID="lblEmail" runat="server" Text="E-mail: "></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" MaxLength="50"></asp:TextBox>
            </div>
            <div class="field">
                <asp:Label ID="lblEmailConfirm" runat="server" Text="Confirm E-mail: "></asp:Label>
                <asp:TextBox ID="txtEmailConfirm" runat="server" TextMode="Email" MaxLength="50"></asp:TextBox>
            </div>
            <div class="field">
                <asp:Label ID="lblSubject" runat="server" Text="Subject: "></asp:Label>
                <asp:TextBox ID="txtSubject" runat="server" MaxLength="150"></asp:TextBox>
            </div>
            <div class="field">
                <asp:Label ID="lblMessage" runat="server" Text="Message: "></asp:Label>
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div id="formButtons" class="field">
                <input id="btnReset" type="reset" value="Reset" />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </div>
            <p id="viewMessages"><a href="Messages.aspx">View Messages</a></p>
            <%-- Required Fields --%>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Missing Name" ControlToValidate="txtName" Display="None"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Missing Email" ControlToValidate="txtEmail" Display="None"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfvEmailConfirm" runat="server" ErrorMessage="Missing Email Confirmation" ControlToValidate="txtEmailConfirm" Display="None"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Missing Subject" ControlToValidate="txtSubject" Display="None"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Missing Message" ControlToValidate="txtMessage" Display="None"></asp:RequiredFieldValidator>

            <%--Compare the first email with the confirm email field--%>
            <asp:CompareValidator ID="cvEmailConfirm" runat="server" ErrorMessage="Email addresses do not match" ControlToValidate="txtEmailConfirm" ControlToCompare="txtEmail" Display="None"></asp:CompareValidator>       

            <%--Use the RegularExpressionValidator to validate the email address--%>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Invalid E-mail Address" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>

        </fieldset>
    </section>

    <%-- Data Source informaation --%>
    <asp:SqlDataSource ID="UserMessages" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:BetaAirlinesCS %>' DeleteCommand="DELETE FROM [UserMessages] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Email] = @original_Email AND [Subject] = @original_Subject AND [Message] = @original_Message AND [ContactDate] = @original_ContactDate AND [Active] = @original_Active" InsertCommand="INSERT INTO [UserMessages] ([Name], [Email], [Subject], [Message], [ContactDate], [Active]) VALUES (@Name, @Email, @Subject, @Message, @ContactDate, @Active)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UserMessages]" UpdateCommand="UPDATE [UserMessages] SET [Name] = @Name, [Email] = @Email, [Subject] = @Subject, [Message] = @Message, [ContactDate] = @ContactDate, [Active] = @Active WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Email] = @original_Email AND [Subject] = @original_Subject AND [Message] = @original_Message AND [ContactDate] = @original_ContactDate AND [Active] = @original_Active">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Subject" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Message" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_ContactDate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="original_Active" Type="Byte"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Subject" Type="String"></asp:Parameter>
            <asp:Parameter Name="Message" Type="String"></asp:Parameter>
            <asp:Parameter Name="ContactDate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="Active" Type="Byte"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Subject" Type="String"></asp:Parameter>
            <asp:Parameter Name="Message" Type="String"></asp:Parameter>
            <asp:Parameter Name="ContactDate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="Active" Type="Byte"></asp:Parameter>
            <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Subject" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Message" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_ContactDate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="original_Active" Type="Byte"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
