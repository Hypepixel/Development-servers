# Development-server
Local development server setup to quickly test plugins and configs. This repository helps automate the process of setting up a development server for Spigot.

## Table of contents
- [Usage](#usage)
    - [prerequisites](#prerequisites)
    - [steps](#steps)
- [references](#references)
- [License](#license)

## Usage
### Prerequisites
Name | Description | Version
------------ | ------------- | -------------
[cURL](https://curl.haxx.se/) | Curl is used in command lines or scripts to transfer data. | Windows 32 or 64 bit
[Java](https://www.oracle.com/technetwork/java/javase/overview/index.html) | Java lets you develop and deploy Java applications on desktops and servers. | JDK and JRE 8 or newer

### Steps
In `Server` you will find the build scripts. 
* Run `Install.bat`
    * This will download the latest `BuildTools.jar` from `https://hub.spigotmc.org/`.
    * It will ask you to specify which version of Spigot to install. They can be found [here](https://www.spigotmc.org/wiki/buildtools/#versions).
    * It will then run `BuildTools.jar`to clone the specified version of Spigot.
    * If the installation was succesful it will rename the Spigot java file to `Spigot.jar` for convenience of the `Start.bat` script.
* Run `Start.bat`
    * This will start the server by calling `Spigot.jar`.
    
## References
[Simple instructions to build CraftBukkit and Spigot](https://www.spigotmc.org/wiki/buildtools/)

[A guide to installing a Spigot server](https://www.spigotmc.org/wiki/spigot-installation/)


## License
This project is licensed under the [MIT License](https://github.com/Gloryrock/Development-server/blob/master/LICENSE.md).
Licenses of tools and dependencies are not included and may vary.
