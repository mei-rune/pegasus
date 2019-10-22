@if "%root_dir%" EQU "" (
  @set root_dir=D:\developing\pegasus\debug
)

@if "%namespace%" EQU "" (
  @set namespace=D:\developing\pegasus\debug
)



%~dp0debug\bin\cimmofl.exe -R%root_dir% -Nrepository -aE -ID:\hw_issues\cim_mofs -n %namespace%  D:\hw_issues\cim_mofs\cim_schema_2.34.0.mof

%~dp0debug\bin\cimmofl.exe -R%root_dir% -Nrepository -aE -ID:\hw_issues\cim_mofs\SNIA -n %namespace%  D:\hw_issues\cim_mofs\SNIA.mof