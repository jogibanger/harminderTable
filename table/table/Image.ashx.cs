using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;

namespace fileUpload
{
    /// <summary>
    /// Summary description for Image
    /// </summary>
    public class Image : IHttpHandler
    {



        public void ProcessRequest(HttpContext context)
        {
           string Name= context.Request.QueryString["name"];
           string Password = context.Request.QueryString["password"];
           string CountryName = context.Request.QueryString["CountryName"];
           string CityName = context.Request.QueryString["CityName"];
           if (!string.IsNullOrEmpty(Name) && !string.IsNullOrEmpty(Password) && !string.IsNullOrEmpty(CountryName) && !string.IsNullOrEmpty(CityName))
           {
               if (context.Request.Files.Count > 0)
               {

                   HttpFileCollection files = context.Request.Files;

                   for (int i = 0; i < files.Count; i++)
                   {
                       HttpPostedFile file = files[i];

                       int length = file.ContentLength;

                       byte[] pic = new byte[length];
                       file.InputStream.Read(pic, 0, length);

                       // string fname = context.Server.MapPath("~/uploads/" + file.FileName);

                       //file.SaveAs(fname);
                   }
                   context.Response.ContentType = "text/plain";
                   context.Response.Write("File Uploaded Successfully!");

                   try
                   {
                       SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Testing;Integrated Security=True");
                       SqlCommand com = new SqlCommand();
                       con.Open();
                       com.Connection = con;
                       com.CommandText = "InsertImage";
                       com.Parameters.AddWithValue("@ID", DateTime.Now.Minute);
                       //com.Parameters.AddWithValue("@PanCard", fileBinary);
                       //com.Parameters.AddWithValue("@Aadhar", pic);
                       com.CommandType = System.Data.CommandType.StoredProcedure;
                       com.ExecuteNonQuery();
                       con.Close();

                   }
                   finally
                   {

                   }

               }
            }

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
    //    public void ProcessRequest(HttpContext context)
    //    {

    //        int ID = Convert.ToInt32(context.Request.QueryString["imgID"]);
    //        if (!string.IsNullOrEmpty(context.Request.QueryString["imgID"]))
    //        {
    //            SqlDataReader rdr = null;

    //            SqlConnection conn = null;

    //            SqlCommand selcmd = null;

    //            try
    //            {
    //                conn = new SqlConnection("Data Source=.;Initial Catalog=Testing;Integrated Security=True");
    //                string AaDharchard = context.Request.QueryString["AaDharchard"];
    //                string selectedValue = string.Empty;
    //                if (string.IsNullOrEmpty(AaDharchard))
    //                {
    //                    selcmd = new SqlCommand("select PanCard from Harminder where ID=" + context.Request.QueryString["imgID"], conn);
    //                    selectedValue = "PanCard";

    //                }
    //                else
    //                {

    //                    selcmd = new SqlCommand("select AadharCard from Harminder where ID=" + context.Request.QueryString["imgID"], conn);
    //                    selectedValue = "AadharCard";
    //                }


    //                conn.Open();

    //                rdr = selcmd.ExecuteReader();

    //                while (rdr.Read())
    //                {

    //                    context.Response.ContentType = "image/jpg";

    //                    context.Response.BinaryWrite((byte[])rdr[selectedValue]);

    //                }

    //                rdr.Close();

    //            }

    //            finally
    //            {

    //                conn.Close();

    //            }
    //        }
    //    }

    //    public bool IsReusable
    //    {
    //        get
    //        {
    //            return false;
    //        }
    //    }
    //}
