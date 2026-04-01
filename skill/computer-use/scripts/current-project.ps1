$ErrorActionPreference = 'Stop'

$skillRoot = Split-Path -Parent $PSScriptRoot
if ($IsMacOS) {
  Join-Path $skillRoot 'project/platforms/macos'
} elseif ($IsLinux) {
  Join-Path $skillRoot 'project/platforms/linux'
} elseif ($IsWindows) {
  Join-Path $skillRoot 'project/platforms/windows'
} else {
  throw "Unsupported platform"
}
