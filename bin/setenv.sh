#!/bin/sh
########################################################################
#
# Common Environment for MetalServer
#
########################################################################



########################################################################
#
#  Common environment
#

# 指定各个Server的port
GateServer_Port=10021; export GateServer_Port
GameServer_Port=10022; export GameServer_Port
DBServer_Port=10023; export DBServer_Port
CommunicationServer_Port=10024; export CommunicationServer_Port
BillingServer_Port=10025; export BillingServer_Port
DCServer_Port=10026; export DCServer_Port
