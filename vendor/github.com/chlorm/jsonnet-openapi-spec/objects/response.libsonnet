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
  /*
  defaultErrorDescription(status):: {
    100
    101
    102
    103
    200
    201
    202
    203
    204
    205
    206
    207
    208
    226
    301
    302
    303
    304
    305
    306
    307
    308
    400
    401
    402
    403
    404
    405
    406
    407
    408
    409
    410
    411
    412
    413
    414
    415
    416
    417
    418
    421
    422
    423
    424
    425
    426
    428
    429
    431
    451
    500
    501
    502
    503
    504
    505
    506
    507
    510
    511

    [
      if status == 100 then
        'Continue'
      else if status == 101 then
        'Switching Protocol'
    ]
  }
  */

  // NOTE: This combines Response & Responses Objects for better reusability.
  // https://swagger.io/specification/#responsesObject
  // https://swagger.io/specification/#responseObject
  new(status):: {
    assert std.isNumber(status) || status == 'default',
    local statusString = std.toString(status),

    Description(s):: self {
      assert std.isString(s),
      [statusString]+: {
        description: s,
      },
    },

    Header(headerObject):: self {
      assert std.isObject(headerObject),
      [statusString]+: {
        headers+: headerObject,
      },
    },

    Content(mediaTypeObject):: self {
      assert std.isObject(mediaTypeObject),
      [statusString]+: {
        content+: mediaTypeObject,
      },
    },

    Link(linkObject):: self {
      assert std.isObject(linkObject),
      [statusString]+: {
        links+: linkObject,
      },
    },
  },
}
