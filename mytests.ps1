$pesterConfig = [PesterConfiguration]::Default
$pesterConfig.TestResult
$pesterConfig.TestResult.Enabled = $true
$pesterConfig.TestResult.OutputFormat = 'NUnit2.5'
$pesterConfig.TestResult.OutputPath = 'results.new.xml'
$pesterConfig.Run.Path = '.\testing\mine.tests.ps1'
Invoke-Pester -Configuration $pesterConfig
