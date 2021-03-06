<?xml version='1.0' encoding='utf-8'?>
<!-- web application context file for tomcat. -->
<!-- this file should be place at CATALINA_HOME/conf/Catalina/localhost/spring-functionaltest-web.xml -->
<Context>

  <Resource name="jdbc/springFunctionaltestDataSource" type="javax.sql.DataSource"
    driverClassName="oracle.jdbc.OracleDriver" username="cfw" password="cfw"
    url="jdbc:oracle:thin:@${HOST_IP!'localhost'}:${DBSRV_DB_PORT!'1521'}/teradb" maxIdle="16"
    minIdle="0" maxWait="60000" maxActive="96" />

  <Resource name="jdbc/springFunctionaltestDataSourceOpen" type="javax.sql.DataSource"
    driverClassName="oracle.jdbc.OracleDriver" username="cfw_open" password="cfw_open"
    url="jdbc:oracle:thin:@${HOST_IP!'localhost'}:${DBSRV_DB_PORT!'1521'}/teradb" maxIdle="16"
    minIdle="0" maxWait="60000" maxActive="96" />

  <Resource name="jdbc/springFunctionaltestDataSourceClose" type="javax.sql.DataSource"
    driverClassName="oracle.jdbc.OracleDriver" username="cfw_close" password="cfw_close"
    url="jdbc:oracle:thin:@${HOST_IP!'localhost'}:${DBSRV_DB_PORT!'1521'}/teradb" maxIdle="16"
    minIdle="0" maxWait="60000" maxActive="96" />

  <Loader className="org.apache.catalina.loader.VirtualWebappLoader"
    virtualClasspath="${VM_TOMCAT_ENV_JAR_DIR!'/opt/tomcat/tomcat/webapps-env-jars/spring-functionaltest-env-tomcat-oracle'}/*.jar" />
  <JarScanner scanAllDirectories="true" />

  <Resource name="mail/Session_postfix-dovecot" auth="Container" type="javax.mail.Session"
    mail.smtp.host="${MAIL_HOST!'localhost'}" mail.smtp.port="${SMTP_PORT!'7025'}" mail.pop3.host="${MAIL_HOST!'localhost'}"
    mail.pop3.port="${POP3_PORT!'7110'}" />

  <Resource auth="Container" brokerName="ActiveMQBroker" brokerURL="tcp://${MQ_HOST!'localhost'}:${MQ_PORT!'61616'}"
    password="admin" userName="admin" description="JMS Connection Factory" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    name="jms/NormalConnectionFactory" type="org.apache.activemq.ActiveMQConnectionFactory"
    useEmbeddedBroker="false" />
  <Resource name="jms/topic/TestTopic0301004" auth="Container"
    type="org.apache.activemq.command.ActiveMQTopic" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestTopic0301004" />

  <Resource name="jms/queue/TestQueue0102001" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0102001" />
  <Resource name="jms/queue/TestQueue0103001" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0103001" />
  <Resource name="jms/queue/TestQueue0301001" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0301001" />
  <Resource name="jms/queue/TestQueue0301003" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0301003" />
  <Resource name="jms/queue/TestQueue0302001" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0302001" />
  <Resource name="jms/queue/TestQueue0303001" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0303001" />
  <Resource name="jms/queue/TestQueue0303002" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0303002" />
  <Resource name="jms/queue/TestQueue0401002" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0401002" />
  <Resource name="jms/queue/TestQueue0401003" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0401003" />
  <Resource name="jms/queue/TestQueue0402001A" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0402001A" />
  <Resource name="jms/queue/TestQueue0402001B" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0402001B" />
  <Resource name="jms/queue/TestQueue0403001A" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0403001A" />
  <Resource name="jms/queue/TestQueue0403001B" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0403001B" />
  <Resource name="jms/queue/TestQueue0403001C" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0403001C" />
  <Resource name="jms/queue/TestQueue0403003A" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0403003A" />
  <Resource name="jms/queue/TestQueue0403003B" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0403003B" />
  <Resource name="jms/queue/TestQueue0404001" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0404001" />
  <Resource name="jms/queue/TestQueue0404002" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0404002" />
  <Resource name="jms/queue/TestQueue0501001" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0501001" />
  <Resource name="jms/queue/TestQueue0601001" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0601001" />
  <Resource name="jms/queue/TestQueue0601002" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0601002" />
  <Resource name="jms/queue/TestQueue0602001" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0602001" />
  <Resource name="jms/queue/TestQueue0602002" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0602002" />
  <Resource name="jms/queue/TestQueue0603001" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0603001" />
  <Resource name="jms/queue/TestQueue0603002" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0603002" />
  <Resource name="jms/queue/TestQueue0604001" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0604001" />
  <Resource name="jms/queue/TestQueue0604002" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0604002" />
  <Resource name="jms/queue/TestQueue0604005" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0604005" />
  <Resource name="jms/queue/TestQueue0604006" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0604006" />
  <Resource name="jms/queue/TestQueue0701001A" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0701001A" />
  <Resource name="jms/queue/TestQueue0701001B" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0701001B" />
  <Resource name="jms/queue/TestQueue0701002A" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0701002A" />
  <Resource name="jms/queue/TestQueue0701002B" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0701002B" />
  <Resource name="jms/queue/TestQueue0701003" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0701003" />
  <Resource name="jms/queue/TestQueue0701004" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0701004" />
  <Resource name="jms/queue/TestQueue0701005" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0701005" />
  <Resource name="jms/queue/TestQueue0701006" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0701006" />
  <Resource name="jms/queue/TestQueue0701007" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0701007" />
  <Resource name="jms/queue/TestQueue0701008" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0701008" />
  <Resource name="jms/queue/TestQueue0802001" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0802001" />
  <Resource name="jms/queue/TestQueue0803001" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0803001" />
  <Resource name="jms/queue/TestQueue0803002A" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0803002A" />
  <Resource name="jms/queue/TestQueue0803002B" auth="Container"
    type="org.apache.activemq.command.ActiveMQQueue" factory="org.apache.activemq.jndi.JNDIReferenceFactory"
    physicalName="TestQueue0803002B" />
</Context>
