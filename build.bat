set PLUGIN_BUILD=out
if exist %PLUGIN_BUILD% (
   rmdir /S /Q %PLUGIN_BUILD%
)
mkdir %PLUGIN_BUILD%
pushd %PLUGIN_BUILD%
cmake -G "Visual Studio 14 2015 Win64" ..
cmake --build . --target ALL_BUILD 
popd