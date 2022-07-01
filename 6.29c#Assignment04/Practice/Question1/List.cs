using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Question1
{
    class MyList<T>
    {
        T Add;
        T DeleteAt;
        int count;
        List<T> list;
        public MyList(int maxLength)
        {
            count = maxLength;
            list = new List<T>();
        }

        public void add(T element)
        {
            this.Add = element;
        }

        public bool remove(T element)
        {
            return false;
        }

        public bool contains(T element)
        {
            return false;
        }

        public void clear()
        {

        }

        public void insertAt(T element, int index)
        {

        }

        public void deleteAt(int inidex)
        {

        }

        public bool find(int index)
        {
            return false;
        }

    }
}
