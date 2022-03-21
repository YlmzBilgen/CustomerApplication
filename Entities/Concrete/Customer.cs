using Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Entities.Concrete
{
    public class Customer:IEntity
    {
        public int Id { get; set; }

        public string RecordStatus { get; set; }

        public string Name { get; set; }

        public string Surname { get; set; }

        public string CitizenshipNumber { get; set; }

        public DateTime BirthDate { get; set; }

        public string BirthPlace { get; set; }

        public int Age { get; set; }

        public string Gender { get; set; }

        public int? CityId { get; set; }

        public int? TownId { get; set; }

    }
}
