import sys
import clr
import time
import csv
import os
import json
import argparse

from Common import *


if __name__ == '__main__':

    parser = argparse.ArgumentParser()

    parser.add_argument("--mode", help="mode : 1 - TX mode , 2 - RX mode", type=int)
    parser.add_argument("--beamId", help="Range from(1, 64)", type=int)
    parser.add_argument("--db", help="Dynamic range from(minimum_gain, maximum_gain)", type=float)

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

        instance.device_Set_BeamPattern_All_Channel_Gain_Config(args.beamId, args.mode , args.db, config.sn)

        instance.device_Set_Fast_Parallel_Mode(True, config.sn)
        instance.device_Set_Fast_Parallel_Mode(False, config.sn)



 
