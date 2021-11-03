﻿# Get-WinEvent -LogName Microsoft-Windows-Sysmon/Operational | where {(($_.ID -eq "1") -and ($_.message -match "ParentImage.*.*\\System32\\control.exe" -and $_.message -match "Image.*.*\\rundll32.exe ") -and  -not ($_.message -match "CommandLine.*.*Shell32.dll")) } | select TimeCreated,Id,RecordId,ProcessId,MachineName,Message

function Add-Rule {

    $ruleName = "win_susp_control_dll_load";
    $detectRule = {
        
        function Search-DetectableEvents {
            param (
                $event
            )
            
            $ruleName = "win_susp_control_dll_load";
            $detectedMessage = "Detects suspicious Rundll32 execution from control.exe as used by Equation Group and Exploit Kits";
            $result = $event |  where { (($_.ID -eq "1") -and ($_.message -match "ParentImage.*.*\\System32\\control.exe" -and $_.message -match "Image.*.*\\rundll32.exe ") -and -not ($_.message -match "CommandLine.*.*Shell32.dll")) } | select TimeCreated, Id, RecordId, ProcessId, MachineName, Message;
            if ($result -and $result.Count -ne 0) {
                Write-Output ""; 
                Write-Output "Detected! RuleName:$ruleName";
                Write-Output $detectedMessage;
                Write-Output $result;
                Write-Output ""; 
            }
        };
        . Search-DetectableEvents $args;
    };
    if(! $ruleStack[$ruleName]) {
        $ruleStack.Add($ruleName, $detectRule);
    } else {
       Write-Host "Rule Import Error"  -Foreground Yellow;
    }
}
