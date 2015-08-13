# launch-jmeter

A Gradle project to run the latest Jmeter with all plugins included.  

NOTES: These instructions are a mix of Windows and Linux instructions, and so you need to interpolate.  Getting this project running is as simple as installing Java on your system and then following the instructions below.

## Launching with Gradle

As a user, all you need to do is use the 'gradlew' launcher to execute jmeterEditor task like so:

    gradlew jmGui --info

Or, you can skip those steps and use the included script ```startJmeterWithGradle.bat```.

## SauceLabs WebDriver example

In the ```src/test/jmeter``` folder you will find a number of sample Jmeter .jmx project files. After starting Jmeter, just browse to that folder and open one of the files with the Jmeter application.

Also included, is *SauceLabs-Example.jmx*, an example of running Chrome browser tests from Jmeter within the SauceLabs cloud service.  Requires that you sign up to SauceLabs and create a free 2-thread account.    After signing up, get your ```sauce key```, open the ```src/test/jmeter/SauceLabs-Example.jmx``` project file and then add your SauceLabs user key value (not password) in the included file called ```src/test/jmeter/sauce-key.properties``` and put your SauceLabs username in the included file called ```src/test/jmeter/sauce-user.properties``` .   If something goes wrong when trying this, then enable the debug console window in Jmeter and try to run it again.

## Notes

To use snapshot, use this repo:
url 'http://oss.jfrog.org/artifactory/oss-snapshot-local'
and thid dependency:
classpath "net.foragerr.jmeter:jmeter-gradle-plugin:+"
