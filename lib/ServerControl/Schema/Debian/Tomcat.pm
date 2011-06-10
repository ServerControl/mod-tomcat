#
# (c) Jan Gehring <jan.gehring@gmail.com>
# 
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:

package ServerControl::Schema::Debian::Tomcat;

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
      'tool-wrapper.sh'             => '/usr/share/tomcat6/bin/tool-wrapper.sh',

      # libraries

      'annotations-api.jar'         => '/usr/share/java/annotations-api.jar',
      'catalina-ant.jar'            => '/usr/share/java/catalina-ant.jar',
      'catalina-ha.jar'             => '/usr/share/java/catalina-ha.jar',
      'catalina.jar'                => '/usr/share/java/catalina.jar',
      'catalina-tribes.jar'         => '/usr/share/java/catalina-tribes.jar',
      'el-api.jar'                  => '/usr/share/java/el-api-2.1.jar',
      'jasper-el.jar'               => '/usr/share/java/jasper-el.jar',
      'jasper-jdt.jar'              => '/usr/share/tomcat6/lib/jasper-jdt.jar',
      'jasper.jar'                  => '/usr/share/java/jasper.jar',
      'jsp-api.jar'                 => '/usr/share/tomcat6/jsp-api.jar',
      'servlet-api.jar'             => '/usr/share/tomcat6/servlet-api.jar',
      'tomcat-coyote.jar'           => '/usr/share/tomcat6/tomcat-coyote.jar',
      'tomcat-dbcp.jar'             => '/usr/share/tomcat6/commons-dbcp.jar',
      'tomcat-i18n-es.jar'          => '/usr/share/tomcat6/tomcat-i18n-es.jar',
      'tomcat-i18n-fr.jar'          => '/usr/share/tomcat6/tomcat-i18n-fr.jar',
      'tomcat-i18n-ja.jar'          => '/usr/share/tomcat6/tomcat-i18n-ja.jar',

);

1;
