@ECHO OFF
IF "%1" == "--all" (
  %0 run %2
) ELSE IF "%1" == "--acceptance" (
  %0 run acceptance %2
) ELSE IF "%1" == "--functional" (
  %0 run functional %2
) ELSE IF "%1" == "--unit" (
  %0 run unit %2
) ELSE IF "%1" == "--all-group" (
  %0 run --group %2
) ELSE IF "%1" == "--acceptance-group" (
  %0 run --group %2 acceptance
) ELSE IF "%1" == "--functional-group" (
  %0 run --group %2 functional
) ELSE IF "%1" == "--unit-group" (
  %0 run --group %2 unit
) ELSE IF "%1" == "--all-html" (
  %0 run --html report.html --coverage-html coverage %2
) ELSE IF "%1" == "--acceptance-html" (
  %0 run --html report.html --coverage-html coverage acceptance %2
) ELSE IF "%1" == "--functional-html" (
  %0 run --html report.html --coverage-html coverage functional %2
) ELSE IF "%1" == "--unit-html" (
  %0 run --html report.html --coverage-html coverage unit %2
) ELSE IF "%1" == "--all-group-html" (
  %0 run --group %2 --html report.html --coverage-html coverage
) ELSE IF "%1" == "--acceptance-group-html" (
  %0 run --group %2 --html report.html --coverage-html coverage acceptance
) ELSE IF "%1" == "--functional-group-html" (
  %0 run --group %2 --html report.html --coverage-html coverage functional
) ELSE IF "%1" == "--unit-group-html" (
  %0 run --group %2 --html report.html --coverage-html coverage unit
) ELSE IF "%1" == "--all-xml" (
  %0 run --xml report.xml --coverage-xml coverage.xml %2
) ELSE IF "%1" == "--acceptance-xml" (
  %0 run --xml report.xml --coverage-xml coverage.xml acceptance %2
) ELSE IF "%1" == "--functional-xml" (
  %0 run --xml report.xml --coverage-xml coverage.xml functional %2
) ELSE IF "%1" == "--unit-xml" (
  %0 run --xml report.xml --coverage-xml coverage.xml unit %2
) ELSE IF "%1" == "--all-group-xml" (
  %0 run --group %2 --xml report.xml --coverage-xml coverage.xml
) ELSE IF "%1" == "--acceptance-group-xml" (
  %0 run --group %2 --xml report.xml --coverage-xml coverage.xml acceptance
) ELSE IF "%1" == "--functional-group-xml" (
  %0 run --group %2 --xml report.xml --coverage-xml coverage.xml functional
) ELSE IF "%1" == "--unit-group-xml" (
  %0 run --group %2 --xml report.xml --coverage-xml coverage.xml unit
) ELSE IF "%1" == "--all-xhtml" (
  %0 run --html report.html --coverage-html coverage --xml report.xml --coverage-xml coverage.xml %2
) ELSE IF "%1" == "--acceptance-xhtml" (
  %0 run --html report.html --coverage-html coverage --xml report.xml --coverage-xml coverage.xml acceptance %2
) ELSE IF "%1" == "--functional-xhtml" (
  %0 run --html report.html --coverage-html coverage --xml report.xml --coverage-xml coverage.xml functional %2
) ELSE IF "%1" == "--unit-xhtml" (
  %0 run --html report.html --coverage-html coverage --xml report.xml --coverage-xml coverage.xml unit %2
) ELSE IF "%1" == "--all-group-xhtml" (
  %0 run --group %2 --html report.html --coverage-html coverage --xml report.xml --coverage-xml coverage.xml
) ELSE IF "%1" == "--acceptance-group-xhtml" (
  %0 run --group %2 --html report.html --coverage-html coverage --xml report.xml --coverage-xml coverage.xml acceptance
) ELSE IF "%1" == "--functional-group-xhtml" (
  %0 run --group %2 --html report.html --coverage-html coverage --xml report.xml --coverage-xml coverage.xml functional
) ELSE IF "%1" == "--unit-group-xhtml" (
  %0 run --group %2 --html report.html --coverage-html coverage --xml report.xml --coverage-xml coverage.xml unit
) ELSE (
  php "%~dp0codecept.phar" %*
)
