FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://apollolake-standard.scc \
            file://0001-net-bluetooth-make-bluetooth-socket-can-be-created-i.patch \
	    file://0001-mwifiex-remove-USB8897-chipset-support.patch \
	    file://0001-mwifiex-allow-using-network-namespaces.patch \
	    file://0001-integrity-define-.evm-as-a-builtin-trusted-keyring.patch \
	    file://0001-net-qmi_wwan-support-raw-IP-mode.patch \
	    file://0002-net-qmi_wwan-should-hold-RTNL-while-changing-netdev-.patch \
	    file://0003-net-qmi_wwan-ignore-bogus-CDC-Union-descriptors.patch \
	    file://0004-net-qmi_wwan-MDM9x30-specific-power-management.patch \
	    file://0005-usbnet-allow-mini-drivers-to-consume-L2-headers.patch \
	    file://0006-net-qmi_wwan-document-the-qmi-raw_ip-sysfs-file.patch \
	    file://0007-MAINTAINERS-add-qmi_wwan-driver-entry.patch \
	   "
