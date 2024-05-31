import signal
import sys


def sigterm_handler(*_):
    print('SIGTERM Received!')
    sys.exit(0)


signal.signal(signal.SIGTERM, sigterm_handler)
print('Waiting for SIGTERM')
signal.pause()
