#!/usr/bin/env sh

# get absolute path to bash script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"


function build_var_fonts {

	dsgnsp_file=$DIR/$1.designspace
	otf_file=$DIR/$1.otf
	ttf_file=$DIR/$1.ttf

	buildmasterotfs --mkot -omitMacNames,-omitDSIG -d $dsgnsp_file
	buildcff2vf --omit-mac-names --keep-glyph-names -d $dsgnsp_file

	# fontTools.feaLib doesn't support 'vmtx' table, so TrueType
	# font must be build without 'vmtx' and 'vhea' FEA code
	fontmake -m $dsgnsp_file -o variable --output-path $ttf_file

	# copy STAT, vmtx, vhea, VVAR, name tables from OTF to TTF
	sfntedit -x STAT=.tb_STAT,vmtx=.tb_vmtx,vhea=.tb_vhea,VVAR=.tb_VVAR,name=.tb_name $otf_file
	sfntedit -a STAT=.tb_STAT,vmtx=.tb_vmtx,vhea=.tb_vhea,VVAR=.tb_VVAR,name=.tb_name $ttf_file

	# delete build artifacts
	rm .tb_*
}


build_var_fonts WhiteOnBlack
build_var_fonts BlackOnWhite
