@{
    IncludeDefaultRules = $true
    ExcludeRules        = @(
        'PSAvoidUsingWriteHost'
    )
    Severity            = @(
        'Error',
        'Warning'
    )
}
