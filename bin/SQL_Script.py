#!/usr/bin/python

import os
import sys

(os.system("mysql -u "+str(sys.argv[1])+" -p -h "+str(sys.argv[2])+" "+str(sys.argv[3])+"< "+str(sys.argv[4])))
    
        
