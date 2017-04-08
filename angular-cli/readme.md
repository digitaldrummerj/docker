    _                      _                 ____ _     ___
   / \   _ __   __ _ _   _| | __ _ _ __     / ___| |   |_ _|
  / △ \ | '_ \ / _` | | | | |/ _` | '__|   | |   | |    | |
 / ___ \| | | | (_| | |_| | | (_| | |      | |___| |___ | |
/_/   \_\_| |_|\__, |\__,_|_|\__,_|_|       \____|_____|___|
               |___/
@angular/cli: 1.0.0
node: 6.10.1
npm: 3.10.10
os: linux x64
package manager: npm
docker hub: 

Usage examples
==============

This image has the same usage as Angular CLI (https://cli.angular.io/)

Creating a project
==================

`docker run -it --rm -w /opt -v $(pwd):/opt digitaldrummerj/angular-cli ng new my-project-name`

Generating a component
======================

`docker run -it --rm -w /opt -v $(pwd):/opt digitaldrummerj/angular-cli ng g component sample-component`

Serving
=======

`docker run -it --rm -w /opt -v $(pwd):/opt -p 4200:4200 digitaldrummerj/angular-cli ng serve --host 0.0.0.0`