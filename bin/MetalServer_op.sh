#!/bin/sh
########################################################################
#
#  Start all processes
#
#  argument - $1(mandatory) : command type (start|stop)
########################################################################

. /MetalServer_2/bin/setenv.sh

#停止MetalServer
stop(){
    echo "Stop MetalServer."

    #取得DBServer的pid
    DBServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "DBServer $DBServer_Port"`
    DBServer_PID=`echo $DBServer_PSPID | awk 'BEGIN{FS=" "}{print $1}'`

    #取得GameServer的pid
    GameServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "GameServer $GameServer_Port"`
    GameServer_PID=`echo $GameServer_PSPID | awk 'BEGIN{FS=" "}{print $1}'`

    #取得CommunicationServer的pid
    CommunicationServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "CommunicationServer $CommunicationServer_Port"`
    CommunicationServer_PID=`echo $CommunicationServer_PSPID | awk 'BEGIN{FS=" "}{print $1}'`

    #取得DatacenterServer的pid
    DatacenterServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "DatacenterServer $DCServer_Port"`
    DatacenterServer_PID=`echo $DatacenterServer_PSPID | awk 'BEGIN{FS=" "}{print $1}'`

    #取得BillingServer的pid
    BillingServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "BillingServer $BillingServer_Port"`
    BillingServer_PID=`echo $BillingServer_PSPID | awk 'BEGIN{FS=" "}{print $1}'`

    #取得GateServer的pid
    GateServer_PSPID=`/bin/ps -u root -wwo pid,command | /bin/grep -v "grep" | /bin/grep "GateServer $GateServer_Port"`
    GateServer_PID=`echo $GateServer_PSPID | awk 'BEGIN{FS=" "}{print $1}'`
    kill $DBServer_PID $GameServer_PID $CommunicationServer_PID $DatacenterServer_PID $BillingServer_PID $GateServer_PID
    sleep 1

    rm -rf /MetalServer_2/bin/metalserver.lock

    echo "Stop MetalServer success."
}

# 检查各个Server启动状态
check_MetalServer(){
    #检查DBServer
	/bin/ps -u root -wwo pid,command | \
		/bin/grep -v grep | /bin/grep "DBServer $DBServer_Port"
	ret=$?
	if [ $ret -eq 0 ]; then
		return 1
	fi

    #检查GameServer
	/bin/ps -u root -wwo pid,command | \
		/bin/grep -v grep | /bin/grep "GameServer $GameServer_Port"
	ret=$?
	if [ $ret -eq 0 ]; then
		return 1
	fi

    #检查CommunicationServer
	/bin/ps -u root -wwo pid,command | \
		/bin/grep -v grep | /bin/grep "CommunicationServer $CommunicationServer_Port"
	ret=$?
	if [ $ret -eq 0 ]; then
		return 1
	fi

    #检查DatacenterServer
	/bin/ps -u root -wwo pid,command | \
		/bin/grep -v grep | /bin/grep "DatacenterServer $DCServer_Port"
	ret=$?
	if [ $ret -eq 0 ]; then
		return 1
	fi

    #检查BillingServer
	/bin/ps -u root -wwo pid,command | \
		/bin/grep -v grep | /bin/grep "BillingServer $BillingServer_Port"
	ret=$?
	if [ $ret -eq 0 ]; then
		return 1
	fi

    #检查GateServer
	/bin/ps -u root -wwo pid,command | \
		/bin/grep -v grep | /bin/grep "GateServer $GateServer_Port"
	ret=$?
	if [ $ret -eq 0 ]; then
		return 1
	fi

	return 0
}

# 启动
start(){
	echo "start MetalServer"

	sleep 1
	
    #检查是否已经启动着
	check_MetalServer
	if [ $? -eq 1 ]; then
		echo "MetalServer is Running."
        return
	fi

	# 开始启动
    cd /MetalServer_2/bin
    echo "start DBServer"
    ./DBServer $DBServer_Port > /dev/null 2>&1 &
    sleep 5

    echo "start GameServer"
    ./GameServer $GameServer_Port > /dev/null 2>&1 &
    sleep 5

    echo "start CommunicationServer"
    ./CommunicationServer $CommunicationServer_Port > /dev/null 2>&1 &
    sleep 5

    echo "start DatacenterServer"
    ./DatacenterServer $DCServer_Port > /dev/null 2>&1 &
    sleep 5

    echo "start BillingServer"
    ./BillingServer $BillingServer_Port > /dev/null 2>&1 &
    sleep 1

    echo "start GateServer"
    ./GateServer $GateServer_Port > /dev/null 2>&1 &
    sleep 1

    touch metalserver.lock

    echo "Start MetalServer success."
}

case "$1" in
  start)
	start all
	;;
  stop)
	stop all
	;;
  *)
	echo $"Usage: $0 {start|stop}"
	exit 1
esac

exit 0
