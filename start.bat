@ECHO OFF
setlocal enabledelayedexpansion
set max=0
for %%x in (pogo.scraper-all-*.jar) do (
  set "FN=%%~nx"
  set "FN=!FN:version-=!"
  if !FN! GTR !max! set max=!FN!
)
echo highest version: %max%.jar

java -jar %max%.jar
pause
