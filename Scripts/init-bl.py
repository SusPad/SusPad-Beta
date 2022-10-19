import time
import RPi.GPIO as gpio

gpio.setmode(gpio.BCM)
gpio.setup(4, gpio.IN, pull_up_down=gpio.PUD_UP)
gpio.setup(22, gpio.OUT)

gpio.output(22, True)

bl_state = True

while True:
    if not(gpio.input(4)):
        bl_state = not(bl_state)
        gpio.output(22, bl_state)
        time.sleep(0.2)
    time.sleep(0.1)
