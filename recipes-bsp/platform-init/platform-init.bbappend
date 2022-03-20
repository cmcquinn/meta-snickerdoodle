# This recipe appends the Xilinx platform-init recipe to use krtkl's snickerdoodle sources

COMPATIBLE_MACHINE_snickerdoodle = "snickerdoodle"
COMPATIBLE_MACHINE_snickerdoodle-black = "snickerdoodle-black"
FILESEXTRAPATHS_prepend := "${THISDIR}/platform-init:"

do_install_append() {
    install -m 06444 ${THISDIR}/files/snickerdoodle/ps7_init_gpl.c ${D}${PLATFORM_INIT_DIR}/
    install -m 06444 ${THISDIR}/files/snickerdoodle/ps7_init_gpl.h ${D}${PLATFORM_INIT_DIR}/
    install -m 06444 ${THISDIR}/files/snickerdoodle-black/ps7_init_gpl.c ${D}${PLATFORM_INIT_DIR}/
    install -m 06444 ${THISDIR}/files/snickerdoodle-black/ps7_init_gpl.h ${D}${PLATFORM_INIT_DIR}/
}