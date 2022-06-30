using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesignOOP.Repository
{
    public interface ICourseService<T> where T : class
    {
        List<T> GetAll();
        T GetById(int id);
    }
}
