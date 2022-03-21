using Business.Abstract;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Business.Concrete
{
    public class TownManager : ITownService
    {
        public ITownDal _townDal;

        public TownManager(ITownDal townDal)
        {
            _townDal = townDal;
        }

        public IDataResult<Town> GetById(int townId)
        {
            return new SuccessDataResult<Town>(_townDal.Get(t => t.Id == townId));
        }

        public IDataResult<List<Town>> GetList()
        {
            return new SuccessDataResult<List<Town>>(_townDal.GetList().ToList());
        }
    }
}
