import sys
import clr
import time
import csv
import os
import argparse

class Configuration(object):

	STANDBY = 0
	TX = 1
	RX = 2
	SLEEP = 3

	def __init__(self, IC_Number, TXC, TXQ, RXC, RXQ):

		self.IC_Number = IC_Number
		self.fw_version = ""
		self.mode = self.STANDBY
		self.TC_switch = 0

		self.TX_COM_MIN_GAIN = 0
		self.TX_COM_MAX_GAIN = 0
		self.RX_COM_MIN_GAIN = 0
		self.RX_COM_MAX_GAIN = 0

		self.product_id = 0
		self.product_ver = 0
		self.pdet1 = 0
		self.pdet2 = 0
		self.pdet3 = 0
		self.pdet4 = 0
		self.temp_sense = 0
		self.expected_temp_sense = 0

		self.fbs_enable = 0
		self.tdbs_enable = 0
		self.temp_enable = 0

		self.TX_beam_db = 0
		self.TX_angleX = 0
		self.TX_angleY = 0

		self.RX_beam_db = 0
		self.RX_angleX = 0
		self.RX_angleY = 0

		self.TX_ch1_dis = 0
		self.TX_ch2_dis = 0
		self.TX_ch3_dis = 0
		self.TX_ch4_dis = 0

		self.TX_ch1_db = 0
		self.TX_ch1_deg = 0
		self.TX_ch2_db = 0
		self.TX_ch2_deg = 0
		self.TX_ch3_db = 0
		self.TX_ch3_deg = 0
		self.TX_ch4_db = 0
		self.TX_ch4_deg = 0
  
		self.RX_ch1_dis = 0
		self.RX_ch2_dis = 0
		self.RX_ch3_dis = 0
		self.RX_ch4_dis = 0

		self.RX_ch1_db = 0
		self.RX_ch1_deg = 0
		self.RX_ch2_db = 0
		self.RX_ch2_deg = 0
		self.RX_ch3_db = 0
		self.RX_ch3_deg = 0
		self.RX_ch4_db = 0
		self.RX_ch4_deg = 0
  
		self.TX_C = TXC
		self.TX_Q = TXQ
		self.RX_C = RXC
		self.RX_Q = RXQ


