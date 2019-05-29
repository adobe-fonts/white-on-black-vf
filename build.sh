#!/usr/bin/env sh

# get absolute path to bash script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Build White On Black

dsgnsp_file=$DIR/WhiteOnBlack.designspace
otf_file=$DIR/WhiteOnBlack.otf
ttf_file=$DIR/WhiteOnBlack.ttf

buildmasterotfs --mkot -omitMacNames,-omitDSIG $dsgnsp_file
buildcff2vf --omit-mac-names --keep-glyph-names -d $dsgnsp_file

# fontTools.feaLib doesn't support 'vmtx' table, so TrueType
# font must be build without 'vmtx' and 'vhea' FEA code
fontmake -m $dsgnsp_file -o variable --output-path $ttf_file

# copy STAT, vmtx, vhea, VVAR, name tables from OTF to TTF
sfntedit -x STAT=.tb_STAT,vmtx=.tb_vmtx,vhea=.tb_vhea,VVAR=.tb_VVAR,name=.tb_name $otf_file
sfntedit -a STAT=.tb_STAT,vmtx=.tb_vmtx,vhea=.tb_vhea,VVAR=.tb_VVAR,name=.tb_name $ttf_file

# delete build artifacts
rm .tb_*

# Build Black On White

dsgnsp_file=$DIR/BlackOnWhite.designspace
otf_file=$DIR/BlackOnWhite.otf
ttf_file=$DIR/BlackOnWhite.ttf

buildmasterotfs --mkot -omitMacNames,-omitDSIG $dsgnsp_file
buildcff2vf --omit-mac-names --keep-glyph-names -d $dsgnsp_file

# fontTools.feaLib doesn't support 'vmtx' table, so TrueType
# font must be build without 'vmtx' and 'vhea' FEA code
fontmake -m $dsgnsp_file -o variable --output-path $ttf_file

# copy STAT, vmtx, vhea, VVAR, name tables from OTF to TTF
sfntedit -x STAT=.tb_STAT,vmtx=.tb_vmtx,vhea=.tb_vhea,VVAR=.tb_VVAR,name=.tb_name $otf_file
sfntedit -a STAT=.tb_STAT,vmtx=.tb_vmtx,vhea=.tb_vhea,VVAR=.tb_VVAR,name=.tb_name $ttf_file

# delete build artifacts
rm .tb_*
