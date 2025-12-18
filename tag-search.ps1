param (
    [Parameter(Mandatory=$false)]
    [string]$searchPath = (Get-Location).Path
)

# set title art variable and write-output variable
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$titleArt = @"
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⡀⠄⢀⠀⠀⠀⠀⠀⠀⠐⡀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠲⡀⠀⠀⠠⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠠⠑⢈⠐⠀⡀⠄⢀⡀⢀⠀⠁⠈⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠐⠀⢉⠀⠀⠀⠀⠀⠀⠀⠂⠉⡄⠀⠠⠁⠘⠄⡂⢁⠀⡀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠂⠠⠀⠠⠁⡐⠀⠀⠂⠀⠀⠁⠀⠀⠃⠄⠈⠂⠡⢄⠂⠐⠀⠂⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠀⠀⠀⠙⢦⡀⠀⠐⠀⠀⠀⠀⠀⠂⠌⠀⠁⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠹⡮⠲⢔⣤⣤⡀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠈⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠳⣶⣿⣿⣿⣿⣷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠢⡀⠀⠀⠀⠀⠠⠀⠀⠀⡀⢄⢦⡝⢿⣿⣿⣿⣿⣿⣿⡿⠷⠖⠀⠐⠀⠀⠒⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢤⣀⠀⠀⠀⠀⢄⡻⡟⠘⢼⣼⣿⣿⣿⣿⠿⠛⠀⠀⠀⡀⣀⣤⣿⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠷⣶⡦⠔⠮⡟⠾⢶⣿⣿⡿⠛⠉⢀⠀⣀⣤⣲⣿⣿⣿⣿⣿⣿⣿⣿⣿⣡⡄⠀⢀⠢⢁⣟⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡈⠛⢟⡿⠿⢧⣾⢝⡩⠂⣁⣤⣷⢿⣫⣿⣿⢿⣿⣿⣿⣿⣿⣷⣿⣿⡿⠆⠀⢸⠠⢿⢿⡯⣿⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠘⢿⣶⣶⣤⣤⣴⣠⣤⣄⡉⣤⡘⠚⢈⡃⢩⣪⣿⣿⣟⣵⣿⣿⣿⣷⣿⣿⣿⣿⣿⡿⢦⣔⢒⣽⣿⡉⣋⣿⣽⣾⢒⡿⡛⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠈⠹⣿⣿⣿⣿⣿⣿⣿⣿⣾⣷⣾⣰⢲⣾⣿⣯⣾⣿⣿⣿⣿⡟⣥⢷⣶⣻⣿⣽⣾⣿⡇⠐⠻⠿⠿⠿⠿⠿⠁⠀⠟⠻⠙⣷⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⡀⠀
⣄⠀⠄⣀⠂⠐⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⢫⣾⣷⡟⠿⣿⣿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠂
⣿⣷⣴⣈⣻⣜⣘⡽⣮⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢣⣿⣿⣿⣿⠀⠈⠀⠀⠀⠀⠀⠀⠀⠰⢲⣶⣶⣶⣾⣷⣾⣶⠀⠀⠀⣰⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⡿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡟⣾⡕⣝⣱⡏⠆⢐⡼⢿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⠀⠀⣀⠀⠀⠀⠁⠀⠄⠀⠀⢀⠀⢸⡟⠾⠯⠙⠻⡔⢰⣣⣾⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡕⠀⣼⣟⠰⠀⠀⠀⠀⠀⢀⣀⣠⣠⣀⠀⠶⣶⡶⣄⣀⢳⣯⢯⡹⣏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣡⢠⣟⣛⣶⡂⠀⢰⣧⣼⣧⣀⠘⣷⢚⣻⣤⣿⣾⣿⣫⣻⣿⢌⣇⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣷⣶⣿⣿⣿⣿⣦⣸⣿⣿⣿⣿⣶⣾⣿⣻⡟⣼⣮⣻⠿⢹⢻⡞⡘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⡛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣟⣿⣿⣖⢓⣱⡕⢟⡵⠛⠲⠁⠀⠀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀
⠛⠀⠈⠻⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣮⣳⣿⡙⢹⣿⣿⣷⣧⠽⠉⠡⡒⠅⡀⠀⠀⠀⠀⠈⠀⠀⠀⠀⢀⠀⠀⠀⠀
⠀⠄⠀⠀⠀⠠⣬⣍⠉⢽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣻⣟⠻⢿⣷⠤⢄⣀⡤⠒⠁⠐⡠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢐⡄⢀⣫⣷⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣲⢶⣒⣂⣡⡴⢻⠅⠶⢊⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡆⠀
⠐⠂⠃⢠⣴⣯⡟⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠘⠒⠈⢩⣥⣬⠀⠐⠐⢩⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⢠⠁⠀
⢂⣤⠲⢚⡵⢋⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣲⢫⣬⡬⣭⢖⡶⡏⣞⡼⠁⠀⠀⠀⠀⠀⠐⠀⠀⠀⡸⠀⠀
⣳⣈⢨⢕⣽⣟⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣹⣿⣿⣿⣿⣶⣿⣶⣿⣿⣿⠟⢀⡄⠀⠄⠀⠂⠔⠀⠀⠀⢀⠃⠀⠀
⣿⣿⣆⡚⢿⣿⣞⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⡫⣐⣜⠵⠢⢂⠠⠀⠁⠀⠀⠀⢀⠎⠀⠀⠀
⣿⣿⣿⣿⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣫⡽⠟⠻⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣯⣴⡚⢛⠒⠀⡀⣀⣀⣠⠥⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀
⣿⣿⣿⡿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣝⣻⣿⣿⣄⠐⣶⣤⡤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣿⣶⠿⡛⠃⢀⠄⠀⠐⠀⠄⠀⠀⠀⠀⠀⠀⢠
⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⢀⡈⠳⢿⡿⠟⣡⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣛⠛⠿⠯⠾⢛⣁⣠⣲⠀⢀⠁⠀⠀⠀⠀⠀⠀⢀⡴⠁
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣴⣾⣿⣶⣦⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣭⣀⣦⢨⣉⣥⣋⡤⠀⠂⠀⠀⠀⣀⠔⠋⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⠿⣻⢁⣧⣔⠦⠀⠀⠈⠀⠀⠀⠀⠀
"@
Write-Output $titleArt

