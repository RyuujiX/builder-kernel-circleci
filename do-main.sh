#! /bin/bash
branch="lynx"
BuilderKernel="mystic"

if [ "$BuilderKernel" != "clang" ] && [ "$BuilderKernel" != "dtc" ] && [ "$BuilderKernel" != "gcc" ] && [ "$BuilderKernel" != "storm" ] && [ "$BuilderKernel" != "mystic" ] ;then
    exit;
fi
. main.sh 'initial' 'full'

FolderUp="BrokenNucleus"
spectrumFile="ryuu.rc"
TypeBuild="Stable"
TypeBuildTag="Awokawok"
getInfo ">> Building kernel . . . . <<"

CompileKernel
# CompileKernel "65"
# CompileKernel "68"
# CompileKernel "71"
# CompileKernel "72"

FixPieWifi

CompileKernel
# CompileKernel "65"
# CompileKernel "68"
# CompileKernel "71"
# CompileKernel "72"

tg_send_info "All $Compiler for $KName build is finished :v"