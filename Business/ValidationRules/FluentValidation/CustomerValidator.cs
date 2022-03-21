using Entities.Concrete;
using FluentValidation;

namespace Business.ValidationRules.FluentValidation
{
    public class CustomerValidator : AbstractValidator<Customer>
    {
        public CustomerValidator()
        {
            RuleFor(p => p.Name).NotEmpty();
            RuleFor(p => p.Surname).NotEmpty();
            RuleFor(p => p.Gender).NotEmpty();
            RuleFor(p => p.BirthPlace).NotEmpty();
            RuleFor(p => p.BirthPlace).NotEmpty();
            RuleFor(p => p.CitizenshipNumber).NotEmpty();
        }
    }
}
