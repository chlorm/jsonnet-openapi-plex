// Copyright (c) 2020, Cody Opel <cwopel@chlorm.net>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

{
  // https://swagger.io/specification/#operationObject
  new(operationIdString):: {
    assert std.isString(operationIdString),
    operationId: operationIdString,

    Tag(s):: self {
      assert std.isString(s),
      tags+: [s],
    },

    Summary(s):: self {
      assert std.isString(s),
      summary: s,
    },

    Description(s):: self {
      assert std.isString(s),
      description: s,
    },

    ExternalDocs(externalDocsObject):: self {
      assert std.isObject(externalDocsObject),
      externalDocs: externalDocsObject,
    },

    Parameter(parameterObject):: self {
      assert std.isObject(parameterObject),
      parameters+: [parameterObject],
    },

    RequestBody(requestBodyObject):: self {
      assert std.isObject(requestBodyObject),
      requestBody: requestBodyObject,
    },

    Response(responseObject):: self {
      assert std.isObject(responseObject),
      responses+: responseObject,
    },

    Callback(callbackObject):: self {
      assert std.isObject(callbackObject),
      callbacks+: callbackObject,
    },

    Deprecated(b):: self {
      assert std.isBoolean(b),
      deprecated: b,
    },

    Security(securityRequirementObject):: self {
      assert std.isObject(securityRequirementObject),
      security+: [securityRequirementObject],
    },

    Server(serverObject):: self {
      assert std.isObject(serverObject),
      servers+: [serverObject],
    },
  },
}
