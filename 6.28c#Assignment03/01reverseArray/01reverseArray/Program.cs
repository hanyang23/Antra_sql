using System;

class GFG
{

    static void rvereseArray(int[] arr,
                    int start, int end)
    {
        int temp;

        while (start < end)
        {
            temp = arr[start];
            arr[start] = arr[end];
            arr[end] = temp;
            start++;
            end--;
        }
    }

    static void printArray(int[] arr,
                            int size)
    {
        for (int i = 0; i < size; i++)
            Console.Write(arr[i] + " ");

        Console.WriteLine();
    }


    public static void Main()
    {
        int[] arr = { 1, 2, 3, 4, 5, 6 };
        printArray(arr, 6);
        rvereseArray(arr, 0, 5);
        Console.Write("Reversed array is \n");
        printArray(arr, 6);
    }
}