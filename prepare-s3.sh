#!/bin/bash
set -e # exit with nonzero exit code if anything fails

OUTPUT_DIR=s3-source
# clear and re-create the out directory
rm -rf out || exit 0;
mkdir ${OUTPUT_DIR}

# copy the tar
echo "Current dir is ${PWD}"
ls target
cp target/*jar ./${OUTPUT_DIR}/.

ls ${OUTPUT_DIR}
