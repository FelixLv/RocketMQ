git pull

git checkout develop

rm -rf target
rm -f devenv

if [ -z "$JAVA_HOME" ]; then
  JAVA_HOME=/opt/taobao/java
fi

export PATH=/opt/taobao/mvn/bin:$JAVA_HOME/bin:$PATH
mvn -Dmaven.test.skip=true clean package install assembly:assembly -U

ln -s target/alibaba-rocketmq-3.0.7-SNAPSHOT.dir/alibaba-rocketmq devenv
