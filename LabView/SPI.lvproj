<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="19008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="FPGA Target" Type="FPGA Target">
			<Property Name="AutoRun" Type="Bool">false</Property>
			<Property Name="configString.guid" Type="Str">{113943C5-004D-4F96-8F46-397BB8C758FC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/GPS;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl{1B21A941-E366-432D-91EC-FA118FF8C8F6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 9;0;ReadMethodType=bool;WriteMethodType=bool{200F9FD0-787D-479E-863E-876B7FC5D987}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;WRITE;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{2C3FBCF3-8CC1-404D-8229-669A56F17C05}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 1\/TX1 RX1;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl{3266BE3C-EBDD-4EFE-8F6F-A5314CB5C369}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 0;0;ReadMethodType=bool;WriteMethodType=bool{334CE19B-8F02-4B29-93E3-B57BF6EAAF86}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 0\/RX2;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl{39A5099B-B286-489B-AAE7-87EE092B1F6D}Multiplier=3.000000;Divisor=1.000000{42EEFB8C-B7C9-40D0-A140-3DE5728C63EA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/LINK;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl{46B21535-02B5-4F95-BA32-A63805D49AD0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 4;0;ReadMethodType=bool;WriteMethodType=bool{4CE4C1DA-4F5F-44AD-A393-3033A13CB2BF}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 2;0;ReadMethodType=bool;WriteMethodType=bool{4DFB023A-BCF6-471E-BBB3-3FFE4FFECE9D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 7;0;ReadMethodType=bool;WriteMethodType=bool{5631735A-0E5F-4C22-993A-8B203AC0005B}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 1\/RX2;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl{57027796-CC71-4A9B-BDD4-B7902251C5FF}ResourceName=Data Clock;TopSignalConnect=RadioClk;ClockSignalName=RadioClk;MinFreq=120000000.000000;MaxFreq=120000000.000000;VariableFreq=0;NomFreq=120000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{5C0A7447-521D-43C0-AA86-75F581C94E83}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 1;0;ReadMethodType=bool;WriteMethodType=bool{6FC8A26D-5EEE-4303-A509-CD546E3C741C}Multiplier=2.000000;Divisor=1.000000{93FF3B7D-32C0-4461-BC4D-34DBAA67A818}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/PPS;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl{95988066-6647-4170-8A82-078340B3812F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 3;0;ReadMethodType=bool;WriteMethodType=bool{B5CDB54A-D0DE-47AC-BACF-469089344E96}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 8;0;ReadMethodType=bool;WriteMethodType=bool{B8699EC1-4DE7-4B18-B219-EC84CB0E11A7}ResourceName=Data Clock x2;TopSignalConnect=RadioClk2x;ClockSignalName=RadioClk2x;MinFreq=240000000.000000;MaxFreq=240000000.000000;VariableFreq=0;NomFreq=240000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{BD7BDBA6-C6BD-4DAC-AC40-DC66AE0C0C35}ResourceName=40 MHz Onboard Clock;TopSignalConnect=RioClk40;ClockSignalName=RioClk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{CD2FFC06-F505-48CB-A7DE-1A3BA3656B15}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 5;0;ReadMethodType=bool;WriteMethodType=bool{CD6176B9-C6D5-48B3-A93C-13AE993BDA21}ResourceName=Data Clock x3;TopSignalConnect=RadioClk3x;ClockSignalName=RadioClk3x;MinFreq=360000000.000000;MaxFreq=360000000.000000;VariableFreq=0;NomFreq=360000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{D3549495-BD62-4B9E-8BD4-509431421481}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 0\/TX1 RX1;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl{DCCA7B71-ECDE-4FFA-B2E0-4D5D7BE4EDF6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 11;0;ReadMethodType=bool;WriteMethodType=bool{F171B6C9-162A-4EE0-A0AC-D5B8C4743BBF}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/REF;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl{F71D1EB3-63C9-4ED9-AC57-485BFA68FC1B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 6;0;ReadMethodType=bool;WriteMethodType=bool{FE574D8B-15A5-41BB-9E72-39E941856FA7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 10;0;ReadMethodType=bool;WriteMethodType=boolUSRP 294xR; 295xR 120 MSps/RioClk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSUSRP_294XR__295XR_120_MSPSFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
			<Property Name="configString.name" Type="Str">120MHzMultiplier=3.000000;Divisor=1.00000040 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=RioClk40;ClockSignalName=RioClk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;80MHzMultiplier=2.000000;Divisor=1.000000AUX I/O 0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 0;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 10;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 11;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 1;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 2;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 3;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 4;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 5;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 6;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 7;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 8;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 9;0;ReadMethodType=bool;WriteMethodType=boolData Clock x2ResourceName=Data Clock x2;TopSignalConnect=RadioClk2x;ClockSignalName=RadioClk2x;MinFreq=240000000.000000;MaxFreq=240000000.000000;VariableFreq=0;NomFreq=240000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Data Clock x3ResourceName=Data Clock x3;TopSignalConnect=RadioClk3x;ClockSignalName=RadioClk3x;MinFreq=360000000.000000;MaxFreq=360000000.000000;VariableFreq=0;NomFreq=360000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Data ClockResourceName=Data Clock;TopSignalConnect=RadioClk;ClockSignalName=RadioClk;MinFreq=120000000.000000;MaxFreq=120000000.000000;VariableFreq=0;NomFreq=120000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;LED/GPSArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/GPS;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctlLED/LINKArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/LINK;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctlLED/PPSArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/PPS;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctlLED/REFArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/REF;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctlLED/RF 0/RX2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 0\/RX2;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctlLED/RF 0/TX1 RX1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 0\/TX1 RX1;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctlLED/RF 1/RX2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 1\/RX2;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctlLED/RF 1/TX1 RX1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 1\/TX1 RX1;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctlUSRP 294xR; 295xR 120 MSps/RioClk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSUSRP_294XR__295XR_120_MSPSFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]WRITE"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;WRITE;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
			<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">USRP 294xR; 295xR 120 MSps/RioClk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSUSRP_294XR__295XR_120_MSPSFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA</Property>
			<Property Name="NI.LV.FPGA.Version" Type="Int">6</Property>
			<Property Name="Resource Name" Type="Str">RIO0</Property>
			<Property Name="Target Class" Type="Str">USRP 294xR; 295xR 120 MSps</Property>
			<Property Name="Top-Level Timing Source" Type="Str">40 MHz Onboard Clock</Property>
			<Property Name="Top-Level Timing Source Is Default" Type="Bool">true</Property>
			<Item Name="AUX I/O" Type="Folder">
				<Item Name="AUX I/O 0" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/AUX I\/O/AUX I\/O 0</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{3266BE3C-EBDD-4EFE-8F6F-A5314CB5C369}</Property>
				</Item>
				<Item Name="AUX I/O 1" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/AUX I\/O/AUX I\/O 1</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{5C0A7447-521D-43C0-AA86-75F581C94E83}</Property>
				</Item>
				<Item Name="AUX I/O 2" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/AUX I\/O/AUX I\/O 2</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{4CE4C1DA-4F5F-44AD-A393-3033A13CB2BF}</Property>
				</Item>
				<Item Name="AUX I/O 3" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/AUX I\/O/AUX I\/O 3</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{95988066-6647-4170-8A82-078340B3812F}</Property>
				</Item>
				<Item Name="AUX I/O 4" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/AUX I\/O/AUX I\/O 4</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{46B21535-02B5-4F95-BA32-A63805D49AD0}</Property>
				</Item>
				<Item Name="AUX I/O 5" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/AUX I\/O/AUX I\/O 5</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{CD2FFC06-F505-48CB-A7DE-1A3BA3656B15}</Property>
				</Item>
				<Item Name="AUX I/O 6" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/AUX I\/O/AUX I\/O 6</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{F71D1EB3-63C9-4ED9-AC57-485BFA68FC1B}</Property>
				</Item>
				<Item Name="AUX I/O 7" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/AUX I\/O/AUX I\/O 7</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{4DFB023A-BCF6-471E-BBB3-3FFE4FFECE9D}</Property>
				</Item>
				<Item Name="AUX I/O 8" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/AUX I\/O/AUX I\/O 8</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{B5CDB54A-D0DE-47AC-BACF-469089344E96}</Property>
				</Item>
				<Item Name="AUX I/O 9" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/AUX I\/O/AUX I\/O 9</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{1B21A941-E366-432D-91EC-FA118FF8C8F6}</Property>
				</Item>
				<Item Name="AUX I/O 10" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/AUX I\/O/AUX I\/O 10</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{FE574D8B-15A5-41BB-9E72-39E941856FA7}</Property>
				</Item>
				<Item Name="AUX I/O 11" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/AUX I\/O/AUX I\/O 11</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{DCCA7B71-ECDE-4FFA-B2E0-4D5D7BE4EDF6}</Property>
				</Item>
			</Item>
			<Item Name="LEDs" Type="Folder">
				<Item Name="LED/GPS" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/LEDs/LED\/GPS</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{113943C5-004D-4F96-8F46-397BB8C758FC}</Property>
				</Item>
				<Item Name="LED/LINK" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/LEDs/LED\/LINK</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{42EEFB8C-B7C9-40D0-A140-3DE5728C63EA}</Property>
				</Item>
				<Item Name="LED/PPS" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/LEDs/LED\/PPS</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{93FF3B7D-32C0-4461-BC4D-34DBAA67A818}</Property>
				</Item>
				<Item Name="LED/REF" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/LEDs/LED\/REF</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{F171B6C9-162A-4EE0-A0AC-D5B8C4743BBF}</Property>
				</Item>
				<Item Name="LED/RF 0/RX2" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/LEDs/LED\/RF 0\/RX2</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{334CE19B-8F02-4B29-93E3-B57BF6EAAF86}</Property>
				</Item>
				<Item Name="LED/RF 0/TX1 RX1" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/LEDs/LED\/RF 0\/TX1 RX1</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{D3549495-BD62-4B9E-8BD4-509431421481}</Property>
				</Item>
				<Item Name="LED/RF 1/RX2" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/LEDs/LED\/RF 1\/RX2</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{5631735A-0E5F-4C22-993A-8B203AC0005B}</Property>
				</Item>
				<Item Name="LED/RF 1/TX1 RX1" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/LEDs/LED\/RF 1\/TX1 RX1</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{2C3FBCF3-8CC1-404D-8229-669A56F17C05}</Property>
				</Item>
			</Item>
			<Item Name="40 MHz Onboard Clock" Type="FPGA Base Clock">
				<Property Name="FPGA.PersistentID" Type="Str">{BD7BDBA6-C6BD-4DAC-AC40-DC66AE0C0C35}</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=40 MHz Onboard Clock;TopSignalConnect=RioClk40;ClockSignalName=RioClk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">RioClk40</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">40000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">40000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">40000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">40 MHz Onboard Clock</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">RioClk40</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
				<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				<Item Name="80MHz" Type="FPGA Derived Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{6FC8A26D-5EEE-4303-A509-CD546E3C741C}</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig" Type="Str">Multiplier=2.000000;Divisor=1.000000</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig.Divisor" Type="Dbl">1</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig.FromExternalClock" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig.Multiplier" Type="Dbl">2</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig.ParentFrequencyInHertz" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				</Item>
				<Item Name="120MHz" Type="FPGA Derived Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{39A5099B-B286-489B-AAE7-87EE092B1F6D}</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig" Type="Str">Multiplier=3.000000;Divisor=1.000000</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig.Divisor" Type="Dbl">1</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig.FromExternalClock" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig.Multiplier" Type="Dbl">3</Property>
					<Property Name="NI.LV.FPGA.DerivedConfig.ParentFrequencyInHertz" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				</Item>
			</Item>
			<Item Name="Data Clock" Type="FPGA Base Clock">
				<Property Name="FPGA.PersistentID" Type="Str">{57027796-CC71-4A9B-BDD4-B7902251C5FF}</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=Data Clock;TopSignalConnect=RadioClk;ClockSignalName=RadioClk;MinFreq=120000000.000000;MaxFreq=120000000.000000;VariableFreq=0;NomFreq=120000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">RadioClk</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">120000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">120000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">120000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">Data Clock</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">RadioClk</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
				<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
			</Item>
			<Item Name="Data Clock x2" Type="FPGA Base Clock">
				<Property Name="FPGA.PersistentID" Type="Str">{B8699EC1-4DE7-4B18-B219-EC84CB0E11A7}</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=Data Clock x2;TopSignalConnect=RadioClk2x;ClockSignalName=RadioClk2x;MinFreq=240000000.000000;MaxFreq=240000000.000000;VariableFreq=0;NomFreq=240000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">RadioClk2x</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">240000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">240000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">240000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">Data Clock x2</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">RadioClk2x</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
				<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
			</Item>
			<Item Name="Data Clock x3" Type="FPGA Base Clock">
				<Property Name="FPGA.PersistentID" Type="Str">{CD6176B9-C6D5-48B3-A93C-13AE993BDA21}</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=Data Clock x3;TopSignalConnect=RadioClk3x;ClockSignalName=RadioClk3x;MinFreq=360000000.000000;MaxFreq=360000000.000000;VariableFreq=0;NomFreq=360000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">RadioClk3x</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">360000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">360000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">360000000</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">Data Clock x3</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">RadioClk3x</Property>
				<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
				<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
			</Item>
			<Item Name="IP Builder" Type="IP Builder Target">
				<Item Name="Dependencies" Type="Dependencies"/>
				<Item Name="Build Specifications" Type="Build"/>
			</Item>
			<Item Name="MGT Socket" Type="FPGA Component Level IP">
				<Property Name="NI.LV.CLIP.DeclarationCategory" Type="Str"></Property>
				<Property Name="NI.LV.CLIP.SocketedCLIP" Type="Bool">true</Property>
				<Property Name="NI.LV.CLIP.SocketSelection" Type="Str">MGT Socket</Property>
				<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
				<Property Name="NI.SortType" Type="Int">3</Property>
			</Item>
			<Item Name="TMYTEK_FPGA_Ctrl.vi" Type="VI" URL="../FPGA/TMYTEK_FPGA_Ctrl.vi">
				<Property Name="configString.guid" Type="Str">{113943C5-004D-4F96-8F46-397BB8C758FC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/GPS;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl{1B21A941-E366-432D-91EC-FA118FF8C8F6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 9;0;ReadMethodType=bool;WriteMethodType=bool{200F9FD0-787D-479E-863E-876B7FC5D987}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;WRITE;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{2C3FBCF3-8CC1-404D-8229-669A56F17C05}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 1\/TX1 RX1;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl{3266BE3C-EBDD-4EFE-8F6F-A5314CB5C369}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 0;0;ReadMethodType=bool;WriteMethodType=bool{334CE19B-8F02-4B29-93E3-B57BF6EAAF86}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 0\/RX2;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl{39A5099B-B286-489B-AAE7-87EE092B1F6D}Multiplier=3.000000;Divisor=1.000000{42EEFB8C-B7C9-40D0-A140-3DE5728C63EA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/LINK;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl{46B21535-02B5-4F95-BA32-A63805D49AD0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 4;0;ReadMethodType=bool;WriteMethodType=bool{4CE4C1DA-4F5F-44AD-A393-3033A13CB2BF}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 2;0;ReadMethodType=bool;WriteMethodType=bool{4DFB023A-BCF6-471E-BBB3-3FFE4FFECE9D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 7;0;ReadMethodType=bool;WriteMethodType=bool{5631735A-0E5F-4C22-993A-8B203AC0005B}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 1\/RX2;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl{57027796-CC71-4A9B-BDD4-B7902251C5FF}ResourceName=Data Clock;TopSignalConnect=RadioClk;ClockSignalName=RadioClk;MinFreq=120000000.000000;MaxFreq=120000000.000000;VariableFreq=0;NomFreq=120000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{5C0A7447-521D-43C0-AA86-75F581C94E83}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 1;0;ReadMethodType=bool;WriteMethodType=bool{6FC8A26D-5EEE-4303-A509-CD546E3C741C}Multiplier=2.000000;Divisor=1.000000{93FF3B7D-32C0-4461-BC4D-34DBAA67A818}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/PPS;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl{95988066-6647-4170-8A82-078340B3812F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 3;0;ReadMethodType=bool;WriteMethodType=bool{B5CDB54A-D0DE-47AC-BACF-469089344E96}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 8;0;ReadMethodType=bool;WriteMethodType=bool{B8699EC1-4DE7-4B18-B219-EC84CB0E11A7}ResourceName=Data Clock x2;TopSignalConnect=RadioClk2x;ClockSignalName=RadioClk2x;MinFreq=240000000.000000;MaxFreq=240000000.000000;VariableFreq=0;NomFreq=240000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{BD7BDBA6-C6BD-4DAC-AC40-DC66AE0C0C35}ResourceName=40 MHz Onboard Clock;TopSignalConnect=RioClk40;ClockSignalName=RioClk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{CD2FFC06-F505-48CB-A7DE-1A3BA3656B15}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 5;0;ReadMethodType=bool;WriteMethodType=bool{CD6176B9-C6D5-48B3-A93C-13AE993BDA21}ResourceName=Data Clock x3;TopSignalConnect=RadioClk3x;ClockSignalName=RadioClk3x;MinFreq=360000000.000000;MaxFreq=360000000.000000;VariableFreq=0;NomFreq=360000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{D3549495-BD62-4B9E-8BD4-509431421481}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 0\/TX1 RX1;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl{DCCA7B71-ECDE-4FFA-B2E0-4D5D7BE4EDF6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 11;0;ReadMethodType=bool;WriteMethodType=bool{F171B6C9-162A-4EE0-A0AC-D5B8C4743BBF}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/REF;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl{F71D1EB3-63C9-4ED9-AC57-485BFA68FC1B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 6;0;ReadMethodType=bool;WriteMethodType=bool{FE574D8B-15A5-41BB-9E72-39E941856FA7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 10;0;ReadMethodType=bool;WriteMethodType=boolUSRP 294xR; 295xR 120 MSps/RioClk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSUSRP_294XR__295XR_120_MSPSFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
				<Property Name="configString.name" Type="Str">120MHzMultiplier=3.000000;Divisor=1.00000040 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=RioClk40;ClockSignalName=RioClk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;80MHzMultiplier=2.000000;Divisor=1.000000AUX I/O 0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 0;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 10;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 11;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 1;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 2;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 3;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 4;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 5;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 6;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 7;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 8;0;ReadMethodType=bool;WriteMethodType=boolAUX I/O 9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/AUX I\/O/AUX I\/O 9;0;ReadMethodType=bool;WriteMethodType=boolData Clock x2ResourceName=Data Clock x2;TopSignalConnect=RadioClk2x;ClockSignalName=RadioClk2x;MinFreq=240000000.000000;MaxFreq=240000000.000000;VariableFreq=0;NomFreq=240000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Data Clock x3ResourceName=Data Clock x3;TopSignalConnect=RadioClk3x;ClockSignalName=RadioClk3x;MinFreq=360000000.000000;MaxFreq=360000000.000000;VariableFreq=0;NomFreq=360000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Data ClockResourceName=Data Clock;TopSignalConnect=RadioClk;ClockSignalName=RadioClk;MinFreq=120000000.000000;MaxFreq=120000000.000000;VariableFreq=0;NomFreq=120000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;LED/GPSArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/GPS;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctlLED/LINKArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/LINK;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctlLED/PPSArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/PPS;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctlLED/REFArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/REF;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctlLED/RF 0/RX2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 0\/RX2;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctlLED/RF 0/TX1 RX1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 0\/TX1 RX1;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctlLED/RF 1/RX2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 1\/RX2;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_Green.ctlLED/RF 1/TX1 RX1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LEDs/LED\/RF 1\/TX1 RX1;0;ReadMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctl;WriteMethodType=Targets\NI\FPGA\USRP\Common\niUsrpRio_Led_State_GreenRed.ctlUSRP 294xR; 295xR 120 MSps/RioClk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSUSRP_294XR__295XR_120_MSPSFPGA_TARGET_FAMILYKINTEX7TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]WRITE"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;WRITE;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
				<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\Users\USRP2\Desktop\SPI\20211130\FPGA Bitfiles\spi_FPGATarget_FPGAMain_AAR7OmfWQ-g.lvbitx</Property>
			</Item>
			<Item Name="USRPRIO-DRAMTypeB-Bank0" Type="FPGA Component Level IP">
				<Property Name="NI.LV.CLIP.DeclarationCategory" Type="Str"></Property>
				<Property Name="NI.LV.CLIP.SocketedCLIP" Type="Bool">true</Property>
				<Property Name="NI.LV.CLIP.SocketSelection" Type="Str">USRPRIO-DRAMTypeB-Bank0</Property>
				<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
				<Property Name="NI.SortType" Type="Int">3</Property>
			</Item>
			<Item Name="WRITE" Type="FPGA FIFO">
				<Property Name="Actual Number of Elements" Type="UInt">1029</Property>
				<Property Name="Arbitration for Read" Type="UInt">1</Property>
				<Property Name="Arbitration for Write" Type="UInt">1</Property>
				<Property Name="Control Logic" Type="UInt">0</Property>
				<Property Name="Data Type" Type="UInt">7</Property>
				<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
				<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;WRITE;DataType=1000800000000001000940070003553332000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
				<Property Name="fifo.configured" Type="Bool">true</Property>
				<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
				<Property Name="fifo.valid" Type="Bool">true</Property>
				<Property Name="fifo.version" Type="Int">13</Property>
				<Property Name="FPGA.PersistentID" Type="Str">{200F9FD0-787D-479E-863E-876B7FC5D987}</Property>
				<Property Name="Local" Type="Bool">false</Property>
				<Property Name="Memory Type" Type="UInt">2</Property>
				<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
				<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
				<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
				<Property Name="Type" Type="UInt">1</Property>
				<Property Name="Type Descriptor" Type="Str">1000800000000001000940070003553332000100000000000000000000</Property>
			</Item>
			<Item Name="Dependencies" Type="Dependencies">
				<Item Name="vi.lib" Type="Folder">
					<Item Name="lvSimController.dll" Type="Document" URL="/&lt;vilib&gt;/rvi/Simulation/lvSimController.dll"/>
				</Item>
			</Item>
			<Item Name="Build Specifications" Type="Build">
				<Item Name="FPGA Main" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
					<Property Name="AllowEnableRemoval" Type="Bool">true</Property>
					<Property Name="BuildSpecDecription" Type="Str"></Property>
					<Property Name="BuildSpecName" Type="Str">FPGA Main</Property>
					<Property Name="Comp.BitfileName" Type="Str">spi_FPGATarget_FPGAMain_8sgA8TFzj3Q.lvbitx</Property>
					<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
					<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
					<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
					<Property Name="Comp.Version.Build" Type="Int">0</Property>
					<Property Name="Comp.Version.Fix" Type="Int">0</Property>
					<Property Name="Comp.Version.Major" Type="Int">1</Property>
					<Property Name="Comp.Version.Minor" Type="Int">0</Property>
					<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
					<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
					<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
					<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
					<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
					<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
					<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
					<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
					<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
					<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
					<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
					<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
					<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
					<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
					<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
					<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
					<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/USRP2/Desktop/SPI/20211130/FPGA Bitfiles/spi_FPGATarget_FPGAMain_AAR7OmfWQ-g.lvbitx</Property>
					<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/spi_FPGATarget_FPGAMain_AAR7OmfWQ-g.lvbitx</Property>
					<Property Name="ProjectPath" Type="Path">/C/Users/USRP2/Desktop/SPI/SPI.lvproj</Property>
					<Property Name="RelativePath" Type="Bool">true</Property>
					<Property Name="RunWhenLoaded" Type="Bool">false</Property>
					<Property Name="SupportDownload" Type="Bool">true</Property>
					<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
					<Property Name="TargetName" Type="Str">FPGA Target</Property>
					<Property Name="TopLevelVI" Type="Ref">/My Computer/FPGA Target/TMYTEK_FPGA_Ctrl.vi</Property>
				</Item>
			</Item>
		</Item>
		<Item Name="Call Python.vi" Type="VI" URL="../FPGA Bitfiles/Call Python.vi"/>
		<Item Name="TMYTEK_BBox_Ctrl.vi" Type="VI" URL="../TMYTEK_BBox_Ctrl.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
			</Item>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="TMYTEK_BBox_Ctrl" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{1C64F0F9-F29E-4ED5-96AA-0F58D7E24309}</Property>
				<Property Name="App_INI_GUID" Type="Str">{3441F36C-EDC6-4EDD-8606-27A1E9506E6C}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.TMYTEK.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{55073187-32AA-4725-B4AC-A1833CD3085F}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">TMYTEK_BBox_Ctrl</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/TMYTEK_BBox_Ctrl</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{30303ABB-48AD-4050-BF44-B9362CDD77E6}</Property>
				<Property Name="Bld_version.build" Type="Int">6</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">TMYTEK_BBox_Ctrl.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/TMYTEK_BBox_Ctrl/TMYTEK_BBox_Ctrl.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/TMYTEK_BBox_Ctrl/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{51B25F31-F144-480B-A653-4293774F555F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/TMYTEK_BBox_Ctrl.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">TMYTEK</Property>
				<Property Name="TgtF_fileDescription" Type="Str">TMYTEK_BBox_Ctrl</Property>
				<Property Name="TgtF_internalName" Type="Str">TMYTEK_BBox_Ctrl</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright ?2021 TMYTEK</Property>
				<Property Name="TgtF_productName" Type="Str">TMYTEK_BBox_Ctrl</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{2DC0DAF1-8254-4A69-83FC-5AA42DAD92DE}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">TMYTEK_BBox_Ctrl.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
