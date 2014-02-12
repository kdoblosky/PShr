Function Get-HorizontalLine
{
    Param(
        [ValidateNotNullOrEmpty()]
        [string]$Character = '-',
        
        [ValidateNotNullOrEmpty()]
        [int]$count = 1
    )

    $width = $host.UI.RawUI.BufferSize.Width -1
    1..$count | ForEach-Object{$Character * $width}

}

Set-Alias -Name hr -Value Get-HorizontalLine
