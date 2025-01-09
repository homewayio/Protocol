del /S /Q cs\*
mkdir cs
pushd cs
..\flatc_build\flatc.exe --csharp ..\HomewayProtocol.fbs
..\flatc_build\flatc.exe --csharp ..\SageProtocol.fbs
del /S /Q ..\..\Homeway.Service\Homeway\Clients\Proto\*
xcopy .\homeway\Proto\ ..\..\Homeway.Service\Homeway\Clients\Proto\ /E/H
popd

del /S /Q py\*
mkdir py
pushd py
..\flatc_build\flatc.exe --python-typing --python ..\HomewayProtocol.fbs
..\flatc_build\flatc.exe --python-typing --python ..\SageProtocol.fbs
del /S /Q ..\..\Homeway.Addon\homeway\homeway\Proto
xcopy .\homeway\Proto\ ..\..\Homeway.Addon\homeway\homeway\Proto\ /E/H
popd