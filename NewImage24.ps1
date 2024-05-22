install-module BCcontainerhelper -force 

#Variables
$containerName = 'training'  #LOWERCASE NAME
$password = 'Constancia6730'
$securePassword = ConvertTo-SecureString -String $password -AsPlainText -Force
$credential = New-Object pscredential 'antonio', $securePassword
$auth = 'UserPassword'
$artifactUrl = Get-BcArtifactUrl -type 'Sandbox' -country 'gb' -select 'Latest'  
$licenseFileUri = 'C:\repos\TNPBC.bclicense'
$isolation = 'hyperv'

#Publish Minimal Ports - normal and SSL
$additionalParameters = @("--publish 8080:8080",
                          "--publish 443:443", 
                          "--publish 7046-7049:7046-7049")


# *** CREATE BC19 ITA CONTAINER
New-BcContainer `
    -accept_eula `
    -containerName $containerName `
    -credential $credential `
    -auth $auth `
    -artifactUrl $artifactUrl `
    -imageName $containerName `
    -multitenant:$false `
    -assignPremiumPlan `
    -dns '8.8.8.8' `
    -includeTestToolkit `
    -memoryLimit 8G `
    -updateHosts `
    #-additionalParameters $additionalParameters `   #Publish Ports


     
# *** RUN DOCKER IMAGE - MANUAL STARTING
#docker run -e accept_eula=Y -m 4G training



#GET ARTIFACTS LIST
#Write-Host -ForegroundColor Yellow "Get all GB NAV and Business Central artifact urls"
#Get-BCArtifactUrl -type OnPrem -country "gb" -select All

#Write-Host -ForegroundColor Yellow "Get all GB sandbox artifact urls"
#Get-BCArtifactUrl -type Sandbox -country "gb" -select All