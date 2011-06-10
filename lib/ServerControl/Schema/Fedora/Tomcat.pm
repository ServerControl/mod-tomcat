#
# (c) Jan Gehring <jan.gehring@gmail.com>
# 
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:

package ServerControl::Schema::Fedora::Tomcat;

use strict;
use warnings;

use ServerControl::Schema;
use base qw(ServerControl::Schema::Module);

__PACKAGE__->register(
   
      'jsvc'                        => '/usr/bin/jsvc',
      'bootstrap.jar'               => '/usr/share/tomcat6/bin/bootstrap.jar',
      'catalina-tasks.xml'          => '/usr/share/tomcat6/bin/catalina-tasks.xml',
      'commons-daemon.jar'          => '/usr/share/java/commons-daemon.jar',
      'tomcat-juli.jar'             => '/usr/share/tomcat6/bin/tomcat-juli.jar',
      'tool-wrapper.sh'             => '/usr/bin/tomcat6-tool-wrapper',

      # libraries

      'annotations-api.jar'         => '/usr/share/java/tomcat6/annotations-api.jar',
      'catalina-ant.jar'            => '/usr/share/java/tomcat6/catalina-ant.jar',
      'catalina-ha.jar'             => '/usr/share/java/tomcat6/catalina-ha.jar',
      'catalina.jar'                => '/usr/share/java/tomcat6/catalina.jar',
      'catalina-tribes.jar'         => '/usr/share/java/tomcat6/catalina-tribes.jar',
      'el-api.jar'                  => '/usr/share/java/tomcat6/tomcat6-el-2.1-api.jar',
      'jasper-el.jar'               => '/usr/share/java/tomcat6/jasper-el.jar',
      'jasper-jdt.jar'              => '/usr/share/java/tomcat6/jasper-jdt.jar',
      'jasper.jar'                  => '/usr/share/java/tomcat6/jasper.jar',
      'jsp-api.jar'                 => '/usr/share/java/tomcat6/tomcat6-jsp-2.1-api.jar',
      'servlet-api.jar'             => '/usr/share/java/tomcat6/tomcat6-servlet-2.5-api.jar',
      'tomcat-coyote.jar'           => '/usr/share/java/tomcat6/tomcat-coyote.jar',
      'tomcat-dbcp.jar'             => '/usr/share/java/tomcat6/commons-dbcp.jar',
      'tomcat-i18n-es.jar'          => '/usr/share/java/tomcat6/tomcat-i18n-es.jar',
      'tomcat-i18n-fr.jar'          => '/usr/share/java/tomcat6/tomcat-i18n-fr.jar',
      'tomcat-i18n-ja.jar'          => '/usr/share/java/tomcat6/tomcat-i18n-ja.jar',

);

1;
