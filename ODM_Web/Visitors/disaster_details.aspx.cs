using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using System.Data;
using DAL;
using System.Net;
using System.IO;
using System.Xml;

public partial class Visitors_disaster_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                bindplace(" where int_disaster_id=" + Request.QueryString["id"]);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "javascript", "InitializeMap();", true);

            }
        }
        catch (Exception ex)
        {
            
            
        }
    }
    private void bindplace(string query)
    {
        try
        {
            tbl_disaster_master_BAL objbal = new tbl_disaster_master_BAL();
            DataSet ds = objbal.getdata(query);

            hid_lat.Value = ds.Tables[0].Rows[0]["str_latitude"].ToString();
            hid_lang.Value = ds.Tables[0].Rows[0]["str_longitude"].ToString();




            dv_list.DataSource = ds;
            dv_list.DataBind();
        }
        catch (Exception ex)
        {
            
            
        }
        


    }



    //protected void ddl_hotel_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    //Declare variable to store XML result
    //    string xmlResult = null;

    //    //Pass request to google api with orgin and destination details
    //    HttpWebRequest request = (HttpWebRequest)WebRequest.Create("http://maps.googleapis.com/maps/api/distancematrix/xml?origins=" + ddl_place.SelectedItem.Text + "&destinations=" + ddl_hotel.SelectedItem.Text + "&mode=Car&language=us-en&sensor=false");

    //    HttpWebResponse response = (HttpWebResponse)request.GetResponse();

    //    //Get response as stream from httpwebresponse
    //    StreamReader resStream = new StreamReader(response.GetResponseStream());

    //    //Create instance for xml document
    //    XmlDocument doc = new XmlDocument();

    //    //Load response stream in to xml result
    //    xmlResult = resStream.ReadToEnd();

    //    //Load xmlResult variable value into xml documnet
    //    doc.LoadXml(xmlResult);

    //    string output = "";

    //    try
    //    {
    //        //Get specified element value using select single node method and verify it return OK (success ) or failed
    //        if (doc.DocumentElement.SelectSingleNode("/DistanceMatrixResponse/row/element/status").InnerText.ToString().ToUpper() != "OK")
    //        {
    //            // lblResult.Text = "Invalid City Name please try again";
    //            return;
    //        }

    //        //Get DistanceMatrixResponse element and its values
    //        XmlNodeList xnList = doc.SelectNodes("/DistanceMatrixResponse");
    //        foreach (XmlNode xn in xnList)
    //        {
    //            if (xn["status"].InnerText.ToString() == "OK")
    //            {
    //                //Form a table and bind it orgin, destination place and return distance value, approximate duration
    //                //output = "<table align='center' width='600' cellpadding='0' cellspacing='0'>";
    //                //output += "<tr><td height='60' colspan='2' align='center'><b>Travel Details</b></td>";
    //                //output += "<tr><td height='40' width='30%' align='left'>Orgin Place</td><td align='left'>" + xn["origin_address"].InnerText.ToString() + "</td></tr>";
    //                //output += "<tr><td height='40' align='left'>Destination Place</td><td align='left'>" + xn["destination_address"].InnerText.ToString() + "</td></tr>";
    //                //output += "<tr><td height='40' align='left'>Travel Duration (apprx.)</td><td align='left'>" + doc.DocumentElement.SelectSingleNode("/DistanceMatrixResponse/row/element/duration/text").InnerText + "</td></tr>";
    //                //output += "<tr><td height='40' align='left'>Distance</td><td align='left'>" + doc.DocumentElement.SelectSingleNode("/DistanceMatrixResponse/row/element/distance/text").InnerText + "</td></tr>";
    //                //output += "</table>";

                   
    //                lbl_area.Text = doc.DocumentElement.SelectSingleNode("/DistanceMatrixResponse/row/element/distance/text").InnerText.Split(' ')[0];

    //                //finally bind it in the result label control
    //                //lblResult.Text = output;
    //            }
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        return;
    //    }
    //}


}