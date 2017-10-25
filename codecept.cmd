@ECHO OFF
IF "%1" == "--unit" (
  %0 run unit %2
) ELSE IF "%1" == "--unit-html" (
  %0 run --html report.html --coverage-html coverage unit %2
) ELSE IF "%1" == "--unit-group" (
  %0 run --group %2 unit
) ELSE IF "%1" == "--unit-group-html" (
  %0 run --group %2 --html report.html --coverage-html coverage unit
) ELSE (
  php "%~dp0codecept.phar" %*
)
