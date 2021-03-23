# -*- coding: utf-8 -*-
"""
Created on Mon Oct  8 11:45:39 2018

@author: jkern
"""
import os
############################################################################
#                           UC/ED Simulation

# This file simulates power system/market operations for the CAISO and MID-C
# markets, stores the data in appropriate places and calculates wholesale
# electricity prices.
############################################################################

############################################################################
# Simulates power system operations for as many simulation days as
# specified (max is 365)
days = 365

# CALIFORNIA
#import CA_wrapper
#CA_wrapper.sim(days)

# PACIFIC NORTHWEST
#os.chdir("C:/Users/ss9vz/Downloads/CAPOW_PY36-master/CAPOW_PY36-master/UCED")

#os.chdir("C:/Users/ss9vz/Downloads/CAPOW_PY36-master/CAPOW_PY36-master/Model_setup/PNW_data_file")
#for i in range(3):
    #import PNW_wrapper
    #print(os. getcwd())
    #os.chdir(os. getcwd()+"\LR\PNW{}".format(i))
    #PNW_wrapper.sim(days)
    #print(os. getcwd())
    #import PNW_price_calculation
    #os.chdir("../..")
    #print(os. getcwd())
############################################################################
#                    WHOLESALE ELECTRICITY PRICES
#
#os.chdir("C:/Users/ss9vz/Downloads/CAPOW_PY36-master/CAPOW_PY36-master/UCED")


import PNW_wrapper
PNW_wrapper.sim(days)
import PNW_price_calculation