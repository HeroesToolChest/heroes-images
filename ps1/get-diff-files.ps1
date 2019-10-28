# Script to find all the new files when comparing the old and new

param(
	[Parameter(Mandatory=$true)][string]$oldPath,
	[Parameter(Mandatory=$true)][string]$newPath,
	[Parameter(Mandatory=$true)][string]$partialPath
)

$hdpJson = '.hdp.json'

$imageFolders = Get-ChildItem -Path $newPath -Directory -Name

function New-DirectoryIfNotExist
{
	param([parameter(Mandatory)][string]$path)
	
	if (-not (Test-Path $path -PathType Container))
	{
		New-Item -ItemType Directory -Force -Path $path | Out-Null
	}
}

function Copy-NewFiles
{
	param([parameter(Mandatory)][string]$directory)
	
	if ((Test-Path "${oldPath}/${directory}" -PathType Container) -and (Test-Path "${newPath}/${directory}" -PathType Container))
	{		
		Write-Host "Both paths exists"
		Write-Host "${oldPath}/${directory}"
		Write-Host "${newPath}/${directory}"
		"====================="
		$oldImageFiles = Get-ChildItem -Path "${oldPath}/${directory}" -Name
		$newImageFiles = Get-ChildItem -Path "${newPath}/${directory}" -Name
		
		foreach ($imageFile in $newImageFiles)
		{
			Write-Host "Current image file ${imageFile}"
			$newImageFileHash = Get-FileHash "${newPath}/${directory}/${imageFile}" -Algorithm SHA256
			
			# check if its a new file
			if (-not (Test-Path "${oldPath}/${directory}/${imageFile}" -PathType Leaf))
			{
				Write-Host "New file"
				New-DirectoryIfNotExist -Path "${partialPath}/${directory}"
			
				Copy-Item -Path "${newPath}/${directory}/${imageFile}" -Destination "${partialPath}/${directory}" -Recurse
			}
			else # existing file
			{	
				Write-Host "Existing file"

				# check if the file was modified
				$oldImageFileHash = Get-FileHash "${oldPath}/${directory}/${imageFile}" -Algorithm SHA256
				
				if ($oldImageFileHash.Hash -ne $newImageFileHash.Hash)
				{
					Write-Host "Hash is different, has been modified"
					New-DirectoryIfNotExist -Path "${partialPath}/${directory}"

					Copy-Item -Path "${newPath}/${directory}/${imageFile}" -Destination "${partialPath}/${directory}" -Recurse
				}
			}			
		}
	}
	elseif ((Test-Path "${oldPath}/${directory}" -PathType Container) -and (-not (Test-Path "${newPath}/${directory}" -PathType Container)))
	{
		Continue
	}
	elseif ((-not (Test-Path "${oldPath}/${directory}" -PathType Container)) -and (Test-Path "${newPath}/${directory}" -PathType Container))
	{
		Write-Host "Brand new directory"
		New-DirectoryIfNotExist -Path "${partialPath}/${directory}"
							
		Copy-Item -Path "${newPath}/${directory}" -Destination "${partialPath}/${directory}" -Recurse
	}
	else # neither exists
	{
		Continue
	}
}

Write-Host "All image folders from new path:"
Write-Host "${imageFolders}"

foreach ($imageFolder in $imageFolders)
{
	# check if its a new folder
	if (-not (Test-Path "${oldPath}/${imageFolder}" -PathType Container))
	{
		Write-Host "Brand new image folder: ${imageFolder}"

		Copy-Item -Path "${newPath}/${imageFolder}" -Destination "${partialPath}/${imageFolder}" -Recurse
	}
	else
	{
		Write-Host "Existing image folder"
		Copy-NewFiles -Directory $imageFolder
	}
}

# .hdp.json file check
$oldHdpJsonHash = Get-FileHash "${oldPath}/${hdpJson}" -Algorithm SHA256
$newHdpJsonHash = Get-FileHash "${newPath}/${hdpJson}" -Algorithm SHA256
		
if ($oldHdpJsonHash.Hash -ne $newHdpJsonHash.Hash)
{
	Copy-Item -Path "${newPath}/${hdpJson}" -Destination "${partialPath}/${hdpJson}" -Recurse
}	
