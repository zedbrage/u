#!/bin/sh
export in_intf='enp0s98'
export out_intf='enp0s93'
iptables -t nat -A POSTROUTING -o $out_intf -j MASQUERADE
iptables -A FORWARD -i $in_intf -o $out_intf -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i $out_intf -o $in_intf -j ACCEPT
