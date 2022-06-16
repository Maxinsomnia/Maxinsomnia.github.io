## 计数作为文件名
$count = [System.IO.Directory]::GetFiles("G:\blog\maxinsomnia.github.io\source\_posts").Count
## 提前写入 Markdown 的 yaml 头
$date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$yaml = "---" + "`ntitle: $count" + "`ndate: '$date'" + "`nupdated: '$date'" + "`ncategories: []" + "`ntags: [blog]" + "`ndescription:" +"`n`n---"
## 在 Hexo 中创建文件
Write-Output $yaml | Out-File G:\blog\maxinsomnia.github.io\source\_posts\$count.md
## 在 Obsidian 中创建硬链接
New-Item C:\Users\Guo\iCloudDrive\iCloud~md~obsidian\blog\$count.md -Type HardLink -Target G:\blog\maxinsomnia.github.io\source\_posts\$count.md
## 退出
exit