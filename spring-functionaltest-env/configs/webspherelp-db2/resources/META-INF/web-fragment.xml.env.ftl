<?xml version="1.0" encoding="UTF-8"?>
<web-fragment xmlns="http://java.sun.com/xml/ns/javaee" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:webfragment="http://java.sun.com/xml/ns/javaee/web-fragment_3_0.xsd"
  xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-fragment_3_0.xsd"
  version="3.0">

  <listener>
    <listener-class>org.h2.server.web.DbStarter</listener-class>
  </listener>
  <context-param>
    <param-name>db.url</param-name>
    <param-value>jdbc:h2:mem:spring-functionaltest;DB_CLOSE_DELAY=-1;INIT=RUNSCRIPT FROM 'classpath:logback-ddl.sql'</param-value>
  </context-param>
  <context-param>
    <param-name>db.user</param-name>
    <param-value>sa</param-value>
  </context-param>
  <context-param>
    <param-name>db.password</param-name>
    <param-value></param-value>
  </context-param>
  <context-param>
    <param-name>db.tcpServer</param-name>
    <param-value>-tcpAllowOthers -tcpPort 9202</param-value>
  </context-param>

  <context-param>
    <param-name>spring.profiles.active</param-name>
    <param-value>${MAIL_SERVER_PROFILE!'nonMailServer'}, ${MQ_SERVER_PROFILE!'nonMqServer'}</param-value>
  </context-param>

  <servlet>
    <servlet-name>appServlet</servlet-name>
    <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
    <init-param>
      <param-name>contextConfigLocation</param-name>
      <!-- ApplicationContext for Spring MVC -->
      <!-- bean定義をオーバーライドするため、spring-mvc.xml - spring-mvc-webspherelp-db2.xml の順にApplicationContextを読み込む -->
      <param-value>classpath*:META-INF/spring/spring-mvc.xml,classpath*:META-INF/spring/spring-mvc-webspherelp-db2.xml</param-value>
    </init-param>
    <load-on-startup>1</load-on-startup>
    <multipart-config>
      <max-file-size>512</max-file-size>
      <max-request-size>8192</max-request-size>
      <file-size-threshold>0</file-size-threshold>
    </multipart-config>
  </servlet>
  <servlet-mapping>
    <servlet-name>appServlet</servlet-name>
    <url-pattern>/</url-pattern>
  </servlet-mapping>

  <servlet>
    <servlet-name>flup0102AppServlet</servlet-name>
    <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
    <init-param>
      <param-name>contextConfigLocation</param-name>
      <param-value>classpath*:META-INF/spring/flup/spring-mvc-flup0102.xml</param-value>
    </init-param>
    <load-on-startup>1</load-on-startup>
    <multipart-config>
      <max-file-size>256</max-file-size>
      <max-request-size>1024</max-request-size>
      <file-size-threshold>64</file-size-threshold>
    </multipart-config>
  </servlet>
  <servlet-mapping>
    <servlet-name>flup0102AppServlet</servlet-name>
    <url-pattern>/flup/0102/*</url-pattern>
  </servlet-mapping>

  <servlet>
    <servlet-name>flup0102006AppServlet</servlet-name>
    <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
    <init-param>
      <param-name>contextConfigLocation</param-name>
      <param-value>classpath*:META-INF/spring/flup/spring-mvc-flup0102006.xml</param-value>
    </init-param>
    <load-on-startup>1</load-on-startup>
    <multipart-config>
      <max-file-size>256</max-file-size>
      <max-request-size>1024</max-request-size>
      <file-size-threshold>64</file-size-threshold>
    </multipart-config>
  </servlet>
  <servlet-mapping>
    <servlet-name>flup0102006AppServlet</servlet-name>
    <url-pattern>/flup/0102/006</url-pattern>
  </servlet-mapping>

  <servlet>
    <servlet-name>flup0103AppServlet</servlet-name>
    <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
    <init-param>
      <param-name>contextConfigLocation</param-name>
      <param-value>classpath*:META-INF/spring/flup/spring-mvc-flup0103.xml</param-value>
    </init-param>
    <load-on-startup>1</load-on-startup>
    <multipart-config>
      <max-file-size>256</max-file-size>
      <max-request-size>1024</max-request-size>
      <file-size-threshold>64</file-size-threshold>
    </multipart-config>
  </servlet>
  <servlet-mapping>
    <servlet-name>flup0103AppServlet</servlet-name>
    <url-pattern>/flup/0103/*</url-pattern>
  </servlet-mapping>

  <servlet>
    <servlet-name>exhn0601002AppServlet</servlet-name>
    <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
    <init-param>
      <param-name>contextConfigLocation</param-name>
      <param-value>classpath*:META-INF/spring/exhn/spring-mvc-exhn0601002.xml</param-value>
    </init-param>
    <load-on-startup>1</load-on-startup>
    <multipart-config>
      <max-file-size>512</max-file-size>
      <max-request-size>8192</max-request-size>
      <file-size-threshold>0</file-size-threshold>
    </multipart-config>
  </servlet>
  <servlet-mapping>
    <servlet-name>exhn0601002AppServlet</servlet-name>
    <url-pattern>/exhn/0601/002/register</url-pattern>
  </servlet-mapping>

  <servlet>
    <servlet-name>todoWebService</servlet-name>
    <servlet-class>jp.co.ntt.fw.spring.functionaltest.ws.soap.TodoWebServiceImpl</servlet-class>
    <load-on-startup>1</load-on-startup>
  </servlet>
  <servlet-mapping>
    <servlet-name>todoWebService</servlet-name>
    <url-pattern>/ws/TodoWebService</url-pattern>
  </servlet-mapping>

  <filter>
    <filter-name>MultipartFilter</filter-name>
    <filter-class>org.springframework.web.multipart.support.MultipartFilter</filter-class>
  </filter>
  <filter-mapping>
    <filter-name>MultipartFilter</filter-name>
    <url-pattern>/flup/*</url-pattern>
    <url-pattern>/cspr/*</url-pattern>
    <url-pattern>/exhn/*</url-pattern>
    <url-pattern>/rscl/*</url-pattern>
    <url-pattern>/emal/*</url-pattern>
    <url-pattern>/soap/*</url-pattern>
  </filter-mapping>

  <filter>
    <filter-name>HiddenHttpMethodFilter</filter-name>
    <filter-class>org.springframework.web.filter.HiddenHttpMethodFilter</filter-class>
  </filter>
  <filter-mapping>
    <filter-name>HiddenHttpMethodFilter</filter-name>
    <url-pattern>/*</url-pattern>
  </filter-mapping>

  <filter>
    <filter-name>springSecurityFilterChain</filter-name>
    <filter-class>org.springframework.web.filter.DelegatingFilterProxy</filter-class>
  </filter>

  <filter-mapping>
    <filter-name>springSecurityFilterChain</filter-name>
    <url-pattern>/*</url-pattern>
  </filter-mapping>

  <filter-mapping>
    <filter-name>springSecurityFilterChain</filter-name>
    <url-pattern>/athn/1703/001/authenticate</url-pattern>
    <dispatcher>FORWARD</dispatcher>
  </filter-mapping>

</web-fragment>