# set title variable and write-output variable
$title = @"
 ______   ______     ______     ______     ______     ______     ______     ______     __  __    
/\__  _\ /\  __ \   /\  ___\   /\  ___\   /\  ___\   /\  __ \   /\  == \   /\  ___\   /\ \_\ \   
\/_/\ \/ \ \  __ \  \ \ \__ \  \ \___  \  \ \  __\   \ \  __ \  \ \  __<   \ \ \____  \ \  __ \  
   \ \_\  \ \_\ \_\  \ \_____\  \/\_____\  \ \_____\  \ \_\ \_\  \ \_\ \_\  \ \_____\  \ \_\ \_\ 
    \/_/   \/_/\/_/   \/_____/   \/_____/   \/_____/   \/_/\/_/   \/_/ /_/   \/_____/   \/_/\/_/ 
                                                                                                 
"@
Write-Output $title

function search-tag {

    do {
        # read for user input on what hashtag to search for
        $hashtag = Read-Host "Enter a hashtag"
        if (-not $hashtag.StartsWith('#')) {
            $hashtag = '#' + $hashtag
        }

        # indicate to user that the hashtag is being searched and where
        Write-Host "Searching in directory: $searchPath" -ForegroundColor White
        Write-Host "Searching for: $hashtag`n" -ForegroundColor White 

        # search for files containing the hashtag
        $results = @()

        Get-ChildItem -Path $searchPath -Filter "*.txt" -Recurse -ErrorAction SilentlyContinue | ForEach-Object {
            $fileContent = Get-Content -Path $_.FullName -Raw -ErrorAction SilentlyContinue

            # extract content between the table borders
            if ($fileContent -match '\+---.*?\+\s*\n([\s\S]*?)\n\s*\+---.*?\+') {
                $tableContent = $matches[1]

                # search for hashtag only within the table
                if ($tableContent -match ([regex]::Escape($hashtag))) {
                    # establish a custom results object that composes of the .txt name, path and directory name
                    $results += [PSCustomObject]@{
                        Index = $results.Count + 1
                        FileName = $_.Name
                        FullPath = $_.FullName
                        Directory = $_.DirectoryName
                    }
                }
            }

            <#
                keep this block commented out and use in case of emergency
                
                if (Select-String -Path $_.FullName -Pattern ([regex]::Escape($hashtag)) -Quiet) {
                    # establish a custom results object that composes of the .txt name, path and directory name
                    $results += [PSCustomObject]@{
                        Index = $results.Count + 1
                        FileName = $_.Name
                        FullPath = $_.FullName
                        Directory = $_.DirectoryName
                    }
                }
            #>
        }

        # notify user if no results found
        if ($results.Count -eq 0) {
            Write-Host "No files found with '$hashtag'" -ForegroundColor White
        }
        else {
            # display results
            Write-Host "Found $($results.Count) file(s):" -ForegroundColor White
            Write-Host ""

            # set each matching .txt file to the results variable
            $results | ForEach-Object {
                Write-Host "$($_.Index). $($_.FileName)" -ForegroundColor White
                Write-Host "  Path: $($_.Directory)" -ForegroundColor Gray
                Write-Host ""
            }

            # allow user to select a file
            $selection = Read-Host "Enter the number of the file to open (or Enter to cancel)"

            # indicate to user that the operation is canceled if they press enter
            if ([string]::IsNullOrWhiteSpace($selection)) {
                Write-Host "Cancelled." -ForegroundColor White
            }
            # indicate to user that a .txt file was selected and that it is launching
            elseif ($selection -match '^\d+$' -and [int]$selection -ge 1 -and [int]$selection -le $results.Count) {
                $selectedFile = $results[[int]$selection - 1].FullPath
                Write-Host "Opening: $selectedFile" -ForegroundColor Gray
                Start-Process notepad.exe -ArgumentList $selectedFile
            }
            else {
                Write-Host "Invalid selection." -ForegroundColor Gray
            }
        }

        Write-Host ""
        $again = Read-Host "Search again? (y/n)"
    } while ($again -eq 'y')

    Write-Host "Exiting search." -ForegroundColor White
}

