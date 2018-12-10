using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CampusRestaurantManager
{
    public class Restaurant
    {
        public int id { get; set; }
        public String name { get; set; }
        public String address { get; set; }
        public String businessHr { get; set; }
        public String businessDate { get; set; }
        public String phone { get; set; }
        public String logoURL { get; set; }
        public Restaurant(int id, String name, String address, String businessHr, String businessDate, String phone, String logoURL)
        {
            this.id = id;
            this.name = name;
            this.address = address;
            this.businessHr = businessHr;
            this.businessDate = businessDate;
            this.phone = phone;
            this.logoURL = logoURL;
        }
    }
}