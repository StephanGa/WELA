﻿# Get-WinEvent -LogName Microsoft-Windows-Sysmon/Operational | where {($_.ID -eq "1" -and ($_.message -match "CommandLine.*.*shutdown /r /f /t 00" -or $_.message -match "CommandLine.*.*net stop SuperBackupMan")) } | select TimeCreated,Id,RecordId,ProcessId,MachineName,Message

function Add-Rule {

    $ruleName = "win_crime_snatch_ransomware";
    $detectRule = {
        
        function Search-DetectableEvents {
            param (
                $event
            )
            
            $ruleName = "win_crime_snatch_ransomware";
            $detectedMessage = "Detects specific process characteristics of Snatch ransomware word document droppers";
            $result = $event | where { ($_.ID -eq "1" -and ($_.message -match "CommandLine.*.*shutdown /r /f /t 00" -or $_.message -match "CommandLine.*.*net stop SuperBackupMan")) } | select TimeCreated, Id, RecordId, ProcessId, MachineName, Message;
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
