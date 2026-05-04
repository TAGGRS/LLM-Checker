___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "LLM Checker - TAGGRS",
  "description": "Get visibility into traffic potentially originating from Large Language Models (LLMs) such as ChatGPT, Google Gemini, Perplexity AI, Microsoft Copilot, and Claude.",
  "categories": ["ANALYTICS", "UTILITY", "DATA_WAREHOUSING", "EXPERIMENTATION"],
  "containerContexts": [
    "SERVER"
  ]
}

___TEMPLATE_METADATA___

{
  "metadataVersion": 1,
  "termsOfService": true
}


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
    logToConsole('Resultaat: TRUE (Match met LLM bot: ' + llmBots[i] + ')');
    return true; 
  }
}

logToConsole('Resukt: FALSE (No LLM match found)');
return false;


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_request",
        "versionId": "1"
      },
      "param": [
        {
          "key": "requestAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "headerAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queryParameterAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 4/7/2026, 9:50:38 AM


