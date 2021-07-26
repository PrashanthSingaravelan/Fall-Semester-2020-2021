import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
df=pd.read_csv('EEE_LINE.csv')
x = df['Load Resistance in Ohms']
y = df['Output DC Voltage (VL) in Volts']
plt.subplots(figsize=(10,7))
plt.plot(x,y,marker="o",
        markerfacecolor="k",color="red",linewidth=2,
         linestyle="--",label='Break down voltage line')
plt.xlim(0,30)
plt.ylim(0,5)
plt.grid(b=True, which='major', color='g', linestyle='--')
#plt.legend(loc="lower right",fontsize=15)
plt.title('Load Regulation',fontsize=30)
plt.xlabel('Input Resistance' ,fontsize=20)
plt.ylabel('Output Voltage',fontsize=20)
plt.show()