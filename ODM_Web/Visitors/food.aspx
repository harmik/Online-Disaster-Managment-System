<%@ Page Title="" Language="C#" MasterPageFile="~/Visitors/visitor.master" AutoEventWireup="true" CodeFile="food.aspx.cs" Inherits="Visitors_food" %>

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
    <script>
    document.getElementById("li3").className = "current";
</script>
    <div class="content">
        <div class="container_12">
            <h1>&nbsp;</h1>
            <h1>&nbsp;</h1>
            <h1>&nbsp;</h1>
            <h1>Food</h1>

            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                &nbsp;</p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Consider the following things when putting together your emergency food supplies:</p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Store at least a three-day supply of non-perishable food.</p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Choose foods your family will eat.</p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Remember any special dietary needs.</p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Avoid foods that will make you thirsty.</p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Choose salt-free crackers, whole grain cereals and canned foods with high liquid content.</p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px 40px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                Following a disaster, there may be power outages that could last for several days. Stock canned foods, dry mixes and other staples that do not require refrigeration, cooking, water or special preparation. Be sure to include a manual can opener and eating utensils.</p>

            <br />

            <h1>Suggested Emergency Food Supplies</h1>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                The following items are suggested when selecting emergency food supplies. You may already have many of these on hand.</p>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ready-to-eat canned meats, fruits, vegetables and a can opener</p>
            <ul style="margin: 0px 0px 25px 1em; padding: 0px; list-style-position: inside; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Protein or fruit bars</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Dry cereal or granola</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Peanut butter</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Dried fruit</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Nuts</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Crackers</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Canned juices</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Non-perishable pasteurized milk</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">High energy foods</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Vitamins</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Food for infants</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Comfort/stress foods</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;"></li>
            </ul>
            <h1>Manging Food without power</h1>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                <strong>Be Prepared</strong>:</p>
            <ul style="margin: 0px 0px 25px 1em; padding: 0px; list-style-position: inside; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Have a refrigerator thermometer.</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Know where you can get dry ice.</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Keep a few days’ worth of ready-to-eat foods on hand that do not require cooking or cooling.</li>
            </ul>
            <p style="color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; margin: 0px 0px 20px; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                <strong>When the Power Goes Out:</strong></p>
            <ul style="margin: 0px 0px 25px 1em; padding: 0px; list-style-position: inside; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Keep the refrigerator and freezer doors closed as much as possible.</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">The refrigerator will keep food cold for about 4 hours if it is unopened.</li>
                <li style="color: rgb(51, 51, 51); font-size: 12px; margin: 0px 0px 10px; line-height: 18px;">Refrigerators should be kept at 40° F or below for proper food storage</li>
            </ul>
            <p>&nbsp;</p>


    </div>
    </div>
</asp:Content>

