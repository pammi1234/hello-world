<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">

  <modelVersion>4.0.0</modelVersion> 

  <groupId>com.example.maven-project</groupId>
  <artifactId>maven-project</artifactId>
  <packaging>pom</packaging>
  <version>1.0-SNAPSHOT</version>
  <name>Maven Project</name>
  <description>Sample Maven project with a working, deployable site.</description>
  <url>http://www.example.com</url>

  <properties>
    <project.build.sourceEncoding>utf-8</project.build.sourceEncoding>
    <project.reporting.outputEncoding>utf-8</project.reporting.outputEncoding>
  </properties>

  <modules>
    <module>server</module>
    <module>webapp</module>
  </modules>

  <distributionManagement>
    <site>
      <id>site-server</id>
      <name>Test Project Site</name>
      <url>file:///tmp/maven-project-site</url>
    </site>
  </distributionManagement>

  <build>
    <plugins>
      <plugin>
        <artifactId>maven-compiler-plugin</artifactId>
        <configuration>
          <source>1.6</source>
          <target>1.6</target>
        </configuration>
      </plugin>

      <plugin>
        <artifactId>maven-release-plugin</artifactId>
        <configuration>
          <autoVersionSubmodules>true</autoVersionSubmodules>
        </configuration>
      </plugin>

      <plugin>
        <artifactId>maven-site-plugin</artifactId>
        <configuration>
          <reportPlugins>
            <plugin>
              <artifactId>maven-checkstyle-plugin</artifactId>
            </plugin>

            <plugin>
              <artifactId>maven-jxr-plugin</artifactId>
            </plugin>

            <plugin>
              <artifactId>maven-javadoc-plugin</artifactId>
            </plugin>

            <plugin>
              <artifactId>maven-pmd-plugin</artifactId>
            </plugin>

            <plugin>
              <artifactId>maven-surefire-report-plugin</artifactId>
            </plugin>

            <plugin>
              <groupId>org.codehaus.mojo</groupId>
              <artifactId>findbugs-maven-plugin</artifactId>
            </plugin>

            <plugin>
              <groupId>org.codehaus.mojo</groupId>
              <artifactId>taglist-maven-plugin</artifactId>
            </plugin>
          </reportPlugins>
        </configuration>
      </plugin>
    </plugins>

    <pluginManagement>
      <plugins>
        <plugin>
          <artifactId>maven-checkstyle-plugin</artifactId>
          <version>2.8</version>
        </plugin>

        <plugin>
          <artifactId>maven-compiler-plugin</artifactId>
          <version>2.3.2</version>
        </plugin>

        <plugin>
          <artifactId>maven-javadoc-plugin</artifactId>
          <version>2.8</version>
        </plugin>

        <plugin>
          <artifactId>maven-jxr-plugin</artifactId>
          <version>2.3</version>
        </plugin>

        <plugin>
          <artifactId>maven-pmd-plugin</artifactId>
          <version>2.6</version>
        </plugin>

        <plugin>
          <artifactId>maven-project-info-reports-plugin</artifactId>
          <version>2.4</version>
        </plugin>

        <plugin>
          <artifactId>maven-release-plugin</artifactId>
          <version>2.2.1</version>
        </plugin>

        <plugin>
          <artifactId>maven-resources-plugin</artifactId>
          <version>2.5</version>
        </plugin>

        <plugin>
          <artifactId>maven-site-plugin</artifactId>
          <version>3.0</version>
        </plugin>

        <plugin>
          <artifactId>maven-surefire-report-plugin</artifactId>
          <version>2.11</version>
        </plugin>

        <plugin>
          <artifactId>maven-surefire-plugin</artifactId>
          <version>2.11</version>
        </plugin>

        <plugin>
          <groupId>org.codehaus.mojo</groupId>
          <artifactId>findbugs-maven-plugin</artifactId>
          <version>2.3.3</version>
        </plugin>

        <plugin>
          <groupId>org.codehaus.mojo</groupId>
          <artifactId>taglist-maven-plugin</artifactId>
          <version>2.4</version>
        </plugin>

        <plugin>
          <groupId>org.mortbay.jetty</groupId>
          <artifactId>jetty-maven-plugin</artifactId>
          <version>8.0.0.M1</version>
        </plugin>
      </plugins>
    </pluginManagement>
  </build>

  <dependencyManagement>
    <dependencies>
      <dependency>
        <groupId>javax.servlet</groupId>
        <artifactId>servlet-api</artifactId>
        <version>2.5</version>
      </dependency>

      <dependency>
        <groupId>javax.servlet.jsp</groupId>
        <artifactId>jsp-api</artifactId>
        <version>2.2</version>
      </dependency>

      <dependency>
        <groupId>junit</groupId>
        <artifactId>junit-dep</artifactId>
        <version>4.10</version>
        <scope>test</scope>
      </dependency>

      <dependency>
        <groupId>org.hamcrest</groupId>
        <artifactId>hamcrest-core</artifactId>
        <version>1.2.1</version>
        <scope>test</scope>
      </dependency>

      <dependency>
        <groupId>org.hamcrest</groupId>
        <artifactId>hamcrest-library</artifactId>
        <version>1.2.1</version>
        <scope>test</scope>
      </dependency>

      <dependency>
        <groupId>org.mockito</groupId>
        <artifactId>mockito-core</artifactId>
        <version>1.8.5</version>
        <scope>test</scope>
      </dependency>
    </dependencies>
  </dependencyManagement>

  <scm>
    <connection>scm:git:git@github.com:jleetutorial/maven-project.git</connection>
    <developerConnection>scm:git:git@github.com:jleetutorial/maven-project.git</developerConnection>
    <tag>HEAD</tag>
    <url>http://github.com/jleetutorial/maven-project</url>
  </scm>

  <prerequisites>
    <maven>3.0.3</maven>
  </prerequisites>

</project>
