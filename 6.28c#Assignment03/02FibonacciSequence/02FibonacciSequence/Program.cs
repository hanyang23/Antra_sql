using System;

public class Fibonacci
{
	public static void Main()
	{
		int n1 = 1, n2 = 1, n3, i;
		Console.Write(n1 + " " + n2 + " ");
		for (i = 2; i < 10; ++i)
		{
			n3 = n1 + n2;
			Console.Write(n3 + " ");
			n1 = n2;
			n2 = n3;
		}

	}
}