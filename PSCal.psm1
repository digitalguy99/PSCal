# Get public and private function definition files.
$functions  = @( Get-ChildItem -Path $PSScriptRoot -Recurse -Filter *.ps1 -Exclude PSCal.ps1)

# Dot source the files
Foreach($import in $functions)
{
    Try { . $import.fullname }
    Catch
    {
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }
}
New-Alias -Name "cal" -Value "Show-Calendar"
Export-ModuleMember -Alias "cal" -Function "Show-Calendar"