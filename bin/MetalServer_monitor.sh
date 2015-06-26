#!/bin/sh
########################################################################
#
#  Show MetalServer aplist
#
########################################################################

lockfile="/MetalServer_2/bin/metalserver.lock"
[ -e $lockfile ]
if [ $? -ne 0 ]; then
    exit 0;
fi

. /MetalServer_2/bin/setenv.sh

#DBServer
DBServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "DBServer $DBServer_Port"`
DBServer_APID=`echo $DBServer_PSPID |sed 's/^.*\/bin\///g'`

if [ "${DBServer_APID}" == "" ]; then
    /MetalServer_2/bin/MetalServer_op.sh stop
    /MetalServer_2/bin/MetalServer_op.sh start
    exit 0
fi

#GameServer
GameServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "GameServer $GameServer_Port"`
GameServer_APID=`echo $GameServer_PSPID |sed 's/^.*\/bin\///g'`

if [ "${GameServer_APID}" == "" ]; then
    /MetalServer_2/bin/MetalServer_op.sh stop
    /MetalServer_2/bin/MetalServer_op.sh start
    exit 0
fi

#CommunicationServer
CommunicationServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "CommunicationServer $CommunicationServer_Port"`
CommunicationServer_APID=`echo $CommunicationServer_PSPID |sed 's/^.*\/bin\///g'`

if [ "${CommunicationServer_APID}" == "" ]; then
    /MetalServer_2/bin/MetalServer_op.sh stop
    /MetalServer_2/bin/MetalServer_op.sh start
    exit 0
fi

#DatacenterServer
DatacenterServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "DatacenterServer $DCServer_Port"`
DatacenterServer_APID=`echo $DatacenterServer_PSPID |sed 's/^.*\/bin\///g'`

if [ "${DatacenterServer_APID}" == "" ]; then
    /MetalServer_2/bin/MetalServer_op.sh stop
    /MetalServer_2/bin/MetalServer_op.sh start
    exit 0
fi

#BillingServer
BillingServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "BillingServer $BillingServer_Port"`
BillingServer_APID=`echo $BillingServer_PSPID |sed 's/^.*\/bin\///g'`

if [ "${BillingServer_APID}" == "" ]; then
    /MetalServer_2/bin/MetalServer_op.sh stop
    /MetalServer_2/bin/MetalServer_op.sh start
    exit 0
fi

#GateServer
GateServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "GateServer $GateServer_Port"`
GateServer_APID=`echo $GateServer_PSPID |sed 's/^.*\/bin\///g'`

if [ "${GateServer_APID}" == "" ]; then
    /MetalServer_2/bin/MetalServer_op.sh stop
    /MetalServer_2/bin/MetalServer_op.sh start
    exit 0
fi
