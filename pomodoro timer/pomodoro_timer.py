#!/usr/bin/env python
import time, sys, os
from tqdm import tqdm
from playsound import playsound

python = sys.executable
alarm = 'alarm.ogg'
t = 1500

pbar = tqdm(total=t)
for i in range(t):
    pbar.update(n=1)
    time.sleep(1)

playsound(alarm) 
print("Time for a little break")
input ("Press ENTER to continue")
os.execl(python, python, * sys.argv)
