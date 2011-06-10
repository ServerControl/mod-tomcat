use ExtUtils::MakeMaker;

WriteMakefile(
   NAME => 'ServerControl-Tomcat',
   VERSION_FROM => 'lib/ServerControl/Module/Tomcat.pm',
   PREREQ_PM => {'ServerControl' => '0.93'},
   LICENSE => 'bsd'
);