function build-tables {
    # indicate to user that the table is being added to the .txt files
    Write-Host "Adding tables to all missing .txt files in $serarchPath`n" -ForegroundColor White
    
    # set the table variable to a empty table 
    $table = @"
         +-------------------------------------------+
         |                                           | 
         |                                           | 
         |        Place Hashtags In This Box         | 
         |                                           | 
         |                                           | 
         |                                           | 
         +-------------------------------------------+
"@

    $txtFiles = Get-ChildItem -Path $searchPath -Filter "*.txt" -Recurse -ErrorAction SilentlyContinue
    $count = 0

    foreach ($file in $txtFiles) {
        # read current contnet
        $currentContent = Get-Content -Path $file.FullName -Raw -ErrorAction SilentlyContinue

        <#

                keep this block commented out and use in case of emergency
        
            # check if table already exists at the beginning
            if (-not $currentContent.StartsWith("+")) {
                # prepend table to the file
                $newContent = $table + "`n`n" + $currentContent
                Set-Content -Path $file.FullName -Value $newContent -ErrorAction SilentlyContinue
                $count++
                Write-Host "Table Built: $($file.Name)" -ForegroundColor White
            }
            else {
                Write-Host "Already contains table: $($file.Name)" -ForegroundColor Gray
            }

        #>

        # check if table already exists
        if ($currentContent -match '\+---.*?\+\s*\n([\s\S]*?)\n\s*\+---.*?\+') {
            Write-Host "Table already built: $($file.Name)" -ForegroundColor Gray
        }
        else {
            # build the table if it doesn't exist
            $newContent = $table + "`n`n" + $currentContent
            Set-Content -Path $file.FullName -Value $newContent -ErrorAction SilentlyContinue
            $count++
            Write-Host "Table Built: $($file.Name)" -ForegroundColor White
        }
    }

    Write-Host "`nTable added to $count file(s)." -ForegroundColor Gray
    Write-Host ""
    Read-Host "Press Enter to return to main menu"
    Clear-Host
    Write-Output $titleArt
    Write-Output $title
    show-menu
}

function show-menu {
    # main menu
    Write-Host ""
    $menuChoice = Read-Host "Choose an option: (1) Build .txt Tables (2) Search Hashtags"

    # run a if statement to run functions based on the user's choice
    if ($menuChoice -eq "1") {
        build-tables
    }
    elseif ($menuChoice -eq "2") {
        search-tag
    }
    else {
        Write-Host "Invalid choice." -ForegroundColor White
    }
}

# run the show-menu function
show-menu