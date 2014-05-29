#!/bin/sh

#
# RUNS ON LOCAL MACHINE
# TO BE BUILT ON LOCAL MACHINE AND THEN COPIED TO CLUSTER
# BECAUSE CABAL IS NOT INSTALLED ON CLUSTER 
#

cd $TAC_ROOT/components/pipeline
JAVA_HOME="/usr/lib/jvm/java-7-oracle"
LOCALCLASSPATH="$JAVA_HOME/lib/tools.jar:/usr/share/ant/lib/*"
ANT_HOME=/usr/share/ant/
$JAVA_HOME/bin/java -Dant.home=$ANT_HOME -classpath $LOCALCLASSPATH org.apache.tools.ant.Main $*
