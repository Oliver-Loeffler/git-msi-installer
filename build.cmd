del *.bak
del *.wixobj
del *.wixpdb


candle -ext WixUtilExtension.dll bundle2.wxs main.wxs
light -ext WixUIExtension -ext WixUtilExtension.dll bundle2.wixobj main.wixobj -out Git-for-Windows-2.43-Custom.msi