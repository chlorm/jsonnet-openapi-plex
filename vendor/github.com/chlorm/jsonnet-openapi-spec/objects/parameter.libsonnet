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
  path:: 'path',
  query:: 'query',

  styles:: {
    // Path
    simple:: 'simple',
    label:: 'label',
    matrix:: 'matrix',
    // Query
    form:: 'form',
    spaceDelimited:: 'spaceDilimited',
    pipeDilimited:: 'pipeDilimited',
    deepObject:: 'deepObject',
  },

  // https://swagger.io/specification/#parameterObject
  new(nameString):: {
    name: nameString,

    In(s):: self {
      assert std.isString(s),
      'in': s,
    },

    Description(s):: self {
      assert std.isString(s),
      description: s,
    },

    Required(b):: self {
      assert std.isBoolean(b),
      required: b,
    },

    Deprecated(b):: self {
      assert std.isBoolean(b),
      deprecated: b,
    },

    AllowEmptyValue(b):: self {
      assert std.isBoolean(b),
      allowEmptyValue: b,
    },

    // FIXME: validate
    Style(s):: self {
      assert std.isString(s),
      style: s,
    },

    Explode(b):: self {
      assert std.isBoolean(b),
      explode: b,
    },

    AllowReserved(b):: self {
      assert std.isBoolean(b),
      allowReserved: b,
    },

    Schema(schemaObject):: self {
      assert std.isObject(schemaObject),
      schema: schemaObject,
    },

    Example(exampleObject):: self {
      assert std.isObject(exampleObject),
      examples+: exampleObject,
    },

    Content(mediaTypeObject):: self {
      assert std.isObject(mediaTypeObject),
      content+: mediaTypeObject,
    },
  },
}
