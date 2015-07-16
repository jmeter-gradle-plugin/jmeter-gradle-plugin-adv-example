# launch-jmeter

A Maven project to run the latest Jmeter with all plugins included using either Maven or Gradle.  

NOTES: These instructions are a mix of Windows and Linux instructions, and so you need to interpolate.  Getting this project running is as simple as installing Java on your system and then following the instructions below.

## Launching with Gradle

As a user, all you need to do is use the 'gradlew' launcher to execute jmeterEditor task like so:

    gradlew jmeterEditor --info

Or, you can skip those steps and use the included script ```startJmeterWithGradle.bat``` , but using that script requires that you install Gradle on your system.  I suggest instead that you first try to run the above mentioned command.

## Launching with Maven

To run, it requires you have Maven installed on your system.  Execute using the included .bat script 
on Windows.   If you want to run on Linux, just create a similar Bash script.

The script to launch Jmeter from Maven is here: ```startJmeterWithMaven.bat```

When Jmeter GUI starts, in the console you will see the Jmeter version number that is being started.

## SauceLabs WebDriver example

In the ```src/test/jmeter``` folder you will find a number of sample Jmeter .jmx project files. After starting Jmeter, just browse to that folder and open one of the files with the Jmeter application.

Also included, is *SauceLabs-Example.jmx*, an example of running Chrome browser tests from Jmeter within the SauceLabs cloud service.  Requires that you sign up to SauceLabs and create a free 2-thread account.    After signing up, get your ```sauce key```, open the ```src/test/jmeter/SauceLabs-Example.jmx``` project file and then add your SauceLabs user key value (not password) in the included file called ```src/test/jmeter/sauce-key.properties``` and put your SauceLabs username in the included file called ```src/test/jmeter/sauce-user.properties``` .   If something goes wrong when trying this, then enable the debug console window in Jmeter and try to run it again.

## Notes

* Had some trouble loading the SauceLabs-Example.jmx when I use the 1.10.1 plugin of jmeter-maven-plugin in the pom.xml file and using Maven launch script.   Your milage may vary on that.  I recommend using the Gradle launcher.
* I have included a Gradle task called syncToLib that will copy all the .jar dependencies into a local project folder called ```gradle-libs/```, enabling you to easily assemble a classpath, and therefore enable you to launch Jmeter from another non-java tool such as TFS.




