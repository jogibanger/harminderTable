using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace table
{
    public partial class GridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<GetUserRecords> GetRecords()
        {
            List<GetUserRecords> TempGetUsersRecords = null;
            TempGetUsersRecords = new List<GetUserRecords>();
            TempGetUsersRecords.Add(new GetUserRecords
            {
                AadharCard = "Aadhar",
                CityName = "Kaithal",
                CountryName = "India",
                Id = 1,
                Name = "Joginder",
                PanCard = "PanCard ",
                Password = "Jogi"

            });
            TempGetUsersRecords.Add(new GetUserRecords
            {
                AadharCard = "OneAadhar",
                CityName = "OneKaithal",
                CountryName = "OneIndia",
                Id = 2,
                Name = "OneJoginder",
                PanCard = "OnePanCard ",
                Password = "OneJogi"

            });
            TempGetUsersRecords.Add(new GetUserRecords
            {
                AadharCard = "TwoAadhar",
                CityName = "TwoKaithal",
                CountryName = "TwoIndia",
                Id = 3,
                Name = "TwoJoginder",
                PanCard = "TwoPanCard ",
                Password = "TwoJogi"

            });
            return TempGetUsersRecords;

        }
    }


    public class GetUserRecords
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }
        public string CountryName { get; set; }
        public string CityName { get; set; }
        public string PanCard { get; set; }
        public string AadharCard { get; set; }
    }
}