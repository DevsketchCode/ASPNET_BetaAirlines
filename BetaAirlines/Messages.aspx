<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="BetaAirlines.Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content">
        <section id="UserMessageGVContainer" class="dataViews">
            <asp:GridView ID="UserMessagesGV" runat="server" AutoGenerateColumns="False" DataSourceID="UserMessagesTable" AllowPaging="True" DataKeyNames="Id" OnSelectedIndexChanged="UserMessagesGV_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>

                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                    <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                    <asp:BoundField DataField="ContactDate" HeaderText="ContactDate" SortExpression="ContactDate" />
                    <asp:BoundField DataField="Active" HeaderText="Active" SortExpression="Active" />
                </Columns>
            </asp:GridView>
        </section>
        <div class="flexBreak"></div>
        <section id="selectedMessageContainer" class="dataViews selectedMessage" runat="server">
            <fieldset>
                <legend>Selected Message</legend>
                <asp:DetailsView ID="SelectedMesageDV" runat="server" Height="50px" Width="523px" DataSourceID="SelectedMessage" AutoGenerateRows="False" DataKeyNames="Id">
                    <Fields>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                        <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject"></asp:BoundField>
                        <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message"></asp:BoundField>
                        <asp:BoundField DataField="ContactDate" HeaderText="Contact Date" SortExpression="ContactDate"></asp:BoundField>
                        <asp:BoundField DataField="Active" HeaderText="Active" SortExpression="Active"></asp:BoundField>
                    </Fields>
                </asp:DetailsView>
            </fieldset>
        </section>
        <div class="flexBreak"></div>
        <section id="UserMessageFVContainer" class="dataViews">
            <asp:FormView ID="MessageControllerFV" runat="server" DataSourceID="UserMessagesTable" AllowPaging="True" DataKeyNames="Id">
                <EditItemTemplate>
                    <asp:ValidationSummary ID="MessageEditValidationSummaryFV" runat="server" />

                    Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /><br />
                    Name:
                    <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /><br />
                    Email:
                    <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /><br />
                    Subject:
                    <asp:TextBox Text='<%# Bind("Subject") %>' runat="server" ID="SubjectTextBox" /><br />
                    Message:
                    <asp:TextBox Text='<%# Bind("Message") %>' runat="server" ID="MessageTextBox" /><br />
                    ContactDate:
                    <input type="datetime-local" value='<%# Bind("ContactDate") %>' runat="server" ID="ContactDateTextBox" /><br />
                    Active:
                    <asp:TextBox Text='<%# Bind("Active") %>' runat="server" ID="ActiveTextBox" /><br />


                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Required Field: Name" Display="None" ControlToValidate="NameTextBox"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Required Field: E-mail" Display="None" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Required Field: Subject" Display="None" ControlToValidate="SubjectTextBox"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Required Field: Message" Display="None" ControlToValidate="MessageTextBox"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Required Field: Date" Display="None" ControlToValidate="ContactDateTextBox"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvActive" runat="server" ErrorMessage="Required Field: Active" Display="None" ControlToValidate="ActiveTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexActive" runat="server" ErrorMessage="Invalid Entry for Active. Please entere a 1 for Active or 0 for Inactive." Display="None" ValidationExpression="^[0-1]" ControlToValidate="ActiveTextBox"></asp:RegularExpressionValidator>


                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                   <asp:ValidationSummary ID="MessageInsertValidationSummaryFV" runat="server" />

                    Name:
                    <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /><br />
                    Email:
                    <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /><br />
                    Subject:
                    <asp:TextBox Text='<%# Bind("Subject") %>' runat="server" ID="SubjectTextBox" /><br />
                    Message:
                    <asp:TextBox Text='<%# Bind("Message") %>' runat="server" ID="MessageTextBox" /><br />
                    ContactDate:
                    <input type="datetime-local" value='<%# Bind("ContactDate") %>' runat="server" ID="ContactDateTextBox" /><br />
                    <%-- <asp:TextBox Text='<%# Bind("ContactDate") %>' runat="server" ID="ContactDateTextBox" /><br /> --%>
                    Active:
                    <asp:TextBox Text='<%# Bind("Active") %>' runat="server" ID="ActiveTextBox" /><br />

                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Required Field: Name" Display="None" ControlToValidate="NameTextBox"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Required Field: E-mail" Display="None" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Required Field: Subject" Display="None" ControlToValidate="SubjectTextBox"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Required Field: Message" Display="None" ControlToValidate="MessageTextBox"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Required Field: Date" Display="None" ControlToValidate="ContactDateTextBox"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvActive" runat="server" ErrorMessage="Required Field: Active" Display="None" ControlToValidate="ActiveTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexActive" runat="server" ErrorMessage="Invalid Entry for Active. Please entere a 1 for Active or 0 for Inactive." Display="None" ValidationExpression="^[0-1]" ControlToValidate="ActiveTextBox"></asp:RegularExpressionValidator>


                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                    Name:
                    <asp:Label Text='<%# Bind("Name") %>' runat="server" ID="NameLabel" /><br />
                    Email:
                    <asp:Label Text='<%# Bind("Email") %>' runat="server" ID="EmailLabel" /><br />
                    Subject:
                    <asp:Label Text='<%# Bind("Subject") %>' runat="server" ID="SubjectLabel" /><br />
                    Message:
                    <asp:Label Text='<%# Bind("Message") %>' runat="server" ID="MessageLabel" /><br />
                    ContactDate:
                    <asp:Label Text='<%# Bind("ContactDate") %>' runat="server" ID="ContactDateLabel" /><br />
                    Active:
                    <asp:Label Text='<%# Bind("Active") %>' runat="server" ID="ActiveLabel" /><br />
                    <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>

        </section>
    </section>

    <asp:SqlDataSource ID="UserMessagesTable" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:BetaAirlinesCS %>' DeleteCommand="DELETE FROM [UserMessages] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Email] = @original_Email AND [Subject] = @original_Subject AND [Message] = @original_Message AND [ContactDate] = @original_ContactDate AND [Active] = @original_Active" InsertCommand="INSERT INTO [UserMessages] ([Name], [Email], [Subject], [Message], [ContactDate], [Active]) VALUES (@Name, @Email, @Subject, @Message, @ContactDate, @Active)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UserMessages]" UpdateCommand="UPDATE [UserMessages] SET [Name] = @Name, [Email] = @Email, [Subject] = @Subject, [Message] = @Message, [ContactDate] = @ContactDate, [Active] = @Active WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Email] = @original_Email AND [Subject] = @original_Subject AND [Message] = @original_Message AND [ContactDate] = @original_ContactDate AND [Active] = @original_Active">
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

    <asp:SqlDataSource ID="SelectedMessage" runat="server" ConnectionString='<%$ ConnectionStrings:BetaAirlinesCS %>' SelectCommand="SELECT * FROM [UserMessages] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="UserMessagesGV" PropertyName="SelectedValue" DefaultValue="" Name="Id" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
