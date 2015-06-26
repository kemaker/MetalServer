#!/bin/sh
########################################################################
#
#  Show MetalServer aplist
#
########################################################################
. /MetalServer_2/bin/setenv.sh

#DBServer
DBServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "DBServer $DBServer_Port"`
DBServer_APID=`echo $DBServer_PSPID |sed 's/^.*\/bin\///g'`
DBServer_PID=`echo $DBServer_PSPID | awk 'BEGIN{FS=" "}{print $1}'`

if [ "${DBServer_APID}" == "" ]; then
	DBServer_PID=-1
fi
echo "-----------------------------------------"
echo "APPLICATION Name   :    DBServer $DBServer_Port"
echo "PROCESS ID         :    "$DBServer_PID
echo "-----------------------------------------"

#GameServer
GameServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "GameServer $GameServer_Port"`
GameServer_APID=`echo $GameServer_PSPID |sed 's/^.*\/bin\///g'`
GameServer_PID=`echo $GameServer_PSPID | awk 'BEGIN{FS=" "}{print $1}'`

if [ "${GameServer_APID}" == "" ]; then
	GameServer_PID=-1
fi
echo "APPLICATION Name   :    GameServer $GameServer_Port"
echo "PROCESS ID         :    "$GameServer_PID
echo "-----------------------------------------"

#CommunicationServer
CommunicationServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "CommunicationServer $CommunicationServer_Port"`
CommunicationServer_APID=`echo $CommunicationServer_PSPID |sed 's/^.*\/bin\///g'`
CommunicationServer_PID=`echo $CommunicationServer_PSPID | awk 'BEGIN{FS=" "}{print $1}'`

if [ "${CommunicationServer_APID}" == "" ]; then
	CommunicationServer_PID=-1
fi
echo "APPLICATION Name   :    CommunicationServer $CommunicationServer_Port"
echo "PROCESS ID         :    "$CommunicationServer_PID
echo "-----------------------------------------"

#DatacenterServer
DatacenterServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "DatacenterServer $DCServer_Port"`
DatacenterServer_APID=`echo $DatacenterServer_PSPID |sed 's/^.*\/bin\///g'`
DatacenterServer_PID=`echo $DatacenterServer_PSPID | awk 'BEGIN{FS=" "}{print $1}'`

if [ "${DatacenterServer_APID}" == "" ]; then
	DatacenterServer_PID=-1
fi
echo "APPLICATION Name   :    DatacenterServer $DCServer_Port"
echo "PROCESS ID         :    "$DatacenterServer_PID
echo "-----------------------------------------"

#BillingServer
BillingServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "BillingServer $BillingServer_Port"`
BillingServer_APID=`echo $BillingServer_PSPID |sed 's/^.*\/bin\///g'`
BillingServer_PID=`echo $BillingServer_PSPID | awk 'BEGIN{FS=" "}{print $1}'`

if [ "${BillingServer_APID}" == "" ]; then
	BillingServer_PID=-1
fi
echo "APPLICATION Name   :    BillingServer $BillingServer_Port"
echo "PROCESS ID         :    "$BillingServer_PID
echo "-----------------------------------------"

#GateServer
GateServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "GateServer $GateServer_Port"`
GateServer_APID=`echo $GateServer_PSPID |sed 's/^.*\/bin\///g'`
GateServer_PID=`echo $GateServer_PSPID | awk 'BEGIN{FS=" "}{print $1}'`

if [ "${GateServer_APID}" == "" ]; then
	GateServer_PID=-1
fi
echo "APPLICATION Name   :    GateServer $GateServer_Port"
echo "PROCESS ID         :    "$GateServer_PID
echo "-----------------------------------------"