class Device_Configuration(object):

	Bulbul28A_dev_type = 7
	Bulbul39A_dev_type = 8
	Mojito28A_dev_type = 12
	Mojito39A_dev_type = 13
	Oriole28A_dev_type = 9
	Oriole39A_dev_type = 10

	Bulbul28A_DEFAULT_TXC = 8
	Bulbul28A_DEFAULT_TXQ = 6
	Bulbul28A_DEFAULT_RXC = 2
	Bulbul28A_DEFAULT_RXQ = 11

	Bulbul39A_DEFAULT_TXC = 9
	Bulbul39A_DEFAULT_TXQ = 20
	Bulbul39A_DEFAULT_RXC = 6
	Bulbul39A_DEFAULT_RXQ = 23
 
	def __init__(self, SN, DEVICE_TYPE, freq_list, operating_freq):

		self.sn = SN
		self.dev_type = DEVICE_TYPE
		self.freq_list = freq_list
		self.operating_freq = operating_freq
		self.config = []


		if DEVICE_TYPE == self.Mojito28A_dev_type:
			self.dev_type = DEVICE_TYPE
			self.config.append(Configuration(0, self.Bulbul28A_DEFAULT_TXC,
									self.Bulbul28A_DEFAULT_TXQ, self.Bulbul28A_DEFAULT_RXC, self.Bulbul28A_DEFAULT_RXQ))
		elif DEVICE_TYPE == self.Mojito39A_dev_type:
			self.dev_type = DEVICE_TYPE
			self.config.append(Configuration(0, self.Bulbul39A_DEFAULT_TXC,
									self.Bulbul39A_DEFAULT_TXQ, self.Bulbul39A_DEFAULT_RXC, self.Bulbul39A_DEFAULT_RXQ))
		elif DEVICE_TYPE == self.Bulbul28A_dev_type:
			self.dev_type = DEVICE_TYPE
			self.config.append(Configuration(0, self.Bulbul28A_DEFAULT_TXC,
									self.Bulbul28A_DEFAULT_TXQ, self.Bulbul28A_DEFAULT_RXC, self.Bulbul28A_DEFAULT_RXQ))
		elif DEVICE_TYPE == self.Bulbul39A_dev_type:
			self.dev_type = DEVICE_TYPE
			self.config.append(Configuration(0, self.Bulbul39A_DEFAULT_TXC,
									self.Bulbul39A_DEFAULT_TXQ, self.Bulbul39A_DEFAULT_RXC, self.Bulbul39A_DEFAULT_RXQ))
		elif DEVICE_TYPE == self.Oriole28A_dev_type:
			self.dev_type = DEVICE_TYPE
			for i in range(4):
				self.config.append(Configuration(i, self.Bulbul28A_DEFAULT_TXC,
									 self.Bulbul28A_DEFAULT_TXQ, self.Bulbul28A_DEFAULT_RXC, self.Bulbul28A_DEFAULT_RXQ))
		elif DEVICE_TYPE == self.Oriole39A_dev_type:
			self.dev_type = DEVICE_TYPE
			for i in range(4):
				self.config.append(Configuration(i, self.Bulbul39A_DEFAULT_TXC,
									 self.Bulbul39A_DEFAULT_TXQ, self.Bulbul39A_DEFAULT_RXC, self.Bulbul39A_DEFAULT_RXQ))


	def get_config(self):
		return self.config


	def set_operatingfreq(self, freq):
		self.operating_freq = freq


	def set_calibration_table_params(self, DR, ELEDR, COMDR):
		if self.dev_type == self.Bulbul28A_dev_type or self.dev_type == self.Bulbul39A_dev_type or self.dev_type == self.Mojito28A_dev_type or self.dev_type == self.Mojito39A_dev_type:
			self.TX_MIN_GAIN = DR[0, 0]
			self.TX_MAX_GAIN = DR[0, 1]
			self.RX_MIN_GAIN = DR[1, 0]
			self.RX_MAX_GAIN = DR[1, 1]

			self.config[0].TX_COM_MIN_GAIN = COMDR[0, 0]
			self.config[0].TX_COM_MAX_GAIN = COMDR[0, 1]
			self.config[0].RX_COM_MIN_GAIN = COMDR[1, 0]
			self.config[0].RX_COM_MAX_GAIN = COMDR[1, 1]
			self.config[0].TX_ELE_DYNAMIC_RANGE = ELEDR[0, 0]
			self.config[0].RX_ELE_DYNAMIC_RANGE = ELEDR[0, 1]

			print("[API_Interface] TX_MIN_GAIN : " + str(self.TX_MIN_GAIN))
			print("[API_Interface] TX_MAX_GAIN : " + str(self.TX_MAX_GAIN))
			print("[API_Interface] RX_MIN_GAIN : " + str(self.RX_MIN_GAIN))
			print("[API_Interface] RX_MAX_GAIN : " + str(self.RX_MAX_GAIN))
			print("[API_Interface] TX_COM_MIN_GAIN : %f" % (self.config[0].TX_COM_MIN_GAIN))
			print("[API_Interface] TX_COM_MAX_GAIN : %f" % (self.config[0].TX_COM_MAX_GAIN))
			print("[API_Interface] RX_COM_MIN_GAIN : %f" % (self.config[0].RX_COM_MIN_GAIN))
			print("[API_Interface] RX_COM_MAX_GAIN : %f" % (self.config[0].RX_COM_MAX_GAIN))
			print("[API_Interface] TX_ELE_DYNAMIC_RANGE : %f" % (self.config[0].TX_ELE_DYNAMIC_RANGE))
			print("[API_Interface] RX_ELE_DYNAMIC_RANGE : %f" % (self.config[0].RX_ELE_DYNAMIC_RANGE))

		elif self.dev_type == self.Oriole28A_dev_type or self.dev_type == self.Oriole39A_dev_type:
			self.TX_MIN_GAIN = DR[0, 0]
			self.TX_MAX_GAIN = DR[0, 1]
			self.RX_MIN_GAIN = DR[1, 0]
			self.RX_MAX_GAIN = DR[1, 1]

			self.config[0].TX_COM_MIN_GAIN = COMDR[0, 0]
			self.config[0].TX_COM_MAX_GAIN = COMDR[0, 1]
			self.config[0].RX_COM_MIN_GAIN = COMDR[1, 0]
			self.config[0].RX_COM_MAX_GAIN = COMDR[1, 1]
			self.config[0].TX_ELE_DYNAMIC_RANGE = ELEDR[0, 0]
			self.config[0].RX_ELE_DYNAMIC_RANGE = ELEDR[0, 1]

			self.config[1].TX_COM_MIN_GAIN = COMDR[2, 0]
			self.config[1].TX_COM_MAX_GAIN = COMDR[2, 1]
			self.config[1].RX_COM_MIN_GAIN = COMDR[3, 0]
			self.config[1].RX_COM_MAX_GAIN = COMDR[3, 1]
			self.config[1].TX_ELE_DYNAMIC_RANGE = ELEDR[1, 0]
			self.config[1].RX_ELE_DYNAMIC_RANGE = ELEDR[1, 1]

			self.config[2].TX_COM_MIN_GAIN = COMDR[4, 0]
			self.config[2].TX_COM_MAX_GAIN = COMDR[4, 1]
			self.config[2].RX_COM_MIN_GAIN = COMDR[5, 0]
			self.config[2].RX_COM_MAX_GAIN = COMDR[5, 1]
			self.config[2].TX_ELE_DYNAMIC_RANGE = ELEDR[2, 0]
			self.config[2].RX_ELE_DYNAMIC_RANGE = ELEDR[2, 1]

			self.config[3].TX_COM_MIN_GAIN = COMDR[6, 0]
			self.config[3].TX_COM_MAX_GAIN = COMDR[6, 1]
			self.config[3].RX_COM_MIN_GAIN = COMDR[7, 0]
			self.config[3].RX_COM_MAX_GAIN = COMDR[7, 1]
			self.config[3].TX_ELE_DYNAMIC_RANGE = ELEDR[3, 0]
			self.config[3].RX_ELE_DYNAMIC_RANGE = ELEDR[3, 1]

			print("[API_Interface] TX_MIN_GAIN : " + str(self.TX_MIN_GAIN))
			print("[API_Interface] TX_MAX_GAIN : " + str(self.TX_MAX_GAIN))
			print("[API_Interface] RX_MIN_GAIN : " + str(self.RX_MIN_GAIN))
			print("[API_Interface] RX_MAX_GAIN : " + str(self.RX_MAX_GAIN))

			print("[API_Interface] TX_COM_MIN_GAIN : %f" % (self.config[0].TX_COM_MIN_GAIN))
			print("[API_Interface] TX_COM_MAX_GAIN : %f" % (self.config[0].TX_COM_MAX_GAIN))
			print("[API_Interface] RX_COM_MIN_GAIN : %f" % (self.config[0].RX_COM_MIN_GAIN))
			print("[API_Interface] RX_COM_MAX_GAIN : %f" % (self.config[0].RX_COM_MAX_GAIN))
			print("[API_Interface] TX_ELE_DYNAMIC_RANGE : %f" % (self.config[0].TX_ELE_DYNAMIC_RANGE))
			print("[API_Interface] RX_ELE_DYNAMIC_RANGE : %f" %(self.config[0].RX_ELE_DYNAMIC_RANGE))

			print("[API_Interface] TX_COM_MIN_GAIN : %f" % (self.config[1].TX_COM_MIN_GAIN))
			print("[API_Interface] TX_COM_MAX_GAIN : %f" % (self.config[1].TX_COM_MAX_GAIN))
			print("[API_Interface] RX_COM_MIN_GAIN : %f" % (self.config[1].RX_COM_MIN_GAIN))
			print("[API_Interface] RX_COM_MAX_GAIN : %f" % (self.config[1].RX_COM_MAX_GAIN))
			print("[API_Interface] TX_ELE_DYNAMIC_RANGE : %f" % (self.config[1].TX_ELE_DYNAMIC_RANGE))
			print("[API_Interface] RX_ELE_DYNAMIC_RANGE : %f" % (self.config[1].RX_ELE_DYNAMIC_RANGE))

			print("[API_Interface] TX_COM_MIN_GAIN : %f" % (self.config[2].TX_COM_MIN_GAIN))
			print("[API_Interface] TX_COM_MAX_GAIN : %f" % (self.config[2].TX_COM_MAX_GAIN))
			print("[API_Interface] RX_COM_MIN_GAIN : %f" % (self.config[2].RX_COM_MIN_GAIN))
			print("[API_Interface] RX_COM_MAX_GAIN : %f" % (self.config[2].RX_COM_MAX_GAIN))
			print("[API_Interface] TX_ELE_DYNAMIC_RANGE : %f" % (self.config[2].TX_ELE_DYNAMIC_RANGE))
			print("[API_Interface] RX_ELE_DYNAMIC_RANGE : %f" % (self.config[2].RX_ELE_DYNAMIC_RANGE))

			print("[API_Interface] TX_COM_MIN_GAIN : %f" % (self.config[3].TX_COM_MIN_GAIN))
			print("[API_Interface] TX_COM_MAX_GAIN : %f" % (self.config[3].TX_COM_MAX_GAIN))
			print("[API_Interface] RX_COM_MIN_GAIN : %f" % (self.config[3].RX_COM_MIN_GAIN))
			print("[API_Interface] RX_COM_MAX_GAIN : %f" % (self.config[3].RX_COM_MAX_GAIN))
			print("[API_Interface] TX_ELE_DYNAMIC_RANGE : %f" % (self.config[3].TX_ELE_DYNAMIC_RANGE))
			print("[API_Interface] RX_ELE_DYNAMIC_RANGE : %f" % (self.config[3].RX_ELE_DYNAMIC_RANGE))



