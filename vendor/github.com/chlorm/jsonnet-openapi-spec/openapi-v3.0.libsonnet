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

// https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.3.md
{
  //callback:: import 'objects/callback.libsonnet',
  components::
    import 'objects/components.libsonnet',
  contact::
    import 'objects/contact.libsonnet',
  discriminator::
    import 'objects/discriminator.libsonnet',
  encoding::
    import 'objects/encoding.libsonnet',
  example::
    import 'objects/example.libsonnet',
  externaldocs::
    import 'objects/external-documentation.libsonnet',
  header::
    import 'objects/header.libsonnet',
  info::
    import 'objects/info.libsonnet',
  license::
    import 'objects/license.libsonnet',
  link::
    import 'objects/link.libsonnet',
  mediatype::
    import 'objects/media-type.libsonnet',
  oauthflow::
    import 'objects/oauth-flow.libsonnet',
  oauthflows::
    import 'objects/oauth-flows.libsonnet',
  operation::
    import 'objects/operation.libsonnet',
  parameter::
    import 'objects/parameter.libsonnet',
  pathitem::
    import 'objects/path-item.libsonnet',
  reference::
    import 'objects/reference.libsonnet',
  requestbody::
    import 'objects/request-body.libsonnet',
  response::
    import 'objects/response.libsonnet',
  //schema:: import 'objects/schema.libsonnet',
  securityrequirement::
    import 'objects/security-requirement.libsonnet',
  securityscheme::
    import 'objects/security-scheme.libsonnet',
  server::
    import 'objects/server.libsonnet',
  servervariable::
    import 'objects/server-variable.libsonnet',
  tag::
    import 'objects/tag.libsonnet',
  xml::
    import 'objects/xml.libsonnet',

  // https://swagger.io/specification/#oasObject
  // TODO: Spec exts
  new():: {
    openapi: '3.0.3',

    Info(infoObject):: self {
      assert std.isObject(infoObject),
      info: infoObject,
    },

    Server(serverObject):: self {
      assert std.isObject(serverObject),
      servers+: [serverObject],
    },

    Path(pathItemObject):: self {
      assert std.isObject(pathItemObject),
      paths+: pathItemObject,
    },

    Component(componentsObject):: self {
      assert std.isObject(componentsObject),
      components+: componentsObject,
    },

    Security(securityRequirementObject):: self {
      assert std.isObject(securityRequirementObject),
      security+: [securityRequirementObject],
    },

    Tag(tagObject):: self {
      assert std.isObject(tagObject),
      tags+: [tagObject],
    },

    ExternalDocs(externalDocsObject):: self {
      assert std.isObject(externalDocsObject),
      externalDocs: externalDocsObject,
    },
  },
}
