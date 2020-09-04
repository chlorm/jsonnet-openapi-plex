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
  // https://swagger.io/specification/#linkObject
  new():: {
    OperationRef(s):: self {
      assert std.isString(s),
      operationRef: s,
    },

    OperationId(s):: self {
      assert std.isString(s),
      operationId: s,
    },

    Parameter(parameterObject):: self {
      assert std.isObject(parameterObject),
      parameters+: parameterObject,
    },

    RequestBody(any):: self {
      assert std.type(any) != 'null',
      requestBody: any,
    },

    Description(s):: self {
      assert std.isString(s),
      description: s,
    },

    Server(serverObject):: self {
      assert std.isObject(serverObject),
      server: serverObject,
    },
  },
}
