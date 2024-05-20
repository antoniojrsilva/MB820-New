install-module BCcontainerhelper -force 

#Variables
$containerName = 'training01'  #LOWERCASE NAME
$password = 'Constancia6730'
$securePassword = ConvertTo-SecureString -String $password -AsPlainText -Force
$credential = New-Object pscredential 'antonio', $securePassword
$auth = 'UserPassword'
$artifactUrl = Get-BcArtifactUrl -type 'Sandbox' -country 'gb' -select 'Latest'  
$licenseFileUri = ''
$isolation = 'hyperv'

#Publish Minimal Ports - normal and SSL
$additionalParameters = @("--publish 8080:8080",
                          "--publish 443:443", 
                          "--publish 7046-7049:7046-7049")


New-NavContainer -accept_eula:$accept_eula `
                 -containername $containername `
                 -auth UserPassword `
                 -Credential $credential `
                 -licenseFile $licenseFileUri `
                 -includeCSide `
                 -alwaysPull `
                 -doNotExportObjectsToText `
                 -usessl:$false `
                 -updateHosts `
                 -assignPremiumPlan `
                 -shortcuts Desktop `
                 -imageName $bcdockerimage `
                 -useBestContainerOS `
                 -includeTestToolkit `
     
# *** RUN DOCKER IMAGE - MANUAL STARTING
docker run -e accept_eula=Y -m 4G training01



#GET ARTIFACTS LIST
#Write-Host -ForegroundColor Yellow "Get all GB NAV and Business Central artifact urls"
#Get-BCArtifactUrl -type OnPrem -country "gb" -select All

#Write-Host -ForegroundColor Yellow "Get all GB sandbox artifact urls"
#Get-BCArtifactUrl -type Sandbox -country "gb" -select All