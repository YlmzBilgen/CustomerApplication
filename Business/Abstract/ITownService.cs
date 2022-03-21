using Core.Utilities.Results;
using Entities.Concrete;
using System.Collections.Generic;

namespace Business.Abstract
{
    public interface ITownService
    {
        IDataResult<Town> GetById(int productId);
        IDataResult<List<Town>> GetList();
    }
}
