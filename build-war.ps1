# build-war.ps1 - Empaqueta el proyecto en target\ejercicios-jstl.war
# Es un proyecto JSP puro (sin clases Java), asi que solo hay que comprimir
# las carpetas de la aplicacion en un .war. Usa la herramienta "jar" del JDK.
$ErrorActionPreference = "Stop"

$raiz   = $PSScriptRoot
$salida = Join-Path $raiz "target"
$war    = Join-Path $salida "ejercicios-jstl.war"

# Busca jar.exe en JAVA_HOME; si no existe esa ruta, usa el "jar" del PATH
$jar = "jar"
if ($env:JAVA_HOME) {
    $candidato = Join-Path $env:JAVA_HOME "bin\jar.exe"
    if (Test-Path $candidato) { $jar = $candidato }
}

New-Item -ItemType Directory -Force -Path $salida | Out-Null
if (Test-Path $war) { Remove-Item $war -Force }

# Todo lo que va DENTRO del WAR (se excluye lo que no es parte de la web)
$excluir = @("target", "clevercloud", "sql", ".git", ".gitignore", ".vscode", "build-war.ps1")
$items = Get-ChildItem -Path $raiz -Force | Where-Object { $excluir -notcontains $_.Name } | ForEach-Object { $_.Name }

$argumentos = @("cfM", $war)
foreach ($i in $items) { $argumentos += @("-C", $raiz, $i) }

& $jar @argumentos
if ($LASTEXITCODE -ne 0) { throw "Fallo al generar el WAR" }

Write-Host "WAR generado: $war" -ForegroundColor Green
