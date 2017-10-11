<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true" CodeFile="first_aid_kit.aspx.cs" Inherits="Visitors_first_aid_kit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .btnstyle
        {
            margin-top: 25px;
            color: #fff;
            font-size: 12px;
            line-height: 20px;
            display: inline-block;
            padding: 4px 17px 5px;
            background-color: #60bf93;
        }
        
        .btnstyle:hover
        {
            background-color: #E14F42;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
        <div class="container_12">
            <h1>&nbsp;</h1>
            <h1>&nbsp;</h1>
            <h1>&nbsp;</h1>
            <h1>BASIC DISASTER SUPPLIES KIT</h1>
              <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                &nbsp;</p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                A basic emergency supply kit could include the following recommended items: </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Water, one gallon of water per person per day for at least three days, for drinking and sanitation </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Food, at least a three-day supply of non-perishable food </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Battery-powered or hand crank radio and a NOAA Weather Radio with tone alert and extra batteries for both </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Flashlight and extra batteries First aid kit Whistle to signal for help </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Dust mask to help filter contaminated air and plastic sheeting and duct tape to shelter-in-place </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Moist towelettes, garbage bags and plastic ties for personal sanitation </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Wrench or pliers to turn off utilities </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Manual can opener for food Local maps </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Cell phone with chargers, inverter or solar charger</p>
            </br>
             <h1>First Aid Kit</h1>
              <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                &nbsp;</p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                In any emergency a family member or you yourself may suffer an injury. If you have these basic first aid supplies you are better prepared to help your loved ones when they are hurt. </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Knowing how to treat minor injuries can make a difference in an emergency. You may consider taking a first aid class, but simply having the following things can help you stop bleeding, prevent infection and assist in decontamination. </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Two pairs of Latex or other sterile gloves if you are allergic to Latex </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Sterile dressings to stop bleeding </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Cleansing agent/soap and antibiotic towelettes </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Antibiotic ointment </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Burn ointment Adhesive bandages in a variety of sizes </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Eye wash solution to flush the eyes or as general decontaminant </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Thermometer </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Prescription medications you take every day such as insulin, heart medicine and asthma inhalers. You should periodically rotate medicines to account for expiration dates. </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Prescribed medical supplies such as glucose and blood pressure monitoring equipment and supplies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
            
            <h1>Other first aid supplies: </h1>    
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Scissors </p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Tweezers </p>

</div>
    </div>
</asp:Content>

