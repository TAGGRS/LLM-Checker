___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "LLM Checker - TAGGRS",
  "description": "Get visibility into traffic potentially originating from Large Language Models (LLMs) such as ChatGPT, Google Gemini, Perplexity AI, Microsoft Copilot, and Claude.",
  "containerContexts": [
    "SERVER"
  ]
}

___TEMPLATE_METADATA___

{
  "metadataVersion": 1,
  "termsOfService": true,
  "categories": [
    "ANALYTICS",
    "UTILITY",
    "DATA_WAREHOUSING",
    "EXPERIMENTATION"
  ]
}

___TEMPLATE_PARAMETERS___

[]

___SANDBOXED_JS_FOR_SERVER___

const getRequestHeader = require('getRequestHeader');
const logToConsole = require('logToConsole');
const userAgent = getRequestHeader('user-agent');

logToConsole('--- LLM Checker TAGGRS ---');
logToConsole('Found User-Agent: ', userAgent);

if (!userAgent) {
  logToConsole('Result: FALSE (User-Agent is empty or missing)');
  return false;
}

const uaLower = userAgent.toLowerCase();

const llmBots = [
  'gptbot',
  'chatgpt-user',
  'oai-searchbot',
  'perplexitybot',
  'claudebot',
  'claude-web',
  'google-extended',
  'applebot-extended',
  'meta-externalagent',
  'meta-externalfetcher',
  'amazonbot',
  'cohere-ai',
  'anthropic-ai',
  'diffbot'
];

for (let i = 0; i < llmBots.length; i++) {
  if (uaLower.indexOf(llmBots[i]) !== -1) {
    logToConsole('Result: TRUE (Match met LLM bot: ' + llmBots[i] + ')');
    return true; 
  }
}

logToConsole('Result: FALSE (No LLM match found)');
return false;
