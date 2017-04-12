FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://brcmfmac43241b4-sdio.txt \
	    file://0001-Add-BXT-DMC-1.07-firmware.patch \
	    file://0002-linux-firmware-i915-GuC-firmware-for-Broxton-v8.7.patch \
	    file://RS9113_AP_BT_DUAL_MODE.rps \
	    file://RS9113_WLAN_QSPI.rps \
	    file://RS9113_WLAN_BT_DUAL_MODE.rps \
           "

do_patch() {
	cd ${S}
	# Binary patch must be patched in sequence
	git am ${WORKDIR}/0001-Add-BXT-DMC-1.07-firmware.patch
	git am ${WORKDIR}/0002-linux-firmware-i915-GuC-firmware-for-Broxton-v8.7.patch
}

do_install_append() {
        # Copy the NVRAM file required for Broadcom Wi-Fi card
        cp ${WORKDIR}/brcmfmac43241b4-sdio.txt ${D}/lib/firmware/brcm/
	cp ${WORKDIR}/RS9113_WLAN_BT_DUAL_MODE.rps ${D}/lib/firmware/
	cp ${WORKDIR}/RS9113_AP_BT_DUAL_MODE.rps ${D}/lib/firmware/
	cp ${WORKDIR}/RS9113_WLAN_QSPI.rps ${D}/lib/firmware/
}
