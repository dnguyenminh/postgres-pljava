SET pljava.libjvm_location TO '/usr/lib/jvm/java-8-oracle/jre/lib/amd64/server/libjvm.so';
ALTER DATABASE postgres SET pljava.libjvm_location FROM CURRENT;
CREATE EXTENSION pljava;
SELECT sqlj.install_jar('file:///pljava/pljava-examples/target/pljava-examples-1.6.0-SNAPSHOT.jar', 'examples', true);
SHOW search_path;
SELECT sqlj.get_classpath('javatest');
SELECT sqlj.set_classpath('javatest', 'examples');
SELECT sqlj.get_classpath('javatest');
SELECT javatest.java_addone(3);
