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
	    file://0001-mwifiex-enable-MSI-interrupt-support-in-pcie.patch \
	    file://0002-mwifiex-fix-interrupt-processing-corner-case-in-MSI-.patch \
	    file://0003-mwifiex-support-to-set-multichannel-policy-to-FW.patch \
	    file://0004-mwifiex-advertise-multichannel-support-to-cfg80211.patch \
	    file://0005-mwifiex-Change-from-mlan-to-wlan-for-default-interfa.patch \
	    file://0001-mwifiex-enable-pcie-MSIx-interrupt-mode-support.patch \
	    file://0001-The-patches-for-Redpine-RS9113DB-drivers.patch \
	    file://0001-rsi-Add-the-WIPHY_FLAG_NETNS_OK-flag-for-the-RSI-MAC.patch \
	    file://0001-Upgrade-the-Redpine-RS9113DB-drivers-to-RS9113.NB0.N.patch \
	    file://0001-staging-dgnc-fix-info-leak-in-ioctl.patch \
	    file://0002-netlink-Fix-dump-skb-leak-double-free.patch \
	    file://0003-kvm-nVMX-Allow-L1-to-intercept-software-exceptions-B.patch \
	    file://0004-vfio-pci-Fix-integer-overflows-bitmask-check.patch \
	    file://0005-ALSA-pcm-Call-kill_fasync-in-stream-lock.patch \
	    file://0006-mpi-Fix-NULL-ptr-dereference-in-mpi_powm-ver-3.patch \
	    file://0007-sg_write-bsg_write-is-not-fit-to-be-called-under-KER.patch \
	    file://0008-firewire-net-guard-against-rx-buffer-overflows.patch \
	    file://0009-sysctl-Drop-reference-added-by-grab_header-in-proc_s.patch \
	    file://0010-kvm-x86-Check-memopp-before-dereference-CVE-2016-863.patch \
	    file://0011-KVM-x86-drop-error-recovery-in-em_jmp_far-and-em_ret.patch \
	    file://0012-tipc-check-minimum-bearer-MTU.patch \
	    file://0013-mbcache2-reimplement-mbcache.patch \
	    file://0014-ext2-convert-to-mbcache2.patch \
	    file://0015-ext4-convert-to-mbcache2.patch \
	   "

KERNEL_MODULE_PROBECONF += "rsi_usb"
module_conf_rsi_usb = "options rsi_usb dev_oper_mode=14"
