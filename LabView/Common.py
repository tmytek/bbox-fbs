import sys
import clr
import time
import csv
import os
import json
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

        self.TX_beam_db = 0.0
        self.TX_theta = 0
        self.TX_phi = 0

        self.RX_beam_db = 0.0
        self.RX_theta = 0
        self.RX_phi = 0

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

    Mojito26A_dev_type = 17
    Bulbul26A_dev_type = 18
    Oriole26A_dev_type = 19

    Bulbul26A_DEFAULT_TXC = 8
    Bulbul26A_DEFAULT_TXQ = 7
    Bulbul26A_DEFAULT_RXC = 2
    Bulbul26A_DEFAULT_RXQ = 11

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


        if DEVICE_TYPE == self.Mojito28A_dev_type or DEVICE_TYPE == self.Bulbul28A_dev_type:
            self.dev_type = DEVICE_TYPE
            self.config.append(Configuration(0, self.Bulbul28A_DEFAULT_TXC,
                                    self.Bulbul28A_DEFAULT_TXQ, self.Bulbul28A_DEFAULT_RXC, self.Bulbul28A_DEFAULT_RXQ))
        elif DEVICE_TYPE == self.Mojito39A_dev_type or DEVICE_TYPE == self.Bulbul39A_dev_type:
            self.dev_type = DEVICE_TYPE
            self.config.append(Configuration(0, self.Bulbul39A_DEFAULT_TXC,
                                    self.Bulbul39A_DEFAULT_TXQ, self.Bulbul39A_DEFAULT_RXC, self.Bulbul39A_DEFAULT_RXQ))
        elif DEVICE_TYPE == self.Mojito26A_dev_type or DEVICE_TYPE == self.Bulbul26A_dev_type:
            self.dev_type = DEVICE_TYPE
            self.config.append(Configuration(0, self.Bulbul26A_DEFAULT_TXC,
                                    self.Bulbul26A_DEFAULT_TXQ, self.Bulbul26A_DEFAULT_RXC, self.Bulbul26A_DEFAULT_RXQ))
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
        elif DEVICE_TYPE == self.Oriole26A_dev_type:
            self.dev_type = DEVICE_TYPE
            for i in range(4):
                self.config.append(Configuration(i, self.Bulbul26A_DEFAULT_TXC,
                                     self.Bulbul26A_DEFAULT_TXQ, self.Bulbul26A_DEFAULT_RXC, self.Bulbul26A_DEFAULT_RXQ))
        else:
            print("[API_Interface][ERROR] Unknown device type")


    def get_config(self):
        return self.config


    def set_operatingfreq(self, freq):
        self.operating_freq = freq


    def set_calibration_table_params(self, DR, ELEDR, COMDR):
        if self.dev_type == self.Bulbul28A_dev_type or self.dev_type == self.Bulbul39A_dev_type or self.dev_type == self.Mojito28A_dev_type or self.dev_type == self.Mojito39A_dev_type or self.dev_type == self.Mojito26A_dev_type or self.dev_type == self.Bulbul26A_dev_type:
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

        elif self.dev_type == self.Oriole28A_dev_type or self.dev_type == self.Oriole39A_dev_type or self.dev_type == self.Oriole26A_dev_type:
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

        else:
            print("[API_Interface][ERROR] Unknown device type")


