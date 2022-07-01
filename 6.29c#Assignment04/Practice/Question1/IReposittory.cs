using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Question1
{
    public interface IReposittory <T> where T : class
    {
        void add(T item);
        void remove(T item);
        void save();
        IEnumerable<T> getAll();
        T getByID(int id);
    }
}
