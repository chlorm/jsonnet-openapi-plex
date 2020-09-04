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
  // https://swagger.io/specification/#componentsObject
  new():: {
    Schema(schemaObject):: self {
      assert std.isObject(schemaObject),
      schemas+: schemaObject,
    },

    Response(responseObject):: self {
      assert std.isObject(responseObject),
      responses+: responseObject,
    },

    Parameter(parameterObject):: self {
      assert std.isObject(parameterObject),
      parameters+: parameterObject,
    },

    Example(exampleObject):: self {
      assert std.isObject(exampleObject),
      examples+: exampleObject,
    },

    RequestBody(requestBodyObject):: self {
      assert std.isObject(requestBodyObject),
      requestBodies+: requestBodyObject,
    },

    Header(headerObject):: self {
      assert std.isObject(headerObject),
      headers+: headerObject,
    },

    SecurityScheme(securitySchemeObject):: self {
      assert std.isObject(securitySchemeObject),
      securitySchemes+: securitySchemeObject,
    },

    Link(linkObject):: self {
      assert std.isObject(linkObject),
      links+: linkObject,
    },

    Callback(callbackObject):: self {
      assert std.isObject(callbackObject),
      callbacks+: callbackObject,
    },
  },
}