class API_Interface(object):

    version = "v1.0.0.5"

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

        print("[API_Interface][__init__] Sample Code Version : %s" %(self.version))


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

            print("[API_Interface][get_DeviceConfig_list] SN:%s, IP:%s, Type:%d" % (sn, ip, dev_type))

            self.device_init(sn, dev_type)

            if self.instance.checkCaliTableLocation(sn):
                freq_list = self.instance.getFrequencyList(sn)
                self.device_setoperatingfreq(freq_list[0], sn)
                config = Device_Configuration(sn, dev_type, freq_list, freq_list[0])
                self.get_dynamic_range(config)
                self.config_list.append(config)
                self.device_num = len(self.config_list)
            else:
                print("[API_Interface][get_DeviceConfig_list][ERROR] SN : %s Calibration Table not found" %(sn))
    
        return self.config_list


    def device_init(self, sn, dev_type):
        ret = self.instance.Init(sn, dev_type)
        if ret != 0:
            print("[API_Interface][device_init][ERROR] Init failed : error_code %d" % ret)
        else:
            print("[API_Interface][device_init] Init OK")


    def device_SwitchTxRxMode(self, mode, sn):
        self.instance.SwitchTxRxMode(mode, sn)

    def get_device_freqlist(self, sn):
        self.freq_list = self.instance.getFrequencyList(sn)
        return self.freq_list

    def device_setoperatingfreq(self, freq, sn):
        freq_list = self.get_device_freqlist(sn)
        if len(freq_list) == 0:
            print("[API_Interface][device_setoperatingfreq][ERROR] failed : return null")
            sys.exit(0)
        else:
            for available_freq in freq_list:
                if available_freq == freq:
                    ret = self.instance.setOperatingFreq(float(available_freq), sn)
                    if ret != 0:
                        print("[API_Interface][device_setoperatingfreq][ERROR] failed : error_code %d" % ret)


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

    def get_device_AAKitList(self, sn):
        return self.instance.getAAKitList(sn)

    def device_selectAAKit(self, AAkit_name, sn):
        return self.instance.selectAAKit(AAkit_name, sn)

    def device_Set_BeamPattern_Config(self, beamId, mode, db, theta, phi, sn):
        
        if beamId < 1 or beamId > 64:
            print('[API_Interface][device_Set_BeamPattern_Config][ERROR] beamId %d out of boundary' %(beamId))
        elif mode != 1 and mode != 2:
            print('[API_Interface][device_Set_BeamPattern_Config][ERROR] mode %d out of boundary' %(mode))

        s_ret = self.device_Get_BeamPattern_Config_by_ID(beamId, mode, sn)

        
        json_data = json.loads(s_ret)
        beam_settings = json_data['data']
        
        beam_settings['beam_type'] = 0     

        beam_settings['beam_config']['db'] = db
        beam_settings['beam_config']['theta'] = theta
        beam_settings['beam_config']['phi'] = phi
        
        beam_pattern = json.dumps(beam_settings)
        
        ret = self.instance.Set_BeamPattern_Config(beam_pattern, sn)
        if ret != 0:
            print('[API_Interface][device_Set_BeamPattern_Config][ERROR] Set failed ret %d, mode %d, db %f, theta %d, phi %d' %(ret, mode, db, theta, phi))
        
        return ret

    def device_Set_BeamPattern_Channel_Config(self, beamId, mode, ch , sw, db, deg, sn):
        
        if ch < 1 or ch > 16:
            print('[API_Interface][device_Set_BeamPattern_Channel_Config][ERROR] channel %d out of boundary' %(ch))
        elif beamId < 1 or beamId > 64:
            print('[API_Interface][device_Set_BeamPattern_Channel_Config][ERROR] beamId %d out of boundary' %(beamId))
        elif mode != 1 and mode != 2:
            print('[API_Interface][device_Set_BeamPattern_Channel_Config][ERROR] mode %d out of boundary' %(mode))
        elif sw != 0 and sw != 1:
            print('[API_Interface][device_Set_BeamPattern_Channel_Config][ERROR] sw %d out of boundary' %(sw))
        elif deg < 0 or deg >= 360:
            print('[API_Interface][device_Set_BeamPattern_Channel_Config][ERROR] deg %d out of boundary' %(deg))


        s_ret = self.device_Get_BeamPattern_Config_by_ID(beamId, mode, sn)
        
        json_data = json.loads(s_ret)
        beam_settings = json_data['data']
        
        beam_settings['beam_type'] = 1        

        idx = ch - 1
        beam_settings['channel_config'][idx]['sw'] = sw
        beam_settings['channel_config'][idx]['db'] = db
        beam_settings['channel_config'][idx]['deg'] = deg
        
        beam_pattern = json.dumps(beam_settings)
        
        ret = self.instance.Set_BeamPattern_Config(beam_pattern, sn)
        if ret != 0:
            print('[API_Interface][device_Set_BeamPattern_Channel_Config][ERROR] Set failed ret %d, ch %d, mode %d, switch %d, db %f, deg %d' %(ret, ch, mode, sw, db, deg))
        
        return ret

    def device_Set_BeamPattern_All_Channel_Gain_Config(self, beamId, mode , db, sn):
        
        if beamId < 1 or beamId > 64:
            print('[API_Interface][device_Set_BeamPattern_Channel_Config][ERROR] beamId %d out of boundary' %(beamId))
        elif mode != 1 and mode != 2:
            print('[API_Interface][device_Set_BeamPattern_Channel_Config][ERROR] mode %d out of boundary' %(mode))


        s_ret = self.device_Get_BeamPattern_Config_by_ID(beamId, mode, sn)
        
        json_data = json.loads(s_ret)
        beam_settings = json_data['data']
        
        beam_settings['beam_type'] = 1        

        for idx in range(0,16):
            beam_settings['channel_config'][idx]['db'] = db
        
        beam_pattern = json.dumps(beam_settings)
        
        ret = self.instance.Set_BeamPattern_Config(beam_pattern, sn)
        if ret != 0:
            print('[API_Interface][device_Set_BeamPattern_Channel_Config][ERROR] Set failed ret %d, ch %d, mode %d, switch %d, db %f, deg %d' %(ret, ch, mode, sw, db, deg))
        
        return ret

    def device_Get_BeamPattern_Config_by_ID(self, beamId, mode, sn):
        return self.instance.Get_BeamPattern_Config_by_ID(beamId, mode, sn)

    def device_Set_Fast_Parallel_Mode(self, mode, sn):
        return self.instance.Set_Fast_Parallel_Mode(mode, sn)

    def device_Get_Fast_Parallel_Mode_Status(self, sn):
        return self.instance.Get_Fast_Parallel_Mode_Status(sn)


