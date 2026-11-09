import ballerina/ai;
import ballerina/http;
import ballerina/mime;

# Remove a specified resource from an HTTP endpoint.
# + headers - The entity headers
# + mediaType - The MIME type header of the request entity
# + message - An optional HTTP outbound request message or any allowed payload
# + path - Resource path
# + return - Type of the variable
@ai:AgentTool
@display {label: "", iconPath: "https://bcentral-packageicons.azureedge.net/images/ballerina_http_2.16.2.png"}
isolated function deleteTool(map<string|string[]> headers, string mediaType, mime:Entity[] message, string path) returns http:Response|anydata|stream<http:SseEvent, error?>|error {
    http:Response|anydata|stream<http:SseEvent, error?> var1 = check httpClient->delete(path);
    return var1;
}

final ai:Agent aiAgent = check new (
    systemPrompt = {role: string `test`, instructions: string `test`}, model = check ai:getDefaultModelProvider(), tools = [deleteTool]
);
