using _07createTwoClass;
using System;
class Program
{
    static void Main(string[] args)
    {
        Color color1 = new Color(18, 243, 107);
        Ball ball1 = new Ball(4, color1);

        //throw the ball 3 times
        ball1.Throw();
        ball1.Throw();
        ball1.Throw();
        Console.WriteLine("Throw count of Ball 1 before popping: " + ball1.getNumThrows());

        //pop the ball
        ball1.Pop();

        //throw the ball twice again after popping the ball
        ball1.Throw();
        ball1.Throw();

        //print the number of throws : should be same (as ball was popped)
        Console.WriteLine("Throw count of Ball 1 after popping: " + ball1.getNumThrows());


        Console.WriteLine();

        //create another color and ball object
        Color color2 = new Color(27, 87, 94, 148);
        Ball ball2 = new Ball(2, color2);

        ball2.Pop(); //pop the ball

        //throw the ball2 5 times
        for (int i = 0; i < 5; i++) ball2.Throw();

        //output should be zero as ball was popped initially
        Console.WriteLine("Ball 2 throw count: " + ball2.getNumThrows());
    }
}