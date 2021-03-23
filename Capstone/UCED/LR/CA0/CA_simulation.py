# -*- coding: utf-8 -*-
"""
Created on Mon Oct  8 11:45:39 2018

@author: jkern
"""

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
import CA_wrapper
#for i in range(3):
#os.chdir(os. getcwd()+"\LR\CA{}".format(i))
CA_wrapper.sim(days)
import CA_price_calculation
#os.chdir("../..")


############################################################################
#                    WHOLESALE ELECTRICITY PRICES
#

#import emission_calculation

# Prices in California need to be translated to a CAISO average price from
# prices at the four zones. This is done using a regression among historical
# zonal prices.
