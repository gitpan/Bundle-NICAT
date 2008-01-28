use inc::Module::Install;

print <<EOTEXT;

******************************************************************************
Other distributions might be needed as well, but they are not inclued in the
bundle.

- mod_perl 2: not everyone needs this
- DBD::Oracle: this needs manual configuration
- XML::Xerces: this needs manual configuration
******************************************************************************

EOTEXT

include 'Module::AutoInstall';

name 'Bundle-NICAT';
all_from 'lib/Bundle/NICAT.pm';
perl_version '5.006';

process_templates(
    first_year => 2007,
    rest_from  => "$ENV{HOME}/.mitlib/standard_pod",
    start_tag  => '{%',
    end_tag    => '%}',
);

use_standard_tests(without => 'pod_coverage');
auto_install;
auto_include;
WriteAll;
