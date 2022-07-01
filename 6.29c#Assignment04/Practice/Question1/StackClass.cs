using System;

class MyStack<T>
{
    int Count;
    T Pop;
    int Push;
    T[] stack;
    int top;

    public MyStack(int MaxLength)
    {
        Count = MaxLength;
        stack = new T[MaxLength];
    }

    public void push(T element)
    {
        top = top + 1;
        stack[top] = element;
    }

    public T pop()
    {
        T removeElement;
        T temp = default(T);

        if(!(top <= 0))
        {
            removeElement = stack[top];
            top = top - 1;
            return removeElement;
        }
        return temp;
    }

  
}