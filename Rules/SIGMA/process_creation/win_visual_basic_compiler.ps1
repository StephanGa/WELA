﻿# Get-WinEvent -LogName Microsoft-Windows-Sysmon/Operational | where {($_.ID -eq "1" -and $_.message -match "ParentImage.*.*\\vbc.exe" -and $_.message -match "Image.*.*\\cvtres.exe") } | select TimeCreated,Id,RecordId,ProcessId,MachineName,Message

function Add-Rule {

    $ruleName = "win_visual_basic_compiler";
    $detectRule = {
        
        function Search-DetectableEvents {
            param (
                $event
            )
            
            $ruleName = "win_visual_basic_compiler";
            $detectedMessage = "Detects successful code compilation via Visual Basic Command Line Compiler that utilizes Windows Resource to Object Converter.";
            $result = $event |  where { ($_.ID -eq "1" -and $_.message -match "ParentImage.*.*\\vbc.exe" -and $_.message -match "Image.*.*\\cvtres.exe") } | select TimeCreated, Id, RecordId, ProcessId, MachineName, Message;
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
