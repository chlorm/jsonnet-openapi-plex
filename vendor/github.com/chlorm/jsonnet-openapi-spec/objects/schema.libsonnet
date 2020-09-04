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
  // Data Types
  array:: 'array',
  boolean:: 'boolean',
  integer:: 'integer',
  number:: 'number',
  object:: 'object',
  string:: 'string',

  // Formats
  binary:: 'binary',
  byte:: 'byte',
  date:: 'date',
  datetime:: 'date-time',
  double:: 'double',
  float:: 'float',
  int32:: 'int32',
  int64:: 'int64',
  password:: 'password',

  // https://swagger.io/specification/#schemaObject
  // https://tools.ietf.org/html/draft-wright-json-schema-validation-00
  new(schemaType):: {
    assert std.isString(schemaType),
    // Validate schemaType
    assert std.find(schemaType, [
      $.array,
      $.boolean,
      $.integer,
      $.number,
      $.object,
      $.string,
    ]),
    type: schemaType,

    AllOf(schemaObject):: self {
      assert std.isObject(schemaObject),
      allOf: schemaObject,
    },

    AnyOf(schemaObject):: self {
      assert std.isObject(schemaObject),
      anyOf: schemaObject,
    },

    Default(a):: self {
      default: a,
    },

    Deprecated(b):: self {
      assert std.isBoolean(b),
      deprecated: b,
    },

    Description(s):: self {
      assert std.isString(s),
      description: s,
    },

    Discriminator(o):: self {
      assert std.isObject(o),
      discriminator: o,
    },

    Enum(a):: self {
      enum+: [a],
    },

    Example(s):: self {
      example: s,
    },

    ExclusiveMaximum(n):: self {
      assert std.isNumber(n),
      exclusiveMaximum: n,
    },

    ExclusiveMinimum(n):: self {
      assert std.isNumber(n),
      exclusiveMinimum: n,
    },

    ExternalDocs(externalDocsObject):: self {
      assert std.isObject(externalDocsObject),
      externalDocs: externalDocsObject,
    },

    Format(s):: self {
      assert std.isString(s),
      // Validate format
      assert std.find(s, [
        $.binary,
        $.byte,
        $.date,
        $.datetime,
        $.double,
        $.float,
        $.int32,
        $.int64,
        $.password,
      ]),
      format: s,
    },

    Items(schemaObject):: self {
      assert std.isObject(schemaObject),
      items: schemaObject,
    },

    Minimum(n):: self {
      assert std.isNumber(n),
      minimum: n,
    },

    Maximum(n):: self {
      assert std.isNumber(n),
      maximum: n,
    },

    MaxItems(n):: self {
      assert schemaType == $.array,
      assert std.isNumber(n),
      maxItems: n,
    },

    MaxLength(s):: self {
      assert schemaType == $.string,
      assert std.isNumber(s),
      maxLength: s,
    },

    MaxProperties(n):: self {
      assert schemaType == $.object,
      assert std.isNumber(n),
      minProperties: n,
    },

    MinItems(n):: self {
      assert schemaType == $.array,
      assert std.isNumber(n),
      minItems: n,
    },

    MinLength(s):: self {
      assert schemaType == $.string,
      assert std.isNumber(s),
      minLength: s,
    },

    MinProperties(n):: self {
      assert schemaType == $.object,
      assert std.isNumber(n),
      maxProperties: n,
    },

    MultipleOf(n):: self {
      assert std.isNumber(n) && n > 0,
      multipleOf: n,
    },

    Not(schemaObject):: self {
      assert std.isObject(schemaObject),
      not: schemaObject,
    },

    Nullable(b):: self {
      assert std.isBoolean(b),
      nullable: b,
    },

    OneOf(schemaObject):: self {
      assert std.isObject(schemaObject),
      oneOf: schemaObject,
    },

    Pattern(s):: self {
      assert std.isString(s),
      pattern: s,
    },

    // { propertyName: schemaObject }
    Property(o):: self {
      assert std.isObject(o),
      properties+: o,
    },

    ReadOnly(b):: self {
      assert std.isBoolean(b),
      readOnly: b,
    },

    Required(s):: self {
      assert std.isString(s),
      required+: [s],
    },

    Title(s):: self {
      assert std.isString(s),
      title: s,
    },

    UniqueItems(b):: self {
      // FIXME: does this only apply to arrays?  IETF spec is unclear.
      assert schemaType == $.array,
      uniqueItems: b,
    },

    WriteOnly(b):: self {
      assert std.isBoolean(b),
      writeOnly: b,
    },

    Xml(o):: self {
      assert std.isObject(o),
      xml: o,
    },
  },
}