class API_Interface(object):

	path = '.\\BBoxAPI.dll'


	STANDBY = 0
	TX = 1
	RX = 2
	SLEEP = 3

	def __init__(self, VNA_ENABLE):
		self.Connected = False

		self.VNA_ENABLE = VNA_ENABLE

		clr.AddReference(os.path.abspath(self.path))
		from BBoxAPI import BBoxOneAPI

		self.instance = BBoxOneAPI()

		self.config_list = []
		self.config_list = self.get_DeviceConfig_list()

	def __del__(self):
		self.vna_ctrl = None
		self.instance = None


	def get_DeviceConfig_list(self):
		dev_info = self.instance.ScanningDevice(0)
  
		for idx in range(len(dev_info)):
			query_result = dev_info[idx].split(",")
			sn = query_result[0]
			ip = query_result[1]
			DevType = query_result[2].split("\x00")
			dev_type = int(DevType[0])

			print("[API_Interface] SN:%s, IP:%s, Type:%d" % (sn, ip, dev_type))

			## TODO : API flow init must before checkCaliTableLocation
			self.device_init(sn, dev_type)

			if self.instance.checkCaliTableLocation(sn):
				freq_list = self.instance.getFrequencyList(sn)
				self.device_setoperatingfreq(freq_list[0], sn)
				config = Device_Configuration(sn, dev_type, freq_list, freq_list[0])
				self.get_dynamic_range(config)
				self.config_list.append(config)
				self.device_num = len(self.config_list)
    
		return self.config_list


	def device_init(self, sn, dev_type):
		ret = self.instance.Init(sn, dev_type)
		if ret != 0:
			print("[API_Interface] Init failed : error_code %d" % ret)
		else:
			print("[API_Interface] Init OK")


	def device_SwitchTxRxMode(self, mode, sn):
		self.instance.SwitchTxRxMode(mode, sn)

	def get_device_freqlist(self, sn):
		self.freq_list = self.instance.getFrequencyList(sn)
		return self.freq_list

	def device_setoperatingfreq(self, freq, sn):
		freq_list = self.get_device_freqlist(sn)
		if len(freq_list) == 0:
			print("[API_Interface] getFrequencyList failed : return null")
			sys.exit(0)
		else:
			for available_freq in freq_list:
				if available_freq == freq:
					ret = self.instance.setOperatingFreq(float(available_freq), sn)
					if ret != 0:
						print("[API_Interface] setOperatingFreq failed : error_code %d" % ret)


	def get_dynamic_range(self, config):
		DR = self.instance.getDR(config.sn)
		COMDR = self.instance.getCOMDR(config.sn)
		ELEDR = self.instance.getELEDR(config.sn)
		config.set_calibration_table_params(DR, ELEDR, COMDR)


	def get_device_config(self, sn):
		
		for item in self.config_list:
			if item.sn == sn:
				return item
		
		return None

	def device_setChannelGainPhase(self, board, ch, db, deg, sn):
		return self.instance.setChannelGainPhase(board, ch, db, deg, sn)

	def device_setBeamXY(self, db, angleX, angleY, sn):
		return self.instance.setBeamXY(db, angleX, angleY, sn)

	def get_device_AAKitList(self, sn):
		return self.instance.getAAKitList(sn)

	def device_selectAAKit(self, AAkit_name, sn):
		return self.instance.selectAAKit(AAkit_name, sn)

	def device_Set_BeamPattern_Config(self, beamId, mode, db, theta, phi, sn):
		return self.instance.Set_BeamPattern_Config(beamId, mode, db, theta, phi, sn)

	def device_Get_BeamPattern_Config_by_ID(self, beamId, mode, sn):
		return self.instance.Get_BeamPattern_Config_by_ID(beamId, mode, sn)

	def device_Set_Fast_Parallel_Mode(self, mode, sn):
		return self.instance.Set_Fast_Parallel_Mode(mode, sn)

	def device_Get_Fast_Parallel_Mode_Status(self, sn):
		return self.instance.Get_Fast_Parallel_Mode_Status(sn)



if __name__ == '__main__':

	parser = argparse.ArgumentParser()

	parser.add_argument("--mode", help="mode : 1 - TX mode , 2 - RX mode", type=int)
	parser.add_argument("--beamId", help="range from(1,64)", type=int)
	parser.add_argument("--db", help="dynamic range from(minimum_gain, maximum_gain)", type=float)
	parser.add_argument("--theta", help="range from(0,45)", type=int)
	parser.add_argument("--phi", help="0 or 180", type=int)

	args = parser.parse_args()

	if len(sys.argv) == 1:
		parser.print_help()
		sys.exit(1)


	instance = API_Interface(False)

	config_list = instance.config_list

	if config_list == []:
		sys.exit()
	else:
		config = config_list[0]

		AAkit_list = instance.get_device_AAKitList(config.sn)

		instance.device_selectAAKit(AAkit_list[0], config.sn)

		instance.device_Set_BeamPattern_Config(args.beamId, args.mode, args.db, args.theta, args.phi, config.sn)
		print(instance.device_Get_BeamPattern_Config_by_ID(args.beamId, args.mode, config.sn))

		instance.device_Set_Fast_Parallel_Mode(True, config.sn)
		instance.device_Set_Fast_Parallel_Mode(False, config.sn)



 
