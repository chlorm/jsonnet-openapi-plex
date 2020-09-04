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
  // https://swagger.io/specification/#headerObject
  new(name):: {
    assert std.isString(name),
    // Reserved headers cannot be defined manually.
    assert name != 'Accept' && name != 'Authorization' && name != 'Content-Type',

    Description(s):: self {
      assert std.isString(s),
      [name]+: {
        description: s,
      },
    },

    Required(b):: self {
      assert std.isBoolean(b),
      [name]+: {
        required: b,
      },
    },

    Deprecated(b):: self {
      assert std.isBoolean(b),
      [name]+: {
        deprecated: b,
      },
    },

    AllowEmptyValue(b):: self {
      assert std.isBoolean(b),
      [name]+: {
        allowEmptyValue: b,
      },
    },

    Style(s):: self {
      assert std.isString(s),
      [name]+: {
        style: s,
      },
    },

    Explode(b):: self {
      assert std.isBoolean(b),
      [name]+: {
        explode: b,
      },
    },

    AllowReserved(b):: self {
      assert std.isBoolean(b),
      [name]+: {
        allowReserved: b,
      },
    },

    Schema(schemaObject):: self {
      assert std.isObject(schemaObject),
      [name]+: {
        schema: schemaObject,
      },
    },

    Example(exampleObject):: self {
      assert std.isObject(exampleObject),
      [name]+: {
        examples: exampleObject,
      },
    },

    Content(contentObject):: self {
      assert std.isObject(contentObject),
      [name]+: {
        content: contentObject,
      },
    },
  },
}
