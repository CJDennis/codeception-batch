# Batch file for extended Codeception options

This Windows batch file gives you some convenient shorthand options to Codeception.

Place the `codecept.cmd` file in the same directory as `codecept.phar` and make sure that
both that directory and PHP are available in the current Windows `%PATH%` environment variable.

The options are to run the `codecept` batch file are:

`codecept --<type>[-group][-html] [<name>]`  
or  
`codecept [<option-1>] [<option-2>] ... [<option-n>]`

where:
- `<type>` is one of `acceptance`, `functional`, `unit`, or `all`
- `-group` means run the named group, otherwise run the named individual test, if `<name>` is supplied
- `-html` means output both an HTML report at `_output/report.html`
and code coverage reports in `_output/coverage/` (the defaults)
- `<name>` is the name of the individual test to run, or the name of the group if `-group` is also supplied

The options `--all` and `--all-group` are not any more useful than running `php codecept.phar [--group]`
without these options, however, they are included for completeness. If you use `--all` or `--all-html`,
the optional `<name>`, if included, must be a suite name such as `unit`, `acceptance`, etc.

The shorthand options only accept one name after the option is specified.
You can run any normal Codeception command with any number of options
if you don't use any of the shorthand options defined above,
i.e. `codecept <options>` is a shorthand for `php codecept.phar <options>`.

###Examples
`codecept --acceptance UserLoginCest`

Executes the **acceptance** tests in `UserLoginCest.php`.

`codecept --functional-html`

Executes all the **functional** tests with HTML reporting and code coverage.

`codecept --unit-group Slow`

Executes all the **unit** tests in the `Slow` group.

`codecept --all-group-html Slow`

Executes all the tests in the `Slow` group in **all suites** with HTML reporting and code coverage.
