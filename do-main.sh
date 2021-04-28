#! /bin/bash
branch="lynx"
BuilderKernel="gcc"

if [ "$BuilderKernel" != "proton" ] && [ "$BuilderKernel" != "dtc" ] && [ "$BuilderKernel" != "gcc" ] && [ "$BuilderKernel" != "storm" ] && [ "$BuilderKernel" != "strix" ] && [ "$BuilderKernel" != "yuki" ] ;then
    exit;
fi
. main.sh 'initial' 'full'

FolderUp="BrokenNucleus"
TypeBuild="RELEASE"
if [ "$branch" = "lynx-eas" ];then
TypeBuildTag="EAS"
TypeScript="EAS Advanced Configuration"
spectrumFile="eas.rc"
else
TypeBuildTag="HMP"
TypeScript="Spectrum"
spectrumFile="ryuu.rc"
fi
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
