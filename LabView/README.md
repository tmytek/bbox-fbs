# BBox FBS
This demo is on USRP 2974 and programing by LabView 2019 or above.
# Develop Note


## Build Environment
* Python 3:
    * Higher than 3.6
    * Lower than 3.9
* Launch **python/lib-install.bat** to install related python libs
* Install LabView 2019 or later version
* Install .netframework 4.5.0 or later version



## Implementation Note
1. Please refer to the user mannual in doc folder
2. The calibration tables in files folder are the reference and should be replaced by users.
3. The logs folder should contain logs of API after you execute the LabView example.

## Beam Pattern Configuration Tool

- Configure Beam Pattern by (mode, db ,theta, phi)
  1. Please use the python script, BBox_StoreBeamPattern.py, in LabView folder.
  2. usage: BBox_StoreBeamPattern.py [-h] [--mode MODE] [--beamId BEAMID] [--db DB] [--theta THETA] [--phi PHI]
  3. optional arguments:
        ```
        -h, --help       , show this help message and exit
        --mode MODE      , MODE : 1 - TX mode , 2 - RX mode
        --beamId BEAMID  , BEAMID : range from(1, 64)
        --db DB          , DB : dynamic range from(minimum_gain, maximum_gain)
        --theta THETA    , THETA : range from(0, 45)
        --phi PHI        , BBoxLite : 0 or 180, BBoxOne : 0 to 359
        ```

- Configure All channel gain in channel beam pattern by (mode, db)
  1. Please use the python script, BBox_StoreBeamPattern.py, in LabView folder.
  2. usage: BBox_StoreAllChannelGain.py [-h] [--mode MODE] [--beamId BEAMID] [--db DB]
  3. optional arguments:
        ```
        -h, --help       show this help message and exit
        --mode MODE      mode : 1 - TX mode , 2 - RX mode
        --beamId BEAMID  Range from(1, 64)
        --db DB          Dynamic range from(minimum_gain, maximum_gain) DB          Dynamic range from(minimum_gain, maximum_gain)
        ```


- Configure channel beam pattern per channel by (mode, ch, sw ,db, deg)
  1. Please use the python script, BBox_StoreBeamPattern.py, in LabView folder.
  2. usage: BBox_StoreChannelPattern.py [-h] [--mode MODE] [--beamId BEAMID] [--ch CH] [--sw SW] [--db DB] [--deg DEG]
  3. optional arguments:
        ```
        -h, --help       show this help message and exit
        --mode MODE      mode : 1 - TX mode , 2 - RX mode
        --beamId BEAMID  Range from(1, 64)
        --ch CH          BBoxLite Range from(1, 4), BBoxOne Range from(1, 16)
        --sw SW          0 - Channel ON, 1 - Channel OFF
        --db DB          Dynamic range from(minimum_gain, maximum_gain)
        --deg DEG        Range from(0, 355)
        ```