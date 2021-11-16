<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="BetaAirlines.Confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content">
        <div class="confirmation">
            <asp:Panel ID="lblContactConfirmation" runat="server">
                <p>
                    Thank you very much for your message <asp:Label ID="lblSubmissionName1" runat="server" Text=""></asp:Label>.  We greatly appreciate your feedback.
                </p>
                <asp:Panel ID="pnlContactSubmission" runat="server" Visible="False">
                    <h3>Here is your submission: </h3>
                    <fieldset id="contactFields">
                        <div class="field">
                            <asp:Label ID="lblDate" runat="server" Text="Today's Date: "></asp:Label>
                            <asp:Label ID="lblSubmissionDate" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="field">
                            <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
                            <asp:Label ID="lblSubmissionName2" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="field">
                            <asp:Label ID="lblEmail" runat="server" Text="E-mail: "></asp:Label>
                            <asp:Label ID="lblSubmissionEmail" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="field">
                            <asp:Label ID="lblSubject" runat="server" Text="Subject: "></asp:Label>
                            <asp:Label ID="lblSubmissionSubject" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="field">
                            <asp:Label ID="lblMessage" runat="server" Text="Message: "></asp:Label>
                            <asp:Label ID="lblSubmissionMessage" runat="server" Text=""></asp:Label>
                        </div>
                    </fieldset>
                    <p id="viewMessages"><a href="Messages.aspx">View Messages</a></p>
                </asp:Panel>
            </asp:Panel>
        </div>
    </section>
</asp:Content>
