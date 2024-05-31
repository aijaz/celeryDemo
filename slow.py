def fib(n: int) -> int :
    if n > 1:
        return fib(n - 1) + fib(n - 2)
    elif n == 1:
        return 1
    elif n == 0:
        return 1


if __name__ == '__main__':
    while True:
        n = int(input("Enter a positive number (or 0 to quit): "))
        if n == 0:
            break
        result = fib(n)
        print(result)
