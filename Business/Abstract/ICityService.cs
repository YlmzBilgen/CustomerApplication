using Core.Utilities.Results;
using Entities.Concrete;
using System.Collections.Generic;

namespace Business.Abstract
{
    public interface ICityService
    {
        IDataResult<City> GetById(int cityId);
        IDataResult<List<City>> GetList();
    }
}
