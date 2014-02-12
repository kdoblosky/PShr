Function Get-HorizontalLine($Character = "-", $Count = 1) {
    $width = $host.UI.RawUI.BufferSize.Width - 1
    1..$Count | % { $Character * $width }
}

Set-Alias -Name hr -Value Get-HorizontalLine