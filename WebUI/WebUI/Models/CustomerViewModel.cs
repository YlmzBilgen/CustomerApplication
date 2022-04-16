using Entities.Concrete;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebUI.Models
{
    public class CustomerViewModel
    {
        public CustomerViewModel()
        {
            Cities = new List<SelectListItem>();
            Towns = new List<SelectListItem>();
            Genders = new List<SelectListItem>();
        }
        public int Id { get; set; }

        public string RecordStatus { get; set; }

        public string Name { get; set; }

        public string Surname { get; set; }

        public string CitizenshipNumber { get; set; }

        public DateTime BirthDate { get; set; }

        public string BirthPlace { get; set; }

        public int Age { get; set; }

        public string Gender { get; set; }
        
        [Display(Name="Şehir Seçiniz")]
        public int? CityId { get; set; }
        public int? TownId { get; set; }
        public string CityName { get; set; }
        public String TownName { get; set; }

        public List<SelectListItem> Towns { get; set; }
        public List<SelectListItem> Cities { get; set; }
        public List<SelectListItem> Genders { get; set; }
    }

    public class CityViewModel
    {
        //public CityViewModel()
        //{
        //    CityList = new List<SelectListItem>
        //    {
        //        new SelectListItem { Value = "1", Text = "Adana" },
        //        new SelectListItem { Value = "2", Text = "Adıyaman" },
        //        new SelectListItem { Value = "6", Text = "Ankara" },
        //        new SelectListItem { Value = "34", Text = "İstanbul" },
        //        new SelectListItem { Value = "10", Text = "İzmir" }
        //    };
        //}

        //public List<SelectListItem> CityList { get; set; }

        public int Id { get; set; }
        public string CityName { get; set; }
    }

    //public class TownViewModel
    //{
    //    public TownViewModel()
    //    {
    //        TownList = new List<SelectListItem>
    //        {
    //            new SelectListItem { Value = "1", Text = "Büyükçekmece" },
    //            new SelectListItem { Value = "2", Text = "Kozan" },
    //            new SelectListItem { Value = "6", Text = "Çatalaca" },
    //            new SelectListItem { Value = "34", Text = "Kızılcahamam" },
    //            new SelectListItem { Value = "10", Text = "Konak" }
    //        };
    //    }
    //    public int Id { get; set; }

    //    public List<SelectListItem> TownList { get; set; }
    //}
}
