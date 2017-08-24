# Meteor Desktop

How to create a desktop app with Meteor, Electron and Electrify in shitty Windows.

## Installing dependencies

Copy the `.electrify` folder to your project.

### Output folder structure

Create the folder `C:/MeteorDesktop/AppName/output`

* The output path needs to be short to avoid conflicts when installing packages from NPM in shitty Windows.

Copy the file `./.electrify/inno-setup.iss` to `C:/MeteorDesktop/AppName`.

### Electrify

Repository: https://github.com/arboleya/electrify

Install `electrify` globally:

    npm install -g electrify

Add the package script to `package.json`:

    {
      "scripts": {
        "package": "npm run electrify package -o C:/MeteorDesktop/AppName/output/ -- --app-version=2.1.2 --icon=public/images/favicon.ico --overwrite=true"
      }
    }

### Inno Setup

Download and install Inno Setup from http://www.jrsoftware.org/isdl.php

## Create desktop App

Just run electrify:

    npm run package

The App will be created at `C:/MeteorDesktop/AppName/output/AppName-win32-x64`

### Apply the MongoDB patch

Copy the content of `./electrify/mongodb-path` to `C:/MeteorDesktop/AppName/output/AppName-win32-x64` and replace every folder and file.

Run AppName.exe in `C:/MeteorDesktop/AppName/output/AppName-win32-x64`.

## Create the installer

Rename `C:/MeteorDesktop/AppName/output/AppName-win32-x64` to `C:/MeteorDesktop/AppName/output/o` to avoid errors with the path length in shitty Windows.

Open and compile `C:/MeteorDesktop/AppName/innon-setup.iss`.

If there is no issues with the path length, the 