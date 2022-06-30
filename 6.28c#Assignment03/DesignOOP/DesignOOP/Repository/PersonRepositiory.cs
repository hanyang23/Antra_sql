using DesignOOP.DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesignOOP.Repository
{
    public class PersonRepositiory : IPersonService<Person>
    {
        public string getAddress(Person obj)
        {
            throw new NotImplementedException();
        }

        public int getAge(Person obj)
        {
            throw new NotImplementedException();
        }

        public int getSalary(Person obj)
        {
            throw new NotImplementedException();
        }

        public string updateAddress(Person obj)
        {
            throw new NotImplementedException();
        }
    }
}
