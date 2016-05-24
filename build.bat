docker build -t digitaldrummerj/java -f .\java\java-dockerfile .
docker build -t digitaldrummerj/android -f .\android\android-dockerfile .
docker build -t digitaldrummerj/android-nodejs -f .\android-nodejs\android-node-dockerfile .
docker build -t digitaldrummerj/cordova -f .\cordova\cordova-dockerfile .
docker build -t digitaldrummerj/ionic1 -f .\ionic1\ionic1-dockerfile .
docker build -t digitaldrummerj/ionic2 -f .\ionic2\ionic2-dockerfile .