import ballerina/http;

final http:Client httpClient = check new ("test", httpVersion = "1.0", http1Settings = {
    keepAlive: "AUTO",
    chunking: "AUTO",
    proxy: {

    }
});
