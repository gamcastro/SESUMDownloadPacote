function New-DownloadPacote {
     
    $recursos = 'http://intranet1.tre-ma.gov.br:81/recursos'
    $Eleicao = '2020'
    $Ambiente = 'OFICIAL'
    $Pacote = 'CANDEX.000.142.W.000.FULL'

    $Count = $Pacote.IndexOf('.')
    $Pasta = $Pacote.Substring(0,$Count)

    $url = "$recursos/SISTEMAS ELEITORAIS/$Eleicao/$Ambiente/$Pasta/$Pacote"
    $destino = "D:\COMUM\InstSeg\SISTEMAS ELEITORAIS\$Eleicao\$Ambiente\$Pasta"
    
    if ( -Not(Test-Path("$destino\$Pacote"))) {
        $download = Start-BitsTransfer -Source $url -Destination $destino -Asynchronous
    }
        
}