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
  form:: 'application/x-www-form-urlencoded',
  json:: 'application/json',
  plaintext:: 'text/plain',
  xml:: 'application/xml',
  zip:: 'application/zip',

  // https://swagger.io/specification/#mediaTypeObject
  new(mimeType):: {
    Schema(schemaObject):: self {
      assert std.isObject(schemaObject),
      [mimeType]+: {
        schema: schemaObject,
      },
    },

    Example(exampleObject):: self {
      assert std.isObject(exampleObject),
      [mimeType]+: {
        examples+: exampleObject,
      },
    },

    Encoding(encodingObject):: self {
      assert std.isObject(encodingObject),
      [mimeType]+: {
        encoding+: encodingObject,
      },
    },
  },
}
