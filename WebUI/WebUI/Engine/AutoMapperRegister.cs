using AutoMapper;
using Entities.Concrete;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebUI.Models;

namespace WebUI.Engine
{
    public class AutoMapperRegister : Profile
    {
        public AutoMapperRegister()
        {
            CreateMap<Customer, CustomerViewModel>();
            CreateMap<City, Customer>()
                .ForMember(dest =>
                    dest.CityId,
                    opt => opt.MapFrom(src => src.CityName)
                );


            CreateMap<City, CityViewModel>();

            CreateMap<City, SelectListItem>()
                .ForMember(dest =>
                    dest.Value,
                    opt => opt.MapFrom(src => src.Id)
                )
                .ForMember(dest =>
                    dest.Text,
                    opt => opt.MapFrom(src => src.CityName)
                );

            CreateMap<Town, SelectListItem>()
              .ForMember(dest =>
                  dest.Value,
                  opt => opt.MapFrom(src => src.Id)
              )
              .ForMember(dest =>
                  dest.Text,
                  opt => opt.MapFrom(src => src.TownName)
              );

            CreateMap<SelectListItem, Town>()
             .ForMember(dest =>
                 dest.Id,
                 opt => opt.MapFrom(src => src.Value)
             )
             .ForMember(dest =>
                 dest.TownName,
                 opt => opt.MapFrom(src => src.Text)
             );
        }
    }
}
