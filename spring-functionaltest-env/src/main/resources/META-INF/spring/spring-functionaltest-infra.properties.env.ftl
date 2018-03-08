# JDBC Driver settings
database=H2
database.url=jdbc:h2:mem:spring-functionaltest;DB_CLOSE_DELAY=-1;MVCC=true;LOCK_TIMEOUT=2000
database.username=sa
database.password=
database.driverClassName=org.h2.Driver
database.url.open=jdbc:h2:mem:spring-functionaltest-open;DB_CLOSE_DELAY=-1
database.url.close=jdbc:h2:mem:spring-functionaltest-close;DB_CLOSE_DELAY=-1
dialect=jp.co.ntt.fw.spring.functionaltest.infra.hibernate.dialect.ExtendedH2Dialect

# connection pool
cp.maxActive=96
cp.maxIdle=16
cp.minIdle=0
cp.maxWait=60000

# File Upload setting
app.upload.temporaryDirectory=/tmp/spring-functionaltest-web/upload/temporaryDirectory/
app.upload.directory=/tmp/spring-functionaltest-web/upload/uploadDirectory/

# enabled column value
enabledValue=1

# Email settings (No-auth)
mail.smtp.host=localhost
mail.smtp.port=7025
mail.pop3.host=localhost
mail.pop3.port=7110
mail.smtp.port.invalid=7024

# Email settings (With-auth)
mail2.smtp.host=localhost
mail2.smtp.port=7025
mail2.smtp.user=info@auth-example.com
mail2.smtp.password=Ntt01
mail2.pop3.host=localhost
mail2.pop3.port=7110
mail2.smtp.password.invalid=password

# Email settings ('From' account)
mail.from.user=info
mail.from.password=Ntt01
mail.from.address=info@noauth-example.com
mail2.from.address=info@auth-example.com

# SOAP&RSCL connect settings
connect.host=localhost
connect.port=8080

# SOAP timeout settings
## WebService sleep time
soap.timeout.sleepMilliseconds=3000
## WebService Proxy timeout settings
soap.request.timeout.key=javax.xml.ws.client.receiveTimeout
soap.request.timeout.value=1000
soap.connect.timeout.key=javax.xml.ws.client.connectionTimeout
soap.connect.timeout.value=2000

# REST API Capacity (RestClient)
rscl.asyncRestTemplate.queueCapacity=3
rscl.asyncRestTemplate.maxPoolSize=5

# JMS settings
jms.mq.host=localhost
jms.mq.port=61616
jms.mq.minLargeMessageSize=250000
jms.mq.priority=1
jms.mq.deliveryMode=2

jmss.JndiDestinationResolver.resourceRef=true
app.jms.temporaryDirectory=/tmp/spring-functionaltest-web/jms/temporaryDirectory/
app.jms.receiveWaitTime=4000
app.jms.addReceiveWaitTime=1000
app.jms.receiveCheckInterval=200

jndi.prefix=java:comp/env/

# OAuth2 setting
oth2.server.protocol=${OAUTH2_PROTOCOL!'http'}
oth2.server.host=${HOST_IP!'localhost'}
oth2.server.port=${OAUTH2_PORT!'8080'}
