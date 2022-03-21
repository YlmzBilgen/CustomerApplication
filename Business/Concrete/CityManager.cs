using Business.Abstract;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Business.Concrete
{
    public class CityManager : ICityService
    {
        public ICityDal _cityDal;

        public CityManager(ICityDal cityDal)
        {
            _cityDal = cityDal;
        }

        public IDataResult<City> GetById(int cityId)
        {
            return new SuccessDataResult<City>(_cityDal.Get(c => c.Id == cityId));

        }

        public IDataResult<List<City>> GetList()
        {
            return new SuccessDataResult<List<City>>(_cityDal.GetList().ToList());
        }
    }
}
