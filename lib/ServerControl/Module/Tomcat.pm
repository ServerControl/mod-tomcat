#
# (c) Jan Gehring <jan.gehring@gmail.com>
# 
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:

package ServerControl::Module::Tomcat;

use strict;
use warnings;

our $VERSION = '0.93';

use ServerControl::Module;
use ServerControl::Commons::Process;

use base qw(ServerControl::Module);

__PACKAGE__->Implements( qw(ServerControl::Module::PidFile) );

__PACKAGE__->Parameter(
   help  => { isa => 'bool', call => sub { __PACKAGE__->help; } },
);

sub help {
   my ($class) = @_;

   print __PACKAGE__ . " " . $ServerControl::Module::Tomcat::VERSION . "\n";

   printf "  %-30s%s\n", "--name=", "Instance Name";
   printf "  %-30s%s\n", "--path=", "The path where the instance should be created";
   print "\n";
   printf "  %-30s%s\n", "--user=", "Tomcat User";
   printf "  %-30s%s\n", "--group=", "Tomcat Group";
   print "\n";
   printf "  %-30s%s\n", "--create", "Create the instance";
   printf "  %-30s%s\n", "--start", "Start the instance";
   printf "  %-30s%s\n", "--stop", "Stop the instance";

}

sub start {
   my ($class) = @_;

   my ($name, $path) = ($class->get_name, $class->get_path);

   my $args        = ServerControl::Args->get;
   my $pid_dir     = ServerControl::FsLayout->get_directory("Runtime", "pid");
   my $bin_dir     = ServerControl::FsLayout->get_directory("Base", "bin");
   my $log_dir     = ServerControl::FsLayout->get_directory("Runtime", "log");
   my $run_dir     = ServerControl::FsLayout->get_directory("Runtime", "pid");
   my $exec_file   = ServerControl::FsLayout->get_file("Exec", "jsvc");
   my $java_home   = $args->{"java-home"};
   my $user        = $args->{"user"};

   spawn("JAVA_HOME=$java_home $path/$exec_file -cp $path/$bin_dir/tomcat-juli.jar:$path/$bin_dir/bootstrap.jar:$path/$bin_dir/commons-daemon.jar -Dcatalina.home=$path -Dcatalina.base=$path -user $user -outfile $path/$log_dir/catalina.out -errfile $path/$log_dir/catalina.err -pidfile $path/$run_dir/$name.pid org.apache.catalina.startup.Bootstrap");

}


1;
