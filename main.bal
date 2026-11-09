import ballerina/http;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service /hello on httpDefaultListener {
    resource function get greeting() returns string|error {
        string stringResult = check aiAgent.run("Hello, how are you?");
        return stringResult;
    }
}
