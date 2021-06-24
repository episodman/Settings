#!/bin/bash
pushd ${BUILD_BUILD_DIR}
/tools/set-run-test-env.sh
. oe-init-build-env

# Set '/work' directory as a module's source directory
# For umi
MODULE_NAME=umi-pro
BUILD_MODULE_NAME=umi


# for audiod
#MODULE_NAME=audiod-pro
#BUILD_MODULE_NAME=audiod

# Make webos-local.conf
echo INHERIT += \"externalsrc\" > webos-local.conf
echo EXTERNALSRC_pn-$BUILD_MODULE_NAME = \"/work/$MODULE_NAME\" >> webos-local.conf
echo PR_append_pn-$BUILD_MODULE_NAME = \".local0\" >> webos-local.conf
#echo EXTRA_OECMAKE += \"-DCOVERAGE_TEST=FALSE\" >> webos-local.conf
# ASAN
echo INHERIT += \"starfish_debug_sanitizer\" >> webos-local.conf
echo STARFISH_DEBUG_SANITIZERS_pn-$BUILD_MODULE_NAME = \"address\" >> webos-local.conf
echo STARFISH_SANITIZER_VERIFY_ASAN_LINK_ORDER_pn-$BUILD_MODULE_NAME = \"1\" >> webos-local.conf
echo STARFISH_SUPPORT_LICENSE_NOTICE_VERIFICATION_forcevariable = \"0\" >> webos-local.conf

# build
bitbake lib32-$BUILD_MODULE_NAME qemu-native

# run unittest
#for umi
export PATH=$PATH:$PWD/BUILD/sysroots-components/x86_64/qemu-native/usr/bin/
qemu-arm -L /work/$MODULE_NAME/oe-workdir/lib32-recipe-sysroot/ /work/$MODULE_NAME/oe-workdir/image/opt/webos/tests/$BUILD_MODULE_NAME/gtest_$BUILD_MODULE_NAME
#> /work/logs_gtest_umi

#export PATH=$PATH:$PWD/BUILD/sysroots-components/x86_64/qemu-native/usr/bin/
#qemu-arm -L /work/$MODULE_NAME/oe-workdir/lib32-recipe-sysroot/ /work/$MODULE_NAME/oe-workdir/audiod*/gtest_$BUILD_MODULE_NAME > /work/logs_gtest_audiod

#export PATH=$PATH:$PWD/BUILD/sysroots-components/x86_64/qemu-native/usr/bin/
#qemu-arm -L /work/$MODULE_NAME/oe-workdir/lib32-recipe-sysroot/ /work/$MODULE_NAME/oe-workdir/image/opt/webos/tests/$BUILD_MODULE_NAME/gtest_$BUILD_MODULE_NAME > /work/logs_gtest_audiod

RETURN_CODE=$?
sudo chown -R "root:root" /work
echo "INFO: Final exit code: ${RETURN_CODE}"
exit $RETURN_CODE
