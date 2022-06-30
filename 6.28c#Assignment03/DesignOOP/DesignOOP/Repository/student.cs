using DesignOOP.DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesignOOP.Repository
{
    internal class studentRepository : IStudentService<Student>
    {
        public List<Student> addClass()
        {
            throw new NotImplementedException();
        }

        public int calculateGPA(int id, int grade)
        {
            throw new NotImplementedException();
        }

        public int getGrade(string course)
        {
            throw new NotImplementedException();
        }
    }
}
