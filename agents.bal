import ballerina/ai;

final ai:Agent aiAgent = check new (
    systemPrompt = {role: string `test`, instructions: string `test`}, model = check ai:getDefaultModelProvider(), tools = []
);
