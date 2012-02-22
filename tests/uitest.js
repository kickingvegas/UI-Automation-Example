#import "../tuneup/tuneup.js"

var target = UIATarget.localTarget();
var app = target.frontMostApp();
var topNode = app.mainWindow();

UIALogger.logMessage("Home Screen");
target.logElementTree();

topNode.navigationBar().rightButton().tap();
target.delay(3);
topNode.navigationBar().leftButton().tap();
target.delay(3);
topNode.navigationBar().rightButton().tap();
target.delay(3);
topNode.navigationBar().rightButton().tap();
target.delay(3);
topNode.navigationBar().leftButton().tap();
target.delay(3);
topNode.navigationBar().leftButton().tap();
target.delay(3);



var getKeys = function(obj) {
    var keys = [];
    for (var key in obj) {
	keys.push(key);
    }
    return keys;
}

test("oh hai", function (target, app) {
    topNode = app.mainWindow();
    var b = topNode.buttons()[1];
    b.tap();

    var console = UIALogger;
    console.log = UIALogger.logMessage;
    console.log(b.name());
    console.log(b.label());
    console.log(b.toString());

    target.delay(2);
    
});

test("next", function (target, app) {
    topNode = app.mainWindow();
    topNode.navigationBar().rightButton().tap();

    target.delay(5);
    
});



/*
if (b.hasOwnProperty('name'))
    UIALogger.logMessage(b.name);
if (b.hasOwnProperty('label'))
    UIALogger.logMessage(b.label);
*/





