sails: 1.0.0
node: 6.10.1
npm: 3.10.10
os: linux x64
package manager: npm
docker hub: 

Usage examples
==============

This image has the same usage as Sails (https://sailsjs.org)

Creating a project
==================

`docker run -it --rm -w /opt -v $(pwd):/opt digitaldrummerj/sails:0.12.13 sails new ProjectName`

Generating an API
======================

``docker run -it --rm -w /opt -v $(pwd):/opt digitaldrummerj/sails:0.12.13 sails generate api ApiName`

Serving
=======

`docker run -it --rm -w /opt -v $(pwd):/opt -p 4200:4200 digitaldrummerj/sails:0.12.13 sails lift`