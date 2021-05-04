#! /bin/bash
branch="lynx"
CODENAME="X01BD"
BuilderKernel="00000"

if [ "$BuilderKernel" != "proton" ] && [ "$BuilderKernel" != "dtc" ] && [ "$BuilderKernel" != "gcc" ] && [ "$BuilderKernel" != "storm" ] && [ "$BuilderKernel" != "strix" ] && [ "$BuilderKernel" != "yuki" ] && [ "$BuilderKernel" != "sdclang" ] ;then
    exit;
fi
if [ "$CODENAME" == "X00TD" ];then
	SOURCE=kernel-x00t
else
	SOURCE=kernel-x01bd
fi
. main.sh 'initial' 'full'

FolderUp="BrokenNucleus"
TypeBuild="RELEASE"
if [ "$branch" = "lynx-eas" ] || [ "$branch" = "skywalker-eas" ];then
TypeBuildTag="EAS"
TypeScript="EAS Advanced Configuration"
	if [ "$CODENAME" == "X00TD" ];then
	spectrumFile="eas-x00t.rc"
	else
	spectrumFile="eas.rc"
	fi
else
TypeBuildTag="HMP"
TypeScript="Spectrum"
	if [ "$CODENAME" == "X00TD" ];then
	spectrumFile="ryuu-x00t.rc"
	else
	spectrumFile="ryuu.rc"
	fi
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
