@echo off
For /F "tokens=1* delims==" %%A IN (agent_pid.conf) DO (
    IF "%%A"=="agent.pid" set Agent_Pid=%%B
)
taskkill /pid %Agent_Pid% /f