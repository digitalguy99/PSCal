function Draw-Month {
    [CmdletBinding()]
    param 
    (
        # Parameter help description
        [ValidateNotNullOrEmpty()]
        [ValidateSet("Month","MonthAndYear")]
        [string]
        $Title="Month",
        
        [parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]
        $Year,

        [parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]
        $Month,

        [parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [ValidateRange(0,6)]
        [int]
        $FirstDayOfMonth,

        [parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [ValidateSet(28,29,30,31)]
        [int]
        $DaysInMonth,

        [parameter(Mandatory=$false)]
        [ValidateNotNullOrEmpty()]
        [ValidateRange(1,31)]
        [int]
        $today,

        [parameter(Mandatory=$false)]
        [allownull()]
        [int[]]
        $holidays,

        [parameter(Mandatory=$false)]
        [ValidateNotNullOrEmpty()]
        [System.Management.Automation.Host.Coordinates]
        $cursorPos

    )
    
    if (-not $cursorPos)
    {
        $cursorPos = $Host.UI.RawUI.CursorPosition
    }
    [int]$cursorInitX = $cursorPos.X
    if ($Title -eq "MonthAndYear")
    {
        $strTitle = $Month + " " + [string]$Year  
    }
    else 
    {
        $strTitle = $Month
    }
    
    [int]$titleStartPos = (20 - $strTitle.Length) / 2
    $cursorPos.X = ($cursorPos.X + $titleStartPos)
    $Host.UI.RawUI.CursorPosition = $cursorPos
    Write-Host $strTitle
    $cursorPos.X = ($cursorPos.X - $titleStartPos)
    $cursorPos.Y++
    $Host.UI.RawUI.CursorPosition = $cursorPos
    Write-Host "Su Mo Tu We Th Fr Sa"
    $cursorPos.Y++

    $firstDayPosArr = @(0,3,6,9,12,15,18) 
    $cursorPos.X += ($firstDayPosArr[$FirstDayOfMonth] +  1)
    $Host.UI.RawUI.CursorPosition = $cursorPos
    [int]$weekDayIndex = $FirstDayOfMonth
    $d = 1
    while ($d -le $DaysInMonth) 
    {
        for ($i = 0; $i -le 6; $i ++)
        {
            if (($i -eq $weekDayIndex) -and ($d -le $DaysInMonth))
            {
                if ($d -eq $today)
                {
                    #Write-Host $d -ForegroundColor Cyan
                    if ($d -lt 10)
                    {
                        $cursorPos.X -= 1
                        $Host.UI.RawUI.CursorPosition =$cursorPos
                        Write-Host (" " + [string]$d) -BackgroundColor Gray -ForegroundColor Black
                        $cursorPos.X += 1
                        $Host.UI.RawUI.CursorPosition =$cursorPos
                    }
                    else
                    {
                        Write-Host $d -BackgroundColor Gray -ForegroundColor Black
                    }
                }
                elseif ($holidays -contains $d)
                {
                    Write-Host  $d -ForegroundColor Magenta
                }
                else 
                {
                    Write-Host $d -NoNewline
                }
                
                $cursorPos.X += 3
                if (($d + 1) -eq 10){$cursorPos.X -= 1}
                $Host.UI.RawUI.CursorPosition =$cursorPos
                $weekDayIndex++
                $d++
            }
        }
       $weekDayIndex = 0
       $cursorPos.y++
       $cursorPos.X = $cursorInitX
       if ($d -lt 10 ){$cursorPos.X += 1}
       $Host.UI.RawUI.CursorPosition = $cursorPos
    }
}