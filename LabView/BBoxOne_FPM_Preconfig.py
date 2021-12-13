import sys
import clr
import time
import csv
import os
import numpy as np
import pandas as pd

path = '.\\BBoxAPI.dll'
clr.AddReference(os.path.abspath(path))

from BBoxAPI import *

STANDBY = 0
TX = 1
RX = 2
SLEEP = 3

timeout = 0.05

# TestCase1 : initial object
instance = BBoxOneAPI()


# TestCase2 : Scanning device for multi-interface
idx = 0
dev_info = instance.ScanningDevice(0)
query_result = dev_info[idx].split(",")
sn = query_result[0]
ip = query_result[1]
DevType = query_result[2].split("\x00")
dev_type = int(DevType[0])
print("[FPM_Test] SN:%s, IP:%s, Type:%d" % (sn, ip, dev_type))


# TestCase3 : Consrtuct object for the corresponding model , send Init SCPI
for i in range(0, 2):
	ret = instance.Init(sn, dev_type, idx)
	if ret != 0:
		print("[FPM_Test][Init] failed : error_code %d" % ret)
		sys.exit(0)
	else:
		print("[FPM_Test][Init] OK")

# TestCase4 : Check calibration table file path
check_result = instance.checkCaliTableLocation(sn)
print("[FPM_Test][checkCaliTableLocation] %s" % str(check_result))

# TestCase5 : Check switch_mode and get_mode for [ STANDBY, TX, RX, SLEEP ]
mode = STANDBY
ret = instance.SwitchTxRxMode(mode, sn)
if ret != 0:
	print("[FPM_Test][SwitchTxRxMode] failed : error_code %d" % ret)
	sys.exit(0)
else:
	print("[FPM_Test][SwitchTxRxMode] OK")
ret = instance.getTxRxMode(sn)
if ret != mode:
	print("[FPM_Test][getTxRxMode] failed : mode %d" % ret)
	sys.exit(0)

mode = TX
ret = instance.SwitchTxRxMode(mode, sn)
if ret != 0:
	print("[FPM_Test][SwitchTxRxMode] failed : error_code %d" % ret)
	sys.exit(0)
else:
	print("[FPM_Test][SwitchTxRxMode] OK")
ret = instance.getTxRxMode(sn)
if ret != mode:
	print("[FPM_Test][getTxRxMode] failed : mode %d" % ret)
	sys.exit(0)


mode = RX
ret = instance.SwitchTxRxMode(mode, sn)
if ret != 0:
	print("[FPM_Test][SwitchTxRxMode] failed : error_code %d" % ret)
	sys.exit(0)
else:
	print("[FPM_Test][SwitchTxRxMode] OK")

ret = instance.getTxRxMode(sn)
if ret != mode:
	print("[FPM_Test][getTxRxMode] failed : mode %d" % ret)
	sys.exit(0)

mode = SLEEP
ret = instance.SwitchTxRxMode(mode, sn)
if ret != 0:
	print("[FPM_Test][SwitchTxRxMode] failed : error_code %d" % ret)
	sys.exit(0)
else:
	print("[FPM_Test][SwitchTxRxMode] OK")
ret = instance.getTxRxMode(sn)
if ret != mode:
	print("[FPM_Test][getTxRxMode] failed : mode %d" % ret)
	sys.exit(0)


# TestCase6 : Check getfrequencyList
freq_list = instance.getFrequencyList(sn)
if len(freq_list) == 0:
	print("[FPM_Test][getFrequencyList] failed : return null")
	sys.exit(0)
else:
	for item in freq_list:
		print("[FPM_Test][getFrequencyList] list %s" % item)

# TestCase7 : Check setOperatingfreq / getOperatingfreq
operating_freq = float(item)

ret = instance.setOperatingFreq(operating_freq, sn)
if ret != 0:
	print("[FPM_Test][setOperatingFreq] failed : error_code %d" % ret)
	sys.exit(0)

ret_freq = instance.getOperatingFreq(sn)
if operating_freq != ret_freq:
	print("[FPM_Test][getOperatingFreq] failed : freq %f , operating_freq %f" % (ret_freq, operating_freq))
	sys.exit(0)

# TestCase8 : Check Load Calibration table / Dynamic range
ret = instance.getDR(sn)
print("[FPM_Test][getDR]")
TX_MIN_GAIN = ret[0, 0]
print("[FPM_Test][getDR] RX_MIN_GAIN : " + str(TX_MIN_GAIN))
TX_MAX_GAIN = ret[0, 1]
print("[FPM_Test][getDR] RX_MAX_GAIN : " + str(TX_MAX_GAIN))
RX_MIN_GAIN = ret[1, 0]
print("[FPM_Test][getDR] TX_MIN_GAIN : " + str(RX_MIN_GAIN))
RX_MAX_GAIN = ret[1, 1]
print("[FPM_Test][getDR] TX_MAX_GAIN : " + str(RX_MAX_GAIN))


# TestCase9 : Check Load Calibration table / Common-port Dynamic range
ret = instance.getCOMDR(sn)
print("[FPM_Test][getCOMDR]")
TX_COM_MIN_GAIN = ret[0, 0]
print("[FPM_Test][getCOMDR] TX_COM_MIN_GAIN : %f" % TX_COM_MIN_GAIN)
TX_COM_MAX_GAIN = ret[0, 1]
print("[FPM_Test][getCOMDR] TX_COM_MAX_GAIN : %f" % TX_COM_MAX_GAIN)
RX_COM_MIN_GAIN = ret[1, 0]
print("[FPM_Test][getCOMDR] RX_COM_MIN_GAIN : %f" % RX_COM_MIN_GAIN)
RX_COM_MAX_GAIN = ret[1, 1]
print("[FPM_Test][getCOMDR] RX_COM_MAX_GAIN : %f" % RX_COM_MAX_GAIN)


# TestCase10 : Check Load Calibration table / Element-port Dynamic range
ret = instance.getELEDR(sn)
print("[FPM_Test][getELEDR]")
TX_ELE_DYNAMIC_RANGE = ret[0, 0]
print("[FPM_Test][getELEDR] TX_ELE_DYNAMIC_RANGE : %f" % TX_ELE_DYNAMIC_RANGE)
RX_ELE_DYNAMIC_RANGE = ret[0, 1]
print("[FPM_Test][getELEDR] RX_ELE_DYNAMIC_RANGE : %f" % RX_ELE_DYNAMIC_RANGE)


AAkitList = instance.getAAKitList(sn)
instance.selectAAKit(AAkitList[0], sn)

mode = TX
ret = instance.SwitchTxRxMode(mode, sn)

for beamId in range(1,65):

	s_ret = instance.Get_BeamPattern_Config_by_ID(beamId, mode, sn)
	print(s_ret)


mode = RX
ret = instance.SwitchTxRxMode(mode, sn)

for beamId in range(1,65):

	s_ret = instance.Get_BeamPattern_Config_by_ID(beamId, mode, sn)
	print(s_ret)



ret = instance.Set_Fast_Parallel_Mode(True, sn)
print('[FPM_Test][Set_Fast_Parallel_Mode] ret = %d' % (ret))

b_ret = instance.Get_Fast_Parallel_Mode_Status(sn)
print('[FPM_Test][Get_Fast_Parallel_Mode_Status] ret = %d' % (b_ret))

