using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _07createTwoClass
{
    class Ball
    {
        private int size;
        private Color color;
        private int numThrows;

        //constructor for Ball class
        public Ball(int size, Color color)
        {
            this.size = size;
            this.color = color;
            numThrows = 0;
        }

        //getters and setters for data members
        public int getSize()
        {
            return size;
        }

        public Color getColor()
        {
            return color;
        }

        public void Pop()
        {
            size = 0;
        }

        public void Throw()
        {
            //if ball has not been popped : add the number of throws
            if (size != 0)
            {
                numThrows++;
            }
        }

        public int getNumThrows()
        {
            return numThrows;
        }
    }
}
