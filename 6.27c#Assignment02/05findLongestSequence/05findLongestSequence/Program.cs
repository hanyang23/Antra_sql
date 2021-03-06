using System;
using System.Collections.Generic;

class GFG
{

    static int findLongestConseqSubseq(int[] arr,
                                       int n)
    {

        // Sort the array
        Array.Sort(arr);

        int ans = 0, count = 0;

        List<int> v = new List<int>();
        v.Add(10);

        // Insert repeated elements 
        // only once in the vector
        for (int i = 1; i < n; i++)
        {
            if (arr[i] != arr[i - 1])
                v.Add(arr[i]);
        }

        // Find the maximum length
        // by traversing the array
        for (int i = 0; i < v.Count; i++)
        {

            // Check if the current element is
            // equal to previous element +1
            if (i > 0 && v[i] == v[i - 1] + 1)
                count++;
            else
                count = 1;

            // Update the maximum
            ans = Math.Max(ans, count);
        }
        return ans;
    }

    // Driver code 
    static void Main()
    {
        int[] arr = { 1, 9, 3, 10, 4, 20, 2 };
        int n = arr.Length;

        Console.WriteLine("Length of the Longest " +
                          "contiguous subsequence is " +
                          findLongestConseqSubseq(arr, n));
    }
}