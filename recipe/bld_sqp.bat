@echo off

cmake -GNinja ^
  -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_BUILD_TYPE:STRING=Release ^
  -DBUILD_SHARED_LIBS=ON ^
  -DUSE_MSVC_RUNTIME_LIBRARY_DLL=ON ^
  -S src\trajopt_optimizers\trajopt_sqp ^
  -B build_sqp_dir
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build build_sqp_dir --config Release -- -j 1
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build build_sqp_dir --config Release --target install
if %errorlevel% neq 0 exit /b %errorlevel%
