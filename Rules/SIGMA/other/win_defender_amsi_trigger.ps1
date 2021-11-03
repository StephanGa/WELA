﻿# Get-WinEvent -LogName Microsoft-Windows-Windows Defender/Operational | where {($_.ID -eq "1116" -and $_.message -match "DetectionSource.*AMSI") } | select TimeCreated,Id,RecordId,ProcessId,MachineName,Message

function Add-Rule {

    $ruleName = "win_defender_amsi_trigger";
    $detectRule = {
        
        function Search-DetectableEvents {
            param (
                $event
            )
            
            $ruleName = "win_defender_amsi_trigger";
            $detectedMessage = "Detects triggering of AMSI by Windows Defender.";
            $result = $event |  where { ($_.ID -eq "1116" -and $_.message -match "DetectionSource.*AMSI") } | select TimeCreated, Id, RecordId, ProcessId, MachineName, Message;
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
    if (! $ruleStack[$ruleName]) {
        $ruleStack.Add($ruleName, $detectRule);
    }
    else {
        Write-Host "Rule Import Error"  -Foreground Yellow;
    }
}
