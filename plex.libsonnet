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

local openapi = import 'github.com/chlorm/jsonnet-openapi-spec/openapi.libsonnet';

{
  //////////////////////////////////////////////////////////////////////////////
  // Objects
  //////////////////////////////////////////////////////////////////////////////

  object:: {
    account::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.id)
      .Property($.property.key)
      .Property($.property.name)
      .Property($.property.thumb)
      .Property({
        autoSelectAudio:
          openapi.schema.new(openapi.schema.boolean)
          .Example(true),
      })
      .Property({
        defaultAudioLanguage: $.schema.languageSelect,
      })
      .Property({
        defaultSubtitleLanguage: $.schema.languageSelect,
      })
      .Property({
        subtitleMode:
          openapi.schema.new(openapi.schema.integer),
      }),

    chapter::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.id)
      .Property($.property.index)
      .Property($.property.filter)
      .Property($.property.tag)
      .Property($.property.thumb)
      .Property({
        endTimeOffset:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        startTimeOffset:
          openapi.schema.new(openapi.schema.integer),
      }),

    device::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.createdAt)
      .Property($.property.id)
      .Property($.property.name)
      .Property($.property.platform),

    directory::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.allowSync)
      .Property($.property.createdAt)
      .Property($.property.thumb)
      .Property($.property.title)
      .Property($.property.type)
      .Property($.property.updatedAt)
      .Property({
        agent:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        art:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        composite:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        content:
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        contentChangedAt:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        directory:
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        filters:
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        hidden: $.schema.boolInt,
      })
      .Property({
        key:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        language:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        refreshing:
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        scannedAt:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        scanner:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        uuid:
          openapi.schema.new(openapi.schema.string),
      })
      // FIXME:
      .Property({
        Location:
          openapi.schema.new(openapi.schema.string),
      }),

    // Represents a single Hub (or category).
    hub::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.key)
      .Property($.property.metadata)
      .Property($.property.size)
      .Property($.property.title)
      .Property($.property.type)
      .Property({
        context:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        hubKey:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        hubIdentifier:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        more:
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        promoted:
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        style:
          openapi.schema.new(openapi.schema.string),
      }),

    // Represents a single library Location.
    location::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.id)
      .Property({
        path:
          openapi.schema.new(openapi.schema.string)
          .Example('"C:\\Users\\username\\Videos\\films"'),
      }),

    media::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.duration)
      .Property($.property.id)
      .Property($.property.parts)
      .Property($.property.protocol)
      .Property({
        aspectRatio:
          openapi.schema.new(openapi.schema.number)
          .Example(1.78)
          .Format(openapi.schema.float),
      })
      .Property({
        audioChannels:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        audioCodec:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        audioProfile:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        bitrate:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        container:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        height:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        optimizedForStreaming: $.schema.boolInt,
      },)
      .Property({
        premium:
          openapi.schema.new(openapi.schema.boolean),
      },)
      .Property({
        selected:
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        videoCodec:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        videoFrameRate:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        videoProfile:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        videoResolution:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        width:
          openapi.schema.new(openapi.schema.integer),
      }),

    metadata::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.accountID)
      .Property($.property.addedAt)
      .Property($.property.allowSync)
      .Property($.property.chapters)
      .Property($.property.countries)
      .Property($.property.deviceID)
      .Property($.property.directors)
      .Property($.property.duration)
      .Property($.property.genres)
      .Property($.property.guid)
      .Property($.property.index)
      .Property($.property.key)
      .Property($.property.leafCount)
      .Property($.property.media)
      .Property($.property.players)
      .Property($.property.producers)
      .Property($.property.ratingKey)
      .Property($.property.roles)
      .Property($.property.sessions)
      .Property($.property.smart)
      .Property($.property.thumb)
      .Property($.property.title)
      .Property($.property.type)
      .Property($.property.updatedAt)
      .Property($.property.users)
      .Property($.property.viewedAt)
      .Property($.property.viewCount)
      .Property($.property.writers)
      .Property({
        art:
          openapi.schema.new(openapi.schema.string)
          .Example('/library/metadata/50163/art/1597001947'),
      })
      .Property({
        audienceRating:
          openapi.schema.new(openapi.schema.number)
          .Example(9.5)
          .Format(openapi.schema.float),
      })
      .Property({
        audienceRatingImage:
          openapi.schema.new(openapi.schema.string)
          .Example('rottentomatoes://image.rating.upright'),
      })
      .Property({
        chapterSource:
          openapi.schema.new(openapi.schema.string)
          .Enum('media'),
      })
      .Property({
        composite:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        contentRating:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        extraType:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        grandparentArt:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        grandparentGuid:
          openapi.schema.new(openapi.schema.string)
          .Example('plex://artist/5d07beb0403c6402906c3604'),
      })
      .Property({
        grandparentKey:
          openapi.schema.new(openapi.schema.integer)
          .Example('/library/metadata/33901'),
      })
      .Property({
        grandparentRatingKey:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        grandparentThumb: $.schema.thumb,
      })
      .Property({
        grandparentTitle:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        grandparentUUID:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        historyKey:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        lastViewedAt:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        librarySectionID:
          openapi.schema.new(openapi.schema.integer)
          .Example(4),
      })
      .Property({
        librarySectionKey:
          openapi.schema.new(openapi.schema.string)
          .Example('/library/sections/4'),
      })
      .Property({
        librarySectionTitle:
          openapi.schema.new(openapi.schema.string)
          .Example('a3f0edb8-daa7-4a71-ae49-df2bbc4f3b11'),
      })
      .Property({
        loudnessAnalysisVersion:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        originalTitle:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        originallyAvailableAt:
          openapi.schema.new(openapi.schema.string)
          .Example('1975-05-25'),
      })
      .Property({
        parentGuid:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        parentIndex:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        parentKey:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        parentRatingKey:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        parentThumb: $.schema.thumb,
      })
      .Property({
        parentTitle:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        playlistItemID:
          openapi.schema.new(openapi.schema.integer)
          .Example(957),
      },)
      .Property({
        playlistType: $.schema.playlistType,
      })
      .Property({
        primaryExtraKey:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        rating:
          openapi.schema.new(openapi.schema.number)
          .Example(9.7)
          .Format(openapi.schema.float),
      })
      .Property({
        ratingCount:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        ratingImage:
          openapi.schema.new(openapi.schema.string)
          .Example('rottentomatoes://image.rating.ripe'),
      })
      .Property({
        sessionKey:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        studio:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        subtype:
          openapi.schema.new(openapi.schema.string)
          .Enum('trailer'),
      })
      .Property({
        summary:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        tagline:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        titleSort:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        userRating:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        viewedLeafCount:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        viewOffset:
          openapi.schema.new(openapi.schema.integer)
          .Example(354071),
      })
      .Property({
        year:
          openapi.schema.new(openapi.schema.integer),
      })
    // Collection
    // Location?
    // Mood
    // Similar
    // usernames?
    // PlexClient?
    // TranscodeSession?

    // TODO:
    // Preferences -> Settings
    // Extras:  # Figure out structure
    // Related:  # Figure out structure
    ,

    part::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.duration)
      .Property($.property.id)
      .Property($.property.key)
      .Property($.property.streams)
      .Property({
        audioProfile:
          openapi.schema.new(openapi.schema.string)
          .Example('ma'),
      })
      .Property({
        container:
          openapi.schema.new(openapi.schema.string)
          .Example('mkv'),
      })
      .Property({
        decision:
          openapi.schema.new(openapi.schema.string)
          .Enum('directPlay'),
      })
      .Property({
        file:
          openapi.schema.new(openapi.schema.string)
          .Example('C:\\Users\\username\\Videos\\films\\' +
                   'Return.of.the.Jedi.4K83.2160p.UHD.DNR.35mm.x265-v1.1.mkv'),
      })
      .Property({
        hasThumbnail: $.schema.boolInt,
      })
      .Property({
        selected:
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        size:
          openapi.schema.new(openapi.schema.integer)
          // FIXME: make sure this is bytes
          .Description('File size in bytes')
          .Example(71098509375),
      })
      .Property({
        videoProfile:
          openapi.schema.new(openapi.schema.string)
          .Example('main 10'),
      }),

    player::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.address)
      .Property($.property.machineIdentifier)
      .Property($.property.platform)
      .Property($.property.product)
      .Property($.property.title)
      .Property({
        device:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        model:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        platformVersion:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        profile:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        remotePublicAddress:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        state:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        vendor:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        version:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        'local':
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        relayed:
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        secure:
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        userID:
          openapi.schema.new(openapi.schema.integer),
      }),

    server::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.address)
      .Property($.property.deviceClass)
      .Property($.property.host)
      .Property($.property.machineIdentifier)
      .Property($.property.name)
      .Property($.property.port)
      .Property($.property.product)
      .Property($.property.protocol)
      .Property($.property.protocolCapabilities)
      .Property($.property.protocolVersion)
      .Property($.property.version),

    session::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.idStr)
      .Property({
        bandwidth:
          openapi.schema.new(openapi.schema.integer)
          .Example(4098),
      })
      .Property({
        location:
          openapi.schema.new(openapi.schema.string)
          .Example('lan'),
      }),

    setting::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.idStr)
      .Property($.property.type)
      .Property({
        advanced:
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        default:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        enumValues:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        group:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        hidden:
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        label:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        summary:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        type:
          openapi.schema.new(openapi.schema.string)
          .Enum('int')
          .Enum('text'),
      })
      .Property({
        value:
          openapi.schema.new(openapi.schema.integer),
      }),

    stream::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.id)
      .Property($.property.index)
      .Property($.property.title)
      .Property({
        albumGain:
          openapi.schema.new(openapi.schema.number)
          .Format(openapi.schema.float),
      })
      .Property({
        albumPeak:
          openapi.schema.new(openapi.schema.number)
          .Format(openapi.schema.float),
      })
      .Property({
        albumRange:
          openapi.schema.new(openapi.schema.number)
          .Format(openapi.schema.float),
      })
      .Property({
        audioChannelLayout:
          openapi.schema.new(openapi.schema.string)
          .Example('5.1(side)'),
      })
      .Property({
        bitDepth:
          openapi.schema.new(openapi.schema.integer)
          .Example(8)
          .Enum(8)
          .Enum(10)
          .Enum(12),
      })
      .Property({
        bitrate:
          openapi.schema.new(openapi.schema.integer)
          .Example(26838),
      })
      .Property({
        channels:
          openapi.schema.new(openapi.schema.integer)
          .Example(6),
      })
      .Property({
        chromaLocation:
          openapi.schema.new(openapi.schema.string)
          .Example('left')
          .Enum('left'),
      })
      .Property({
        chromaSubsampling:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        codec:
          openapi.schema.new(openapi.schema.string)
          .Example('h264'),
      })
      .Property({
        codedHeight:
          openapi.schema.new(openapi.schema.integer)
          .Example(1088),
      })
      .Property({
        codedWidth:
          openapi.schema.new(openapi.schema.integer)
          .Example(1920),
      })
      .Property({
        colorPrimaries:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        colorRange:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        colorSpace:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        colorTrc:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        default:
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        displayTitle:
          openapi.schema.new(openapi.schema.string)
          .Example('English (DTS-HD MA 5.1)'),
      })
      .Property({
        extendedDisplayTitle:
          openapi.schema.new(openapi.schema.string)
          .Example('Surround 5.1 (English DTS-HD MA)'),
      })
      .Property({
        frameRate:
          openapi.schema.new(openapi.schema.number)
          .Example(23.976)
          .Format(openapi.schema.float),
      })
      .Property({
        gain:
          openapi.schema.new(openapi.schema.number)
          .Format(openapi.schema.float),
      })
      .Property({
        hasScalingMatrix:
          openapi.schema.new(openapi.schema.boolean),
      })
      .Property({
        height:
          openapi.schema.new(openapi.schema.integer)
          .Example(1080),
      })
      .Property({
        language:
          openapi.schema.new(openapi.schema.string)
          .Example('English'),
      })
      .Property({
        languageCode:
          openapi.schema.new(openapi.schema.string)
          .Example('eng'),
      })
      .Property({
        level:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        loudness:
          openapi.schema.new(openapi.schema.number)
          .Format(openapi.schema.float),
      })
      .Property({
        lra:
          openapi.schema.new(openapi.schema.number)
          .Format(openapi.schema.float),
      })
      .Property({
        peak:
          openapi.schema.new(openapi.schema.number)
          .Format(openapi.schema.float),
      })
      .Property({
        profile:
          openapi.schema.new(openapi.schema.string),
      })
      .Property({
        refFrames:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        samplingRate:
          openapi.schema.new(openapi.schema.integer),
      })
      .Property({
        scanType:
          openapi.schema.new(openapi.schema.string)
          .Example('progressive')
          .Enum('progressive'),
      })
      .Property({
        selected: $.schema.boolInt,
      })
      .Property({
        streamType:
          openapi.schema.new(openapi.schema.integer)
          .Example(1),
      })
      .Property({
        width:
          openapi.schema.new(openapi.schema.integer)
          .Example(1920),
      })
      .Property({
        location:
          openapi.schema.new(openapi.schema.string),
      }),


    tag::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.id)
      .Property($.property.filter)
      .Property($.property.tag),

    tags::
      openapi.schema.new(openapi.schema.array)
      .Items(self.tag),

    user::
      openapi.schema.new(openapi.schema.object)
      .Property($.property.id)
      .Property($.property.thumb)
      .Property($.property.title),
  },

  //////////////////////////////////////////////////////////////////////////////
  // Parameters
  //////////////////////////////////////////////////////////////////////////////

  parameter:: {
    includeCollections::
      openapi.parameter.new('includeCollections')
      .In(openapi.parameter.query)
      .Schema($.schema.boolInt),
    includeExternalMedia::
      openapi.parameter.new('includeExternalMedia')
      .In(openapi.parameter.query)
      .Schema($.schema.boolInt),
    includeRelated::
      openapi.parameter.new('includeRelated')
      .In(openapi.parameter.query)
      .Schema($.schema.boolInt),
    ratingKey::
      openapi.parameter.new('ratingKey')
      .In(openapi.parameter.path)
      .Schema($.schema.id)
      .Required(true),
    // FIXME: need example and parse if possible
    sort::
      openapi.parameter.new('sort')
      .In(openapi.parameter.query)
      .Schema(openapi.schema.new(openapi.schema.string)),
    // FIXME: missing examples
    timespan::
      openapi.parameter.new('timespan')
      .In(openapi.parameter.query)
      .Schema($.schema.timespan),
    // FIXME: missing examples
    title::
      openapi.parameter.new('title')
      .In(openapi.parameter.query)
      // FIXME: reuse schema?
      .Schema(openapi.schema.new(openapi.schema.string)),
    typeId::
      openapi.parameter.new('type')
      .In(openapi.parameter.query)
      .Schema($.schema.typeId),
    typeStr::
      openapi.parameter.new('type')
      .In(openapi.parameter.query)
      .Schema($.schema.typeStr),
    // FIXME: missing examples
    url::
      openapi.parameter.new('url')
      .In(openapi.parameter.query)
      .Schema(openapi.schema.new(openapi.schema.string)),
  },

  //////////////////////////////////////////////////////////////////////////////
  // Properties
  //////////////////////////////////////////////////////////////////////////////

  property:: {
    accounts:: {
      Account:
        openapi.schema.new(openapi.schema.array)
        .Items($.object.account),
    },
    accountID:: {
      accountID:
        openapi.schema.new(openapi.schema.integer),
    },
    addedAt:: {
      addedAt:
        openapi.schema.new(openapi.schema.integer)
        .Example(1596708539),
    },
    address:: {
      address:
        openapi.schema.new(openapi.schema.string)
        .Example('192.168.1.3'),
    },
    allowSync:: {
      allowSync:
        openapi.schema.new(openapi.schema.boolean),
    },
    chapters:: {
      chapter:
        openapi.schema.new(openapi.schema.array)
        .Items($.object.chapter),
    },
    claimed:: {
      claimed:
        openapi.schema.new(openapi.schema.boolean),
    },
    countries:: {
      Country: $.object.tags,
    },
    createdAt:: {
      createdAt:
        openapi.schema.new(openapi.schema.integer)
        .Example(1574402484),
    },
    devices:: {
      Device:
        openapi.schema.new(openapi.schema.array)
        .Items($.object.device),
    },
    deviceClass:: {
      deviceClass: $.schema.deviceClass,
    },
    deviceID:: {
      deviceID:
        openapi.schema.new(openapi.schema.integer),
    },
    directors:: {
      Director: $.object.tags,
    },
    directories:: {
      Directory:
        openapi.schema.new(openapi.schema.array)
        .Items($.object.directory),
    },
    duration:: {
      duration:
        openapi.schema.new(openapi.schema.integer)
        // FIXME: make sure this is seconds
        .Description('Duration in seconds')
        .Example(7493000),
    },
    extras:: {
      Extras:
        openapi.schema.new(openapi.schema.object)
        .Property($.property.size)
        .Property($.property.metadata),
    },
    // FIXME:
    filter:: {
      filter:
        openapi.schema.new(openapi.schema.string)
        .Example('actor=16153')
        .Example('country=1800')
        .Example('director=16828')
        .Example('genre=16765')
        .Example('producer=16262')
        .Example('thumb=16777')
        .Example('writer=16152'),
    },
    genres:: {
      Genre: $.object.tags,
    },
    guid:: {
      guid:
        openapi.schema.new(openapi.schema.string)
        .Example('plex://movie/5d7768282ec6b5001f6ba4d7')
        .Example('com.plexapp.agents.none://' +
                 '451fbd8a-5002-460a-8509-947176f7d819'),
    },
    host:: {
      host:
        openapi.schema.new(openapi.schema.string)
        .Example('192.168.1.3'),
    },
    hubs:: {
      Hub:
        openapi.schema.new(openapi.schema.array)
        .Items($.object.hub),
    },
    id:: {
      id: $.schema.id,
    },
    idStr:: {
      id:
        openapi.schema.new(openapi.schema.string)
        .Example('4mrr3pqcmtred1za98635tsm'),
    },
    identifier:: {
      identifier:
        openapi.schema.new(openapi.schema.string)
        .Example('com.plexapp.system.accounts')
        .Example('com.plexapp.system.devices'),
    },
    index:: {
      index:
        openapi.schema.new(openapi.schema.integer),
    },
    key:: {
      key:
        openapi.schema.new(openapi.schema.string)
        .Example('/accounts/12345678')
        .Example('/library/parts/49787/1565957172/file.mkv')
        .Example('/playlists/50162/items'),
    },
    lastViewedAt:: {
      lastViewedAt:
        openapi.schema.new(openapi.schema.integer)
        .Example(1596708539),
    },
    leafCount:: {
      leafCount:
        openapi.schema.new(openapi.schema.integer)
        .Example(1),
    },
    machineIdentifier:: {
      machineIdentifier:
        openapi.schema.new(openapi.schema.string)
        .Example('21bfb25e639b2c81371e8e077d497401f459dddd'),
    },
    media:: {
      Media:
        openapi.schema.new(openapi.schema.array)
        .Items($.object.media),
    },
    mediaTagPrefix:: {
      mediaTagPrefix:
        openapi.schema.new(openapi.schema.string)
        .Example('/system/bundle/media/flags/'),
    },
    mediaTagVersion:: {
      mediaTagVersion:
        openapi.schema.new(openapi.schema.integer)
        .Example(1596552698),
    },
    metadata:: {
      Metadata:
        openapi.schema.new(openapi.schema.array)
        .Items($.object.metadata),
    },
    name:: {
      name:
        openapi.schema.new(openapi.schema.string)
        .Description('Hostname,platform,username,title')
        .Example('Firefox')
        .Example('MyUserName')
        .Example('DESKTOP-XXXXXXX'),
    },
    parts:: {
      Part:
        openapi.schema.new(openapi.schema.array)
        .Items($.object.part),
    },
    platform:: {
      platform:
        openapi.schema.new(openapi.schema.string)
        .Example('Firefox'),
    },
    platformVersion:: {
      platformVersion:
        openapi.schema.new(openapi.schema.string),
    },
    players:: {
      Player:
        openapi.schema.new(openapi.schema.array)
        .Items($.object.player),
    },
    playlistType:: {
      playlistType:
        openapi.schema.new(openapi.schema.string)
        .Example('video')
        // FIXME:
        .Enum('video')
        .Enum('audio')
        .Enum('photo'),
    },
    port:: {
      port:
        openapi.schema.new(openapi.schema.integer)
        .Example(32400),
    },
    producers:: {
      Producer: $.object.tags,
    },
    product:: {
      product:
        openapi.schema.new(openapi.schema.string)
        .Example('Plex for Windows'),
    },
    property:: {
      Property:
        openapi.schema.new(openapi.schema.object)
        .Property($.property.settings),
    },
    protocol:: {
      protocol:
        openapi.schema.new(openapi.schema.string)
        .Example('plex')
        .Enum('plex'),
    },
    protocolCapabilities:: {
      protocolCapabilities: $.schema.protocolCapabilities,
    },
    protocolVersion:: {
      protocolVersion: $.schema.protocolVersion,
    },
    provides:: {
      provides:
        openapi.schema.new(openapi.schema.string),
    },
    ratingKey:: {
      ratingKey:
        openapi.schema.new(openapi.schema.integer)
        .Example('50162'),
    },
    roles:: {
      Role: $.object.tags {
        items+: {
          properties+: {
            role: openapi.schema.new(openapi.schema.string),
          } + $.property.thumb,
        },
      },
    },
    servers:: {
      Server:
        openapi.schema.new(openapi.schema.array)
        .Items($.object.server),
    },
    sessions:: {
      Session:
        openapi.schema.new(openapi.schema.array)
        .Items($.object.session),
    },
    settings:: {
      Setting:
        openapi.schema.new(openapi.schema.array)
        .Items($.object.setting),
    },
    size:: {
      size:
        openapi.schema.new(openapi.schema.integer),
    },
    smart:: {
      smart:
        openapi.schema.new(openapi.schema.boolean)
        .Example(false),
    },
    streams:: {
      Stream:
        openapi.schema.new(openapi.schema.array)
        .Items($.object.stream),
    },
    summary:: {
      summary:
        openapi.schema.new(openapi.schema.string),
    },
    tag:: {
      tag:
        openapi.schema.new(openapi.schema.string),
    },
    thumb:: {
      thumb: $.schema.thumb,
    },
    timespan:: {
      timespan: $.schema.timespan,
    },
    title:: {
      title:
        openapi.schema.new(openapi.schema.string),
    },
    title1:: {
      title1:
        openapi.schema.new(openapi.schema.string),
    },
    title2:: {
      title2:
        openapi.schema.new(openapi.schema.string),
    },
    token:: {
      token:
        openapi.schema.new(openapi.schema.string),
    },
    type:: {
      type:
        openapi.schema.new(openapi.schema.string)
        // FIXME: make sure these are correct
        .Enum('album')
        .Enum('artist')
        .Enum('clip')
        .Enum('collection')
        .Enum('episode')
        .Enum('movie')
        .Enum('playlist')
        .Enum('show')
        .Enum('track'),
    },
    updatedAt:: {
      updatedAt:
        openapi.schema.new(openapi.schema.integer)
        .Example(1596708539),
    },
    users:: {
      User:
        openapi.schema.new(openapi.schema.array)
        .Items($.object.user),
    },
    version:: {
      version:
        openapi.schema.new(openapi.schema.string)
        .Example('1.20.0.3181-0800642ec'),
    },
    viewedAt:: {
      viewedAt:
        openapi.schema.new(openapi.schema.integer),
    },
    viewCount:: {
      viewCount:
        openapi.schema.new(openapi.schema.integer)
        .Example(1),
    },
    writers:: {
      Writer: $.object.tags,
    },
  },

  //////////////////////////////////////////////////////////////////////////////
  // Schemas
  //////////////////////////////////////////////////////////////////////////////

  schema:: {
    boolInt::
      openapi.schema.new(openapi.schema.integer)
      .Description('True: 1, False: 0')
      .Enum(0)
      .Enum(1),

    deviceClass::
      openapi.schema.new(openapi.schema.string)
      .Example('pc')
      .Enum('mobile')
      .Enum('pc'),

    id::
      openapi.schema.new(openapi.schema.integer)
      .Example(12345678),

    // FIXME: Add missing language codes
    languageSelect::
      openapi.schema.new(openapi.schema.string)
      .Example('en')
      .Enum('en'),

    mediaContainer(o)::
      self {} +
      openapi.mediatype.new(openapi.mediatype.json)
      .Schema(
        openapi.schema.new(openapi.schema.object)
        .Property({ MediaContainer: o })
      ),

    optInOut::
      openapi.schema.new(openapi.schema.string)
      .Enum('opt_in')
      .Enum('opt_out'),

    // FIXME: movie/track?
    playlistType::
      openapi.schema.new(openapi.schema.string)
      .Enum('audio')
      .Enum('photo')
      .Enum('video'),

    protocolCapabilities::
      openapi.schema.new(openapi.schema.string)
      .Example('mirror,' +
               'navigation,' +
               'playback,' +
               'playqueues,' +
               'provider-playback,' +
               'timeline'),

    protocolVersion::
      openapi.schema.new(openapi.schema.integer)
      .Example(3)
      .Enum(1)
      .Enum(3),

    thumb::
      openapi.schema.new(openapi.schema.string)
      .Example('/library/metadata/{ratingKey}/thumb/{thumbID}'),

    timespan::
      openapi.schema.new(openapi.schema.integer),

    typeId::
      openapi.schema.new(openapi.schema.integer)
      .Description(|||
        1:  Movie
        2:  Show
        3:  Season
        4:  Episode
        5:  Trailer
        6:  Comic
        7:  Person
        8:  Artist
        9:  Album
        10: Track
        12: Clip
        13: Photo
        14: Photo_Album
        15: Playlist
        16: Playlist_Folder
        17: Podcast
      |||)
      .Enum(1)
      .Enum(2)
      .Enum(3)
      .Enum(4)
      .Enum(5)
      .Enum(6)
      .Enum(7)
      .Enum(8)
      .Enum(9)
      .Enum(10)
      .Enum(12)
      .Enum(13)
      .Enum(14)
      .Enum(15)
      .Enum(16)
      .Enum(17),

    typeStr::
      openapi.schema.new(openapi.schema.string)
      .Enum('audio')
      .Enum('photo')
      .Enum('video'),
  },
}
