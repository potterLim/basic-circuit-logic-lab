'''
Lab is based on the Code by Youngsik Kim @ CSEE . HGU
Test the Power supply and Voltage meter function
'''


### need to import the power class
from power import Power
import time
import matplotlib.pyplot as plt

pwr=Power()

pwr.get_device_info()
pwr.print_device_info()

pwr.open_device()
pwr.reset_analogIO()
print('==========================================\n')

# Configure VP+ with 50mA current limit
pwr.set_channel_current('VP+',50e-3)
pwr.enable_channel('VP+')
pwr.analogIO_ON()

# Vraible declaration
Vdc_list = [1.0, 3.0, 5.0]
V_A_list = []
V_B_list = []
V_C_list = []
V_D_list = []

# Experiment
print('*** Experiment****')
for vdc in Vdc_list:
    print('Vdc=%.2f (V)'%(vdc))
    pwr.set_channel_voltage('VP+',vdc)
    time.sleep(0.5)
    pwr.measure_vmtr()

    V_A_list.append(pwr.get_vmtr(0))
    V_B_list.append(pwr.get_vmtr(1))
    V_C_list.append(pwr.get_vmtr(2))
    V_D_list.append(pwr.get_vmtr(3))
    

pwr.analogIO_OFF()
print('==========================================\n')
print('*** Finished****')
del pwr

plt.plot(Vdc_list, V_A_list, 'o--', Vdc_list, V_B_list, 'o--', Vdc_list, V_C_list, 'o--', Vdc_list, V_D_list, 'o--')
plt.xlim([1,5])
plt.ylim([0,5])
plt.xlabel('Vdc(V)')
plt.ylabel('Node voltage(V)')
plt.legend(('V_A', 'V_B', 'V_C', 'V_D'))
plt.grid()
plt.show()









