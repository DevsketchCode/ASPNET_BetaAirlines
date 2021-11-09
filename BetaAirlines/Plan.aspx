﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Plan.aspx.cs" Inherits="BetaAirlines.Plan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="mainSlideshow" class="slideshow">
        <div>
            <img src="images/PlanATrip.jpg" />
        </div>
        <div>
            <img src="images/AirportTerminal.jpg" />
        </div>
        <div>
            <img src="images/Plan_Checklist.jpg" />
        </div>
    </section>
    <section class="content">
        <h2>
            Don't forget your ... !
        </h2>
        <p>
            Be sure to plan ahead.  There's nothing worse than arriving to your destination just to find out that you forgot something very important. Here are some reminders on basic things to plan before you go.
        </p>
        <ul class="plan">
            <li>
                <div class="planListHeading"><span><i class="far fa-calendar-alt"></i></span>ITINERARY</div>
                <p>
                    It may seem obvious, but it's important.  
                    Plan where you will go, get a map of the airport terminal (if available), how you will get to the hotel, or other places you want to see.
                </p>
            </li>
            <li>
                <div class="planListHeading"><span><i class="fas fa-clipboard-list"></i></span>PRIORITIES</div>
                <p>
                    If you are site-seeing, determine your top priority locations.  Set a time for each location and stick to it.  
                    Plan a lesser priority site after it, just in case you prefer to stay longer.
                </p>
            </li>
            <li>
                <div class="planListHeading"><span><i class="fas fa-hotel"></i></span>HOTEL</div>
                <p>
                    Make reservations well in advance. Confirm the reservation when your trip starts to get closer, 
                    allow time to make any last minute changes if necessary.
                </p>
            </li>
            <li>
                <div class="planListHeading"><span><i class="fas fa-bus-alt"></i></span>TRAVEL</div>
                <p>
                    Plan out what form of transportation will get you from the airport to your final destination.  
                    Also find local transportation that you will be able to use to get to your must-see locations.
                </p>
            </li>
            <li>
                <div class="planListHeading"><span><i class="fas fa-bed"></i></span>RELAX</div>
                <p>
                    Traveling can be stressful, but it's important to relax.  Having a good plan, being prepared as well as you can, 
                    can calm the nerves and help you enjoy your vacation.
                </p>
            </li>
        </ul>
    </section>
</asp:Content>
