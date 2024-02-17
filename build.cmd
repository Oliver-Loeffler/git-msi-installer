del *.bak
del *.wixobj
del *.wixpdb


candle -ext WixUtilExtension.dll -dpackageSource="PortableGit" main.wxs bundle.wxs
light -ext WixUIExtension -ext WixUtilExtension.dll bundle.wixobj main.wixobj -out Git-for-Windows-2.43-Custom.msi