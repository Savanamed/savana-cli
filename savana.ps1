switch ($args[0]) {
"help" {
        Write-Host "Help enter data"
}
"install" {
        msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi
        mkdir data
        mkdir data\download
        mkdir data\upload
}
"configure" {
        $ak = read-host "Access Key"
        $sk = read-host "Secret Key"
        aws configure set aws_access_key_id $ak
        aws configure set aws_secret_access_key $sk
        aws configure set default.region "eu-west-1"
}
"ls" {
        $js = aws sts get-caller-identity
        $ret = [Regex]::Matches($js, "(?<=user/).+")
        $q = $ret[0].Value
        $r = $q.Substring(0,$q.Length-3)
        aws s3 ls --recursive s3://timp-$r
}
"sync" {
        $js = aws sts get-caller-identity
        $ret = [Regex]::Matches($js, "(?<=user/).+")
        $q = $ret[0].Value
        $r = $q.Substring(0,$q.Length-3)
        aws s3 sync data s3://timp-$r
        aws s3 sync s3://timp-$r/download data/download
}
default{
        Write-Host "incorrect option: savana help"
}

}
