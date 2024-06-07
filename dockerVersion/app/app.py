from celery import Celery
from celery_worker import fib_task
# from celery_worker import fib_dp_task

app = Celery('celery_worker',
             broker='pyamqp://guest:guest@my_rabbitmq_c//',
             backend='db+postgresql://cloe:cloe@my_postgres_c/cloedb')

results = []


def status():
    for n, result in results:
        if result.ready():
            print(f"fib{n}: {result.get()}")
        else:
            print(f"fib{n}: ???")


if __name__ == '__main__':
    while True:
        cmd = input("Enter a number (or q to quit or s for status): ")
        if cmd == "q":
            break
        elif cmd == "s":
            status()
        # elif cmd == "d":
        #     n = int(old_cmd)
        #     result = fib_dp_task.delay(n)
        #     results.append((n, result))
        else:
            old_cmd = int(cmd)
            n = int(cmd)
            result = fib_task.delay(n)
            results.append((n, result))
