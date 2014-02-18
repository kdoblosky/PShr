Function Get-HorizontalLine {
    param (
        [string]$InputString = "-", 
        [parameter(Mandatory = $false)][alias("c")]$Count = 1, 
        [parameter(Mandatory = $false)][alias("fg")]$ForeColor=$null, 
        [parameter(Mandatory = $false)][alias("bg")]$BackColor=$null
    ) 
    $ColorSplat = @{}
    if ($ForeColor -ne $null) { $ColorSplat.ForegroundColor = $ForeColor }
    if ($BackColor -ne $null) { $ColorSplat.BackgroundColor = $BackColor }
    
    # How long to make the hr
    $width = if ($host.Name -match "ISE") {
        $host.UI.RawUI.BufferSize.Width - 1
    } else { 
        $host.UI.RawUI.BufferSize.Width - 4
    }


    # How many times to repeat $Character in full
    $repetitions = [System.Math]::Floor($width/$InputString.Length)

    # How many characters of $InputString to add to fill each line
    $remainder = $width - ($InputString.Length * $repetitions)

    # Make line(s)
    1..$Count | % { 
        Write-Host ($InputString * $repetitions) + $InputString.Substring(0,$remainder) @ColorSplat 
    }
}

Set-Alias -Name hr -Value Get-HorizontalLine
