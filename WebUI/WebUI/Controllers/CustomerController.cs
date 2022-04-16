using AutoMapper;
using Business.Abstract;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Threading.Tasks;
using Entities.Concrete;
using WebUI.Models;

namespace WebUI.Controllers
{
    public class CustomerController : Controller
    {
        public readonly IMapper _mapper;
        public ICustomerService _customerService;
        public ICityService _cityService;
        public ITownService _townService;

        public CustomerController(ICustomerService customerService, IMapper mapper, ICityService cityService, ITownService townService)
        {
            _customerService = customerService;
            _mapper = mapper;
            _cityService = cityService;
            _townService = townService;
        }

        public ActionResult Index()
        {
            var result = _customerService.GetList().Data;
            var customerViewModels = _mapper.Map<List<CustomerViewModel>>(result);

            foreach (var cvm in customerViewModels)
            {
                cvm.CityName = _cityService.GetById(cvm.CityId != null ? cvm.CityId.Value : -1).Data.CityName;
                cvm.TownName = _townService.GetById(cvm.TownId != null ? cvm.TownId.Value : -1).Data.TownName;
            }

            return View(customerViewModels);
        }

        public IActionResult Delete(int customerId)
        {
            var customer = _customerService.GetById(customerId).Data;
            var customerViewModel = _mapper.Map<CustomerViewModel>(customer);

            return View(customerViewModel);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(int? Id)
        {
            var customer = _customerService.GetById(Convert.ToInt32(Id)).Data;
            _customerService.Delete(customer);

            return RedirectToAction(nameof(Index));
        }

        //AddOrEdit Get Method
        public IActionResult Create()
        {
            var cities = _cityService.GetList().Data;
            var towns = _townService.GetList().Data.Where(x => x.CityId == cities[0].Id).ToList();

            CustomerViewModel model = new CustomerViewModel();
            model.Cities = _mapper.Map<List<SelectListItem>>(cities);
            model.Towns = _mapper.Map<List<SelectListItem>>(towns);
            model.Genders = new List<SelectListItem>
            {
                new SelectListItem { Value = "E", Text="Erkek"},
                new SelectListItem { Value = "K", Text="Kadın"}
            };

            return View(model);
        }

        public IActionResult Create(CustomerViewModel model)
        {
            var cities = _cityService.GetList().Data;
            var towns = _townService.GetList().Data.Where(x => x.CityId == cities[0].Id).ToList();

            CustomerViewModel model = new CustomerViewModel();
            model.Cities = _mapper.Map<List<SelectListItem>>(cities);
            model.Towns = _mapper.Map<List<SelectListItem>>(towns);
            model.Genders = new List<SelectListItem>
            {
                new SelectListItem { Value = "E", Text="Erkek"},
                new SelectListItem { Value = "K", Text="Kadın"}
            };

            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult AddOrEdit(int Id, CustomerViewModel customerViewData)
        {
            if (!ModelState.IsValid)
            {
                return View();
            }

            bool isCustomerExist = false;
            var customer = _customerService.GetById(Id).Data;

            if (customer != null)
            {
                isCustomerExist = true;
            }
            else
            {
                customer = new Customer();
            }

            try
            {
                customer.RecordStatus = "A";
                customer.Name = customerViewData.Name;
                customer.Surname = customerViewData.Surname;
                customer.CitizenshipNumber = customerViewData.CitizenshipNumber;
                customer.Age = DateTime.Now.Year - customer.BirthDate.Year;
                customer.BirthDate = customerViewData.BirthDate;
                customer.BirthPlace = customerViewData.BirthPlace;
                customer.Gender = customerViewData.Gender;
                customer.CityId = customerViewData.CityId;
                customer.TownId = customerViewData.TownId;

                if (isCustomerExist)
                {
                    _customerService.Update(customer);
                }
                else
                {
                    _customerService.Add(customer);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return RedirectToAction(nameof(Index));
        }

        public IActionResult Details(int customerId)
        {
            var customer = _customerService.GetById(customerId).Data;
            var customerViewModel = _mapper.Map<CustomerViewModel>(customer);

            return View(customerViewModel);
        }

        public JsonResult GetTowns(int id)
        {
            var towns = _townService.GetList().Data.Where(t => t.CityId == id).ToList();
            return Json(towns);
        }
    }
}
