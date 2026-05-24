param(
  [int]$Port = 8765,
  [string]$Root = (Get-Location).Path
)

Add-Type -AssemblyName System.Web

$listener = [System.Net.HttpListener]::new()
$prefix = "http://localhost:$Port/"
$listener.Prefixes.Add($prefix)
$listener.Start()

Write-Host "Serving $Root at $prefix"
Write-Host "Press Ctrl+C to stop."

$mime = @{
  ".html" = "text/html; charset=utf-8"
  ".htm"  = "text/html; charset=utf-8"
  ".css"  = "text/css; charset=utf-8"
  ".js"   = "application/javascript; charset=utf-8"
  ".json" = "application/json; charset=utf-8"
  ".png"  = "image/png"
  ".jpg"  = "image/jpeg"
  ".jpeg" = "image/jpeg"
  ".gif"  = "image/gif"
  ".svg"  = "image/svg+xml"
  ".ico"  = "image/x-icon"
  ".woff" = "font/woff"
  ".woff2"= "font/woff2"
  ".ttf"  = "font/ttf"
  ".txt"  = "text/plain; charset=utf-8"
  ".md"   = "text/plain; charset=utf-8"
}

try {
  while ($listener.IsListening) {
    $context = $null
    try {
      $context = $listener.GetContext()
      $req = $context.Request
      $res = $context.Response

      $path = [System.Web.HttpUtility]::UrlDecode($req.Url.AbsolutePath)
      if ($path -eq "/" -or $path.EndsWith("/")) {
        $path = $path + "index.html"
      }

      $rootFull = [System.IO.Path]::GetFullPath($Root)
      $filePath = Join-Path $Root ($path.TrimStart("/"))
      $filePath = [System.IO.Path]::GetFullPath($filePath)

      if (-not $filePath.StartsWith($rootFull)) {
        $res.StatusCode = 403
        Write-Host "403 $path"
      }
      elseif (Test-Path -LiteralPath $filePath -PathType Leaf) {
        $ext = [System.IO.Path]::GetExtension($filePath).ToLower()
        $contentType = if ($mime.ContainsKey($ext)) { $mime[$ext] } else { "application/octet-stream" }
        $bytes = [System.IO.File]::ReadAllBytes($filePath)
        $res.ContentType = $contentType
        $res.StatusCode = 200
        $res.OutputStream.Write($bytes, 0, $bytes.Length)
        $res.OutputStream.Flush()
        Write-Host "200 $path ($($bytes.Length) bytes)"
      }
      else {
        $res.StatusCode = 404
        $msg = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found: $path")
        $res.ContentType = "text/plain; charset=utf-8"
        $res.OutputStream.Write($msg, 0, $msg.Length)
        $res.OutputStream.Flush()
        Write-Host "404 $path"
      }
    }
    catch {
      Write-Host "ERROR: $($_.Exception.Message)"
    }
    finally {
      if ($context -ne $null) {
        try { $context.Response.Close() } catch {}
      }
    }
  }
}
finally {
  $listener.Stop()
  $listener.Close()
}
