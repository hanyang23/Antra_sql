using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesignOOP.Repository
{
    public interface IPersonService<T> where T : class
    {
        int getAge(T obj);
        int getSalary(T obj);
        string getAddress(T obj);
        string updateAddress(T obj);

    }
}
