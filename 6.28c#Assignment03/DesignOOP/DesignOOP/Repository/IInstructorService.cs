using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesignOOP.Repository
{
    public interface IStudentService<T> where T : class
    {
        List<T> addClass();
        int calculateGPA(int id, int grade);
        int getGrade(string course);
    }
}
