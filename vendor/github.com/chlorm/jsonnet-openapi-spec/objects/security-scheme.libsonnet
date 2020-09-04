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
  // https://swagger.io/specification/#securitySchemeObject
  new():: {
    Type(s):: self {
      assert std.isString(s),
      type: s,
    },

    Description(s):: self {
      assert std.isString(s),
      description: s,
    },

    Name(s):: self {
      assert std.isString(s),
      name: s,
    },

    In(s):: self {
      assert std.isString(s),
      'in': s,
    },

    Scheme(s):: self {
      assert std.isString(s),
      scheme: s,
    },

    BearerFormat(s):: self {
      assert std.isString(s),
      bearerFormat: s,
    },

    Flows(oauthFlowsObject):: self {
      assert std.isObject(oauthFlowsObject),
      flows: oauthFlowsObject,
    },

    OpenIdConnectUrl(s):: self {
      assert std.isString(s),
      openIdConnectUrl: s,
    },
  },
}
