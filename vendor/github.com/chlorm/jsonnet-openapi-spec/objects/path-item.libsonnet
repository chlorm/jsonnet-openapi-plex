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
  // NOTE: This combines Paths and Path Item Objects for better reusability.
  // https://swagger.io/specification/#pathsObject
  // https://swagger.io/specification/#pathItemObject
  new(path):: {
    assert std.isString(path),

    Summary(s):: self {
      assert std.isString(s),
      [path]+: {
        summary: s,
      },
    },

    Description(s):: self {
      assert std.isString(s),
      [path]+: {
        description: s,
      },
    },

    Delete(operationObject):: self {
      assert std.isObject(operationObject),
      [path]+: {
        delete: operationObject,
      },
    },

    Get(operationObject):: self {
      assert std.isObject(operationObject),
      [path]+: {
        get: operationObject,
      },
    },

    Head(operationObject):: self {
      assert std.isObject(operationObject),
      [path]+: {
        head: operationObject,
      },
    },

    Options(operationObject):: self {
      assert std.isObject(operationObject),
      [path]+: {
        options: operationObject,
      },
    },

    Patch(operationObject):: self {
      assert std.isObject(operationObject),
      [path]+: {
        patch: operationObject,
      },
    },

    Post(operationObject):: self {
      assert std.isObject(operationObject),
      [path]+: {
        post: operationObject,
      },
    },

    Put(operationObject):: self {
      assert std.isObject(operationObject),
      [path]+: {
        put: operationObject,
      },
    },

    Trace(operationObject):: self {
      assert std.isObject(operationObject),
      [path]+: {
        trace: operationObject,
      },
    },

    Server(serverObject):: self {
      assert std.isObject(serverObject),
      [path]+: {
        servers+: [serverObject],
      },
    },

    Parameter(parameterObject):: self {
      assert std.isObject(parameterObject),
      [path]+: {
        parameters+: [parameterObject],
      },
    },
  },
}
