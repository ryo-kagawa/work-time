IF "%1" == "START"  GOTO START
IF "%1" == "STOP"   GOTO STOP
GOTO EOF

:START
SET DT_START=%DATE% %TIME: =0%
ECHO �J�n�����F%DT_START%
GOTO EOF

:STOP
SET DT_END=%DATE% %TIME: =0%
ECHO �I�������F%DT_END%
FOR /F "usebackq" %%i IN (`PowerShell -COMMAND return ^([DateTime]"""%DT_END%""" - [DateTime]"""%DT_START%"""^).TotalMilliseconds`) DO SET VALUE=%%i

ECHO �o�߃~���b�F%VALUE%
:EOF
