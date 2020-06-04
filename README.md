# Development Servers
Local scripts for Spigot, PaperMC, and Cuberite development server setups to quickly test plugins and configs. This repository helps automate the process of setting up development servers. The scripts are programmed to use a clean folder structure with paths like `build` and `server` to seperate build steps and ouput.

## Table of contents
- [Usage](#usage)
    - [Windows](#windows)
        - [Prerequisites](#prerequisites)
    - [Linux](#linux)
        - [Prerequisites](#prerequisites)
- [Steps](#steps)
- [References](#references)
- [License](#license)

## Usage
### Windows
#### Prerequisites
Name | Description | Version
------------ | ------------- | -------------
[cURL](https://curl.haxx.se/) | Curl is used in command lines or scripts to transfer data. | Windows 32 or 64 bit
[Java](https://www.oracle.com/technetwork/java/javase/overview/index.html) | Java lets you develop and deploy Java applications on desktops and servers. | JDK and JRE 8 or newer

### Linux
#### Prerequisites
Name | Description | Version
------------ | ------------- | -------------
[cURL](https://curl.haxx.se/) | Curl is used in command lines or scripts to transfer data. | Linux (any distro)
[Java](https://openjdk.java.net/) | Java lets you develop and deploy Java applications on desktops and servers. | OpenJDK and OpenJRE 8 or newer

### Steps
In `spigot`, `cuberite` and `paper` you will find the build and start scripts. 
* Run `install.bat`
    * This will download the latest `BuildTools.jar` or server jar directly from the download API.
    * It will ask you to specify which version of Minecraft to install. They can be found [here](https://www.spigotmc.org/wiki/buildtools/#versions). Please keep in mind that the latest version is not always updated immediately.
    * For Spigot it will then run `BuildTools.jar` to clone the specified version of Spigot.
    * If the installation was succesful it will rename the java file to `spigot.jar`, `cuberite.jar` or `paper.jar` for convenience.
* Run `start.bat`
    * This will start the server by calling the server jar with `-nogui` by default.

## References
[Simple instructions to build CraftBukkit and Spigot](https://www.spigotmc.org/wiki/buildtools/)

[A guide to installing a Spigot server](https://www.spigotmc.org/wiki/spigot-installation/)

## License
This project is licensed under the [MIT License](https://github.com/Gloryrock/Development-server/blob/master/LICENSE.md).
Licenses of tools and dependencies are not included and may vary.
