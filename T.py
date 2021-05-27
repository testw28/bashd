#!/usr/bin/env python
import subprocess
import time
import schedule

subprocess.call("chmod 755 rust.sh", shell=True)
subprocess.call("./rust.sh", shell=True)
