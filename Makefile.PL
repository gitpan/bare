use ExtUtils::MakeMaker;

use strict;

WriteMakefile(
  'NAME'	 => 'bare',
  'VERSION_FROM' => 'bare.pm',
  'PREREQ_PM'    => { },

  'dist'	=> { COMPRESS => 'gzip -9', SUFFIX => 'gz' },
);
