# JDL
 
## Generate backend services with following command (taken from output of jhipster jdl -h):

Usage: jhipster jdl|import-jdl [options] [jdlFiles...]

Create entities from the JDL file/content passed in argument.

By default everything is run in parallel. If you like to interact with the console use '--interactive' flag.
Note: jhipster import-jdl is the same as 'jhipster jdl --skip-sample-repository'

### Options:

--skip-install Do not automatically install dependencies (default: false)

--interactive Run generation in series so that questions can be interacted with (default: false)

--db <value> Provide DB option for the application when using skip-server flag

--json-only Generate only the JSON files and skip entity regeneration (default: false)

--ignore-application Ignores application generation (default: false)

--ignore-deployments Ignores deployments generation (default: false)

--skip-ui-grouping Disable the UI grouping behavior for entity client side code (default: false)

--skip-db-changelog Disable generation of database changelogs (default: false)

--skip-sample-repository Disable fetching sample files when the file is not a URL (default: false)

--inline <value> Pass JDL content inline. Argument can be skipped when passing this

-h, --help display help for command

### Arguments:

jdlFiles # The JDL file names Type: String[] Required: true if --inline is not set

### Example:

jhipster jdl myfile.jdl

jhipster jdl myfile.jdl --interactive

jhipster jdl myfile1.jdl myfile2.jdl

jhipster jdl --inline "application { config { baseName jhapp, testFrameworks [protractor] }}"

jhipster jdl --inline \
 "application {
config {
baseName jhapp,
testFrameworks [protractor]
}
}"
