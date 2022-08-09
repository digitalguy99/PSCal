function Get-Holidays 
{
    
    [CmdletBinding()]
    param 
    (
        [ValidateNotNullOrEmpty()]
        [ValidateRange(1500,3000)]
        [int]
        $Year,
        
        [ValidateNotNullOrEmpty()]
        [ValidateRange(1,12)]
        [int]
        $Month
    )
    if (Test-Path ($PSScriptRoot + "\" + "holidays.txt"))
    {
        $arrHolidays = New-Object System.Collections.ArrayList
        $rawHolidays = Get-Content ($PSScriptRoot + "\" + "holidays.txt")
        foreach ($item in $rawHolidays)
        {
            $splitArr = $item.Split("/")
            if (([int]$splitArr[0] -eq $Year) -and ([int]$splitArr[1] -eq $Month))
            {
                $arrHolidays.Add($splitArr[2]) | Out-Null
            }
                       
        }
        Return $arrHolidays
    }
    
}
function Show-Calendar
{
    <#
   .Synopsis
    Show Linux-Like Console Calendar
   .Description
    A PowerShell module to display a Linux-like calendar on the console.
   .Example
    Show-Calendar
    Displays the current month calendar on the console.
   .Example
    Show-Calendar -Month July
    Displays the July calendar of the current year on the console.
   .Example
    Show-Calendar -Year 2021
    Displays the whole 2021 calendar (all 12 months) on the console.
   .Example
    Show-Calendar -Year 2021 -Month May
    Displays the calendar of May 2021 on the console.
   .Notes
    NAME: PSCal
    AUTHOR: Iman Edrisian
 #>  
    [CmdletBinding()]
    param 
    (
        [ValidateNotNullOrEmpty()]
        [ValidateRange(1500,3000)]
        [int]
        $Year,
        
        [ValidateNotNullOrEmpty()]
        [ValidateSet("January","February","March","April","May","June","July","August","September","October","November","December")]
        [string]
        $Month

    )
    $arrMonth = @("January","February","March","April","May","June","July","August","September","October","November","December")
    #$objPcal = New-Object System.Globalization.PersianCalendar
    $objDT = New-Object System.DateTime
    $toDay = Get-Date
    if ($Year -and (-not $Month))
    {
        $cursorPos = $Host.UI.RawUI.CursorPosition
        $initialX = $cursorPos.X
        $cursorPos.X += 30
        $Host.UI.RawUI.CursorPosition = $cursorPos
        Write-Host $Year
        $cursorPos.X = $initialX
        $cursorPos.Y++
        for ($i =1; $i -le 12; $i++)
        {
            switch ($i) {
                2 { $cursorPos.X += 22}
                3 { $cursorPos.x += 22}
                4 { $cursorPos.X = $initialX ; $cursorPos.Y += 9}
                5 { $cursorPos.X += 22}
                6 { $cursorPos.X += 22}
                7 { $cursorPos.X = $initialX ; $cursorPos.Y += 9}
                8 { $cursorPos.X += 22}
                9 { $cursorPos.X += 22}
                10{ $cursorPos.X = $initialX ; $cursorPos.Y += 9}
                11 { $cursorPos.X += 22}
                12 { $cursorPos.X += 22}
            }
            $initDate = get-date -Year $Year -Month $i -Day 1
            $FirstDayOfMonth = $initDate.DayOfWeek.value__
            $holidays = Get-Holidays -Year $Year -Month $i
            if (($initDate.Year -eq $toDay.Year) -and (($initDate.Month -eq $toDay.Month)) )
            {
                Draw-Month -Title Month -Year $initDate.Year -Month ((Get-Culture).DateTimeFormat.GetMonthName($initDate.Month)) -FirstDayOfMonth $FirstDayOfMonth `
                 -DaysInMonth ([datetime]::DaysInMonth($initDate.Year,$initDate.Month)) `
                 -today $toDay.Day -holidays $holidays -cursorPos $cursorPos
            }else {
                Draw-Month -Title Month -Year $initDate.Year `
                 -Month ((Get-Culture).DateTimeFormat.GetMonthName($initDate.Month)) -FirstDayOfMonth $FirstDayOfMonth -DaysInMonth ([datetime]::DaysInMonth($initDate.Year,$initDate.Month)) -holidays $holidays -cursorPos $cursorPos
            }
        }
    }elseif ($Year -and $month)
    {
        $monthNum = $arrMonth.IndexOf($month) +  1
        $initDate = Get-Date -Year $Year -Month $monthNum -Day 1
        $FirstDayOfMonth = $initDate.DayOfWeek.value__
        $holidays = Get-Holidays -Year $Year -Month $monthNum
        if (($initDate.Year -eq $toDay.Year) -and (($initDate.Month -eq $toDay.Month)) )
            {
                Draw-Month -Title MonthAndYear -Year $initDate.Year -Month ((Get-Culture).DateTimeFormat.GetMonthName($initDate.Month)) -FirstDayOfMonth $FirstDayOfMonth `
                 -DaysInMonth ([datetime]::DaysInMonth($initDate.Year,$initDate.Month)) -today $toDay.Day -holidays $holidays
            }else {
                Draw-Month -Title MonthAndYear -Year $initDate.Year `
                 -Month ((Get-Culture).DateTimeFormat.GetMonthName($initDate.Month)) -FirstDayOfMonth $FirstDayOfMonth -DaysInMonth ([datetime]::DaysInMonth($initDate.Year,$initDate.Month))  -holidays $holidays
            }
    }
    elseif ($Month)
    {
        $monthNum = $arrMonth.IndexOf([string]$Month) +  1
        $initDate = get-date -Year $toDay.Year -Month $monthNum -day 1
        $FirstDayOfMonth = $initDate.DayOfWeek.value__
        $holidays = Get-Holidays -Year $initDate.Year -Month $monthNum
        if ((($initDate.Month -eq $toDay.Month)))
        {
            Draw-Month -Title MonthAndYear -Year $initDate.Year -Month ((Get-Culture).DateTimeFormat.GetMonthName($initDate.Month)) -FirstDayOfMonth $FirstDayOfMonth -DaysInMonth ([datetime]::DaysInMonth($initDate.Year,$initDate.Month))`
                -today ($toDay.Day) -holidays $holidays
        }
        else 
        {
            Draw-Month -Title MonthAndYear -Year $initDate.Year -Month ((Get-Culture).DateTimeFormat.GetMonthName($initDate.Month))`
             -FirstDayOfMonth $FirstDayOfMonth -DaysInMonth ([datetime]::DaysInMonth($initDate.Year,$initDate.Month))`
                 -holidays $holidays
        }
        
    }
    else 
    {
        $initDate = Get-Date
        $FirstDayOfMonth = (get-date -Year $initDate.Year -Month $initDate.Month -Day 1).DayOfWeek.value__
        $holidays = Get-Holidays -Year $initDate.Year -Month $initDate.Month
        Draw-Month -Title MonthAndYear -Year $initDate.Year -Month ((Get-Culture).DateTimeFormat.GetMonthName($initDate.Month))`
         -FirstDayOfMonth $FirstDayOfMonth -DaysInMonth ([datetime]::DaysInMonth($initDate.Year,$initDate.Month))`
         -today $initDate.Day -holidays $holidays
    }
    
}