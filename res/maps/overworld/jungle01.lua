return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "v0.15.2-100-gd5be8ea",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 30,
  height = 17,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 8,
  properties = {
    ["areaNameKey"] = "jungleArea",
    ["nextMapDown"] = "plains04.lua",
    ["nextMapRight"] = "jungle02.lua"
  },
  tilesets = {
    {
      name = "Landscape1",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../images/Landscape1.png",
      imagewidth = 480,
      imageheight = 1376,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {
        {
          name = "Grass",
          tile = 16,
          properties = {}
        },
        {
          name = "Dirt",
          tile = 61,
          properties = {}
        },
        {
          name = "Sand",
          tile = 66,
          properties = {}
        },
        {
          name = "Water",
          tile = 106,
          properties = {}
        },
        {
          name = "Stone Path",
          tile = 151,
          properties = {}
        },
        {
          name = "Circuit",
          tile = 88,
          properties = {}
        },
        {
          name = "Shadow",
          tile = 196,
          properties = {}
        },
        {
          name = "Long Grass Edge",
          tile = 241,
          properties = {}
        },
        {
          name = "Long Grass",
          tile = 246,
          properties = {}
        },
        {
          name = "Swamp",
          tile = 301,
          properties = {}
        },
        {
          name = "Jungle Grass",
          tile = 456,
          properties = {}
        },
        {
          name = "Light",
          tile = 461,
          properties = {}
        },
        {
          name = "Leaves",
          tile = 561,
          properties = {}
        }
      },
      tilecount = 645,
      tiles = {
        {
          id = 0,
          terrain = { -1, -1, -1, 0 }
        },
        {
          id = 1,
          terrain = { -1, -1, 0, 0 }
        },
        {
          id = 2,
          terrain = { -1, -1, 0, -1 }
        },
        {
          id = 3,
          terrain = { 0, 0, 0, -1 }
        },
        {
          id = 4,
          terrain = { 0, 0, -1, 0 }
        },
        {
          id = 15,
          terrain = { -1, 0, -1, 0 }
        },
        {
          id = 16,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 17,
          terrain = { 0, -1, 0, -1 }
        },
        {
          id = 18,
          terrain = { 0, -1, 0, 0 }
        },
        {
          id = 19,
          terrain = { -1, 0, 0, 0 }
        },
        {
          id = 30,
          terrain = { -1, 0, -1, -1 }
        },
        {
          id = 31,
          terrain = { 0, 0, -1, -1 }
        },
        {
          id = 32,
          terrain = { 0, -1, -1, -1 }
        },
        {
          id = 33,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 34,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 45,
          terrain = { -1, -1, -1, 1 }
        },
        {
          id = 46,
          terrain = { -1, -1, 1, 1 }
        },
        {
          id = 47,
          terrain = { -1, -1, 1, -1 }
        },
        {
          id = 48,
          terrain = { 1, 1, 1, -1 }
        },
        {
          id = 49,
          terrain = { 1, 1, -1, 1 }
        },
        {
          id = 50,
          terrain = { -1, -1, -1, 2 }
        },
        {
          id = 51,
          terrain = { -1, -1, 2, 2 }
        },
        {
          id = 52,
          terrain = { -1, -1, 2, -1 }
        },
        {
          id = 53,
          terrain = { 2, 2, 2, -1 }
        },
        {
          id = 54,
          terrain = { 2, 2, -1, 2 }
        },
        {
          id = 55,
          terrain = { -1, -1, -1, 5 }
        },
        {
          id = 56,
          terrain = { -1, -1, 5, 5 }
        },
        {
          id = 57,
          terrain = { -1, -1, 5, -1 }
        },
        {
          id = 58,
          terrain = { 5, 5, 5, -1 }
        },
        {
          id = 59,
          terrain = { 5, 5, -1, 5 }
        },
        {
          id = 60,
          terrain = { -1, 1, -1, 1 }
        },
        {
          id = 61,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 62,
          terrain = { 1, -1, 1, -1 }
        },
        {
          id = 63,
          terrain = { 1, -1, 1, 1 }
        },
        {
          id = 64,
          terrain = { -1, 1, 1, 1 }
        },
        {
          id = 65,
          terrain = { -1, 2, -1, 2 }
        },
        {
          id = 66,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 67,
          terrain = { 2, -1, 2, -1 }
        },
        {
          id = 68,
          terrain = { 2, -1, 2, 2 }
        },
        {
          id = 69,
          terrain = { -1, 2, 2, 2 }
        },
        {
          id = 70,
          terrain = { -1, 5, -1, 5 }
        },
        {
          id = 71,
          terrain = { 5, 5, 5, 5 }
        },
        {
          id = 72,
          terrain = { 5, -1, 5, -1 }
        },
        {
          id = 73,
          terrain = { 5, -1, 5, 5 }
        },
        {
          id = 74,
          terrain = { -1, 5, 5, 5 }
        },
        {
          id = 75,
          terrain = { -1, 1, -1, -1 }
        },
        {
          id = 76,
          terrain = { 1, 1, -1, -1 }
        },
        {
          id = 77,
          terrain = { 1, -1, -1, -1 }
        },
        {
          id = 78,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 79,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 80,
          terrain = { -1, 2, -1, -1 }
        },
        {
          id = 81,
          terrain = { 2, 2, -1, -1 }
        },
        {
          id = 82,
          terrain = { 2, -1, -1, -1 }
        },
        {
          id = 83,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 84,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 85,
          terrain = { -1, 5, -1, -1 }
        },
        {
          id = 86,
          terrain = { 5, 5, -1, -1 }
        },
        {
          id = 87,
          terrain = { 5, -1, -1, -1 }
        },
        {
          id = 88,
          terrain = { 5, 5, 5, 5 }
        },
        {
          id = 89,
          terrain = { 5, 5, 5, 5 }
        },
        {
          id = 90,
          terrain = { -1, -1, -1, 3 }
        },
        {
          id = 91,
          terrain = { -1, -1, 3, 3 }
        },
        {
          id = 92,
          terrain = { -1, -1, 3, -1 }
        },
        {
          id = 93,
          terrain = { 3, 3, 3, -1 }
        },
        {
          id = 94,
          terrain = { 3, 3, -1, 3 }
        },
        {
          id = 105,
          terrain = { -1, 3, -1, 3 }
        },
        {
          id = 106,
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 107,
          terrain = { 3, -1, 3, -1 }
        },
        {
          id = 108,
          terrain = { 3, -1, 3, 3 }
        },
        {
          id = 109,
          terrain = { -1, 3, 3, 3 }
        },
        {
          id = 120,
          terrain = { -1, 3, -1, -1 }
        },
        {
          id = 121,
          terrain = { 3, 3, -1, -1 }
        },
        {
          id = 122,
          terrain = { 3, -1, -1, -1 }
        },
        {
          id = 123,
          terrain = { 3, 3, 3, 3 },
          animation = {
            {
              tileid = "123",
              duration = "500"
            },
            {
              tileid = "327",
              duration = "600"
            },
            {
              tileid = "342",
              duration = "300"
            },
            {
              tileid = "327",
              duration = "500"
            }
          }
        },
        {
          id = 124,
          terrain = { 3, 3, 3, 3 },
          animation = {
            {
              tileid = "124",
              duration = "300"
            },
            {
              tileid = "328",
              duration = "600"
            },
            {
              tileid = "343",
              duration = "400"
            },
            {
              tileid = "328",
              duration = "500"
            }
          }
        },
        {
          id = 135,
          terrain = { -1, -1, -1, 4 }
        },
        {
          id = 136,
          terrain = { -1, -1, 4, 4 }
        },
        {
          id = 137,
          terrain = { -1, -1, 4, -1 }
        },
        {
          id = 138,
          terrain = { 4, 4, 4, -1 }
        },
        {
          id = 139,
          terrain = { 4, 4, -1, 4 }
        },
        {
          id = 150,
          terrain = { -1, 4, -1, 4 }
        },
        {
          id = 151,
          terrain = { 4, 4, 4, 4 }
        },
        {
          id = 152,
          terrain = { 4, -1, 4, -1 }
        },
        {
          id = 153,
          terrain = { 4, -1, 4, 4 }
        },
        {
          id = 154,
          terrain = { -1, 4, 4, 4 }
        },
        {
          id = 165,
          terrain = { -1, 4, -1, -1 }
        },
        {
          id = 166,
          terrain = { 4, 4, -1, -1 }
        },
        {
          id = 167,
          terrain = { 4, -1, -1, -1 }
        },
        {
          id = 180,
          terrain = { -1, -1, -1, 6 }
        },
        {
          id = 181,
          terrain = { -1, -1, 6, 6 }
        },
        {
          id = 182,
          terrain = { -1, -1, 6, -1 }
        },
        {
          id = 183,
          terrain = { 6, 6, 6, -1 }
        },
        {
          id = 184,
          terrain = { 6, 6, -1, 6 }
        },
        {
          id = 195,
          terrain = { -1, 6, -1, 6 }
        },
        {
          id = 196,
          terrain = { 6, 6, 6, 6 }
        },
        {
          id = 197,
          terrain = { 6, -1, 6, -1 }
        },
        {
          id = 198,
          terrain = { 6, -1, 6, 6 }
        },
        {
          id = 199,
          terrain = { -1, 6, 6, 6 }
        },
        {
          id = 210,
          terrain = { -1, 6, -1, -1 }
        },
        {
          id = 211,
          terrain = { 6, 6, -1, -1 }
        },
        {
          id = 212,
          terrain = { 6, -1, -1, -1 }
        },
        {
          id = 223,
          animation = {
            {
              tileid = "223",
              duration = "6000"
            },
            {
              tileid = "224",
              duration = "6000"
            },
            {
              tileid = "238",
              duration = "6000"
            }
          }
        },
        {
          id = 225,
          terrain = { -1, -1, -1, 7 }
        },
        {
          id = 226,
          terrain = { -1, -1, 7, 7 }
        },
        {
          id = 227,
          terrain = { -1, -1, 7, -1 }
        },
        {
          id = 228,
          terrain = { 7, 7, 7, -1 }
        },
        {
          id = 229,
          terrain = { 7, 7, -1, 7 }
        },
        {
          id = 230,
          terrain = { -1, -1, -1, 8 }
        },
        {
          id = 231,
          terrain = { -1, -1, 8, 8 }
        },
        {
          id = 232,
          terrain = { -1, -1, 8, -1 }
        },
        {
          id = 233,
          terrain = { 8, 8, 8, -1 }
        },
        {
          id = 234,
          terrain = { 8, 8, -1, 8 }
        },
        {
          id = 240,
          terrain = { -1, 7, -1, 7 }
        },
        {
          id = 241,
          terrain = { 7, 7, 7, 7 }
        },
        {
          id = 242,
          terrain = { 7, -1, 7, -1 }
        },
        {
          id = 243,
          terrain = { 7, -1, 7, 7 }
        },
        {
          id = 244,
          terrain = { -1, 7, 7, 7 }
        },
        {
          id = 245,
          terrain = { -1, 8, -1, 8 }
        },
        {
          id = 246,
          terrain = { 8, 8, 8, 8 }
        },
        {
          id = 247,
          terrain = { 8, -1, 8, -1 }
        },
        {
          id = 248,
          terrain = { 8, -1, 8, 8 }
        },
        {
          id = 249,
          terrain = { -1, 8, 8, 8 }
        },
        {
          id = 255,
          terrain = { -1, 7, -1, -1 }
        },
        {
          id = 256,
          terrain = { 7, 7, -1, -1 }
        },
        {
          id = 257,
          terrain = { 7, -1, -1, -1 }
        },
        {
          id = 260,
          terrain = { -1, 8, -1, -1 }
        },
        {
          id = 261,
          terrain = { 8, 8, -1, -1 }
        },
        {
          id = 262,
          terrain = { 8, -1, -1, -1 }
        },
        {
          id = 285,
          terrain = { -1, -1, -1, 9 }
        },
        {
          id = 286,
          terrain = { -1, -1, 9, 9 }
        },
        {
          id = 287,
          terrain = { -1, -1, 9, -1 }
        },
        {
          id = 288,
          terrain = { 9, 9, 9, -1 }
        },
        {
          id = 289,
          terrain = { 9, 9, -1, 9 }
        },
        {
          id = 300,
          terrain = { -1, 9, -1, 9 }
        },
        {
          id = 301,
          terrain = { 9, 9, 9, 9 }
        },
        {
          id = 302,
          terrain = { 9, -1, 9, -1 }
        },
        {
          id = 303,
          terrain = { 9, -1, 9, 9 }
        },
        {
          id = 304,
          terrain = { -1, 9, 9, 9 }
        },
        {
          id = 315,
          terrain = { -1, 9, -1, -1 }
        },
        {
          id = 316,
          terrain = { 9, 9, -1, -1 }
        },
        {
          id = 317,
          terrain = { 9, -1, -1, -1 }
        },
        {
          id = 318,
          terrain = { 9, 9, 9, 9 }
        },
        {
          id = 319,
          terrain = { 9, 9, 9, 9 }
        },
        {
          id = 440,
          terrain = { -1, -1, -1, 10 }
        },
        {
          id = 441,
          terrain = { -1, -1, 10, 10 }
        },
        {
          id = 442,
          terrain = { -1, -1, 10, -1 }
        },
        {
          id = 443,
          terrain = { 10, 10, 10, -1 }
        },
        {
          id = 444,
          terrain = { 10, 10, -1, 10 }
        },
        {
          id = 445,
          terrain = { -1, -1, -1, 11 }
        },
        {
          id = 446,
          terrain = { -1, -1, 11, 11 }
        },
        {
          id = 447,
          terrain = { -1, -1, 11, -1 }
        },
        {
          id = 448,
          terrain = { 11, 11, 11, -1 }
        },
        {
          id = 449,
          terrain = { 11, 11, -1, 11 }
        },
        {
          id = 455,
          terrain = { -1, 10, -1, 10 }
        },
        {
          id = 456,
          terrain = { 10, 10, 10, 10 }
        },
        {
          id = 457,
          terrain = { 10, -1, 10, -1 }
        },
        {
          id = 458,
          terrain = { 10, -1, 10, 10 }
        },
        {
          id = 459,
          terrain = { -1, 10, 10, 10 }
        },
        {
          id = 460,
          terrain = { -1, 11, -1, 11 }
        },
        {
          id = 461,
          terrain = { 11, 11, 11, 11 }
        },
        {
          id = 462,
          terrain = { 11, -1, 11, -1 }
        },
        {
          id = 463,
          terrain = { 11, -1, 11, 11 }
        },
        {
          id = 464,
          terrain = { -1, 11, 11, 11 }
        },
        {
          id = 470,
          terrain = { -1, 10, -1, -1 }
        },
        {
          id = 471,
          terrain = { 10, 10, -1, -1 }
        },
        {
          id = 472,
          terrain = { 10, -1, -1, -1 }
        },
        {
          id = 475,
          terrain = { -1, 11, -1, -1 }
        },
        {
          id = 476,
          terrain = { 11, 11, -1, -1 }
        },
        {
          id = 477,
          terrain = { 11, -1, -1, -1 }
        },
        {
          id = 530,
          terrain = { -1, -1, -1, 12 }
        },
        {
          id = 531,
          terrain = { -1, -1, 12, 12 }
        },
        {
          id = 532,
          terrain = { -1, -1, 12, -1 }
        },
        {
          id = 533,
          terrain = { 12, 12, 12, -1 }
        },
        {
          id = 534,
          terrain = { 12, 12, -1, 12 }
        },
        {
          id = 545,
          terrain = { -1, 12, -1, 12 }
        },
        {
          id = 546,
          terrain = { 12, 12, 12, 12 }
        },
        {
          id = 547,
          terrain = { 12, -1, 12, -1 }
        },
        {
          id = 548,
          terrain = { 12, -1, 12, 12 }
        },
        {
          id = 549,
          terrain = { -1, 12, 12, 12 }
        },
        {
          id = 560,
          terrain = { -1, 12, -1, -1 }
        },
        {
          id = 561,
          terrain = { 12, 12, -1, -1 }
        },
        {
          id = 562,
          terrain = { 12, -1, -1, -1 }
        }
      }
    },
    {
      name = "NPCs",
      firstgid = 646,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../images/NPCs.png",
      imagewidth = 320,
      imageheight = 352,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 110,
      tiles = {}
    },
    {
      name = "Landscape2",
      firstgid = 756,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../images/Landscape2.png",
      imagewidth = 480,
      imageheight = 1088,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 510,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Base",
      x = 0,
      y = 0,
      width = 30,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      data = "xwEAALUBAADHAQAAxwEAAMcBAAC1AQAAxgEAAMcBAADHAQAAxwEAAMcBAADGAQAAxwEAAMYBAAC1AQAAxwEAAMYBAAC1AQAAxgEAAMYBAADHAQAAxwEAAMcBAADGAQAAxwEAAMcBAAC1AQAAxwEAAMcBAADHAQAAxgEAAMYBAAC1AQAAxgEAAMYBAADGAQAAxgEAAMcBAADHAQAAxgEAAMcBAAC1AQAAxwEAALUBAADGAQAAtQEAALUBAAC1AQAAxgEAAMcBAAC1AQAAtQEAALUBAAC1AQAAxgEAAMYBAAC1AQAAxgEAAMYBAADHAQAAxwEAAMcBAAC1AQAAxgEAALUBAADHAQAAxgEAALUBAAC1AQAAxwEAAMcBAADHAQAAxgEAALUBAADHAQAAtQEAALUBAADGAQAAxwEAALUBAADHAQAAtQEAAMcBAADGAQAAxgEAAMYBAAC1AQAAtQEAAMYBAADHAQAAxgEAAMYBAAC1AQAAxwEAALUBAADHAQAAxgEAALUBAADGAQAAtQEAAMYBAAC1AQAAtQEAALUBAADGAQAAxwEAAMYBAAC1AQAAxgEAALUBAADHAQAAtQEAAMYBAAC1AQAAxwEAAMcBAADHAQAAtQEAALUBAAC1AQAAtQEAAMcBAADGAQAAxgEAAMYBAADGAQAAxwEAAMcBAADGAQAAxwEAAMcBAADGAQAAxgEAALUBAADGAQAAxgEAAMYBAADHAQAAxgEAALUBAAC1AQAAxgEAALUBAAC1AQAAtQEAALUBAAC1AQAAxwEAAMcBAADGAQAAxgEAAMcBAADHAQAAxgEAALUBAAC1AQAAxgEAALUBAAC1AQAAxwEAAMcBAADHAQAAxgEAALUBAADHAQAAxwEAALUBAADHAQAAxwEAALUBAADGAQAAtQEAAMYBAAC1AQAAtQEAALUBAADGAQAAtQEAAMcBAADHAQAAtQEAAMYBAAC1AQAAtQEAAMYBAADGAQAAtQEAAMYBAADHAQAAxwEAALUBAADGAQAAxgEAALUBAADHAQAAxgEAAMYBAADGAQAAtQEAALUBAAC1AQAAxwEAAMYBAADGAQAAxgEAAMYBAADGAQAAtQEAAMYBAADGAQAAxwEAAMYBAADHAQAAtQEAAMYBAADHAQAAxgEAAMYBAAC1AQAAxwEAAMYBAADHAQAAtQEAAMYBAAC1AQAAxgEAAMcBAAC1AQAAxwEAALUBAADGAQAAxgEAAMcBAAC1AQAAxgEAAMcBAADGAQAAtQEAAMYBAADHAQAAxwEAAMcBAAC1AQAAxgEAAMcBAAC1AQAAxgEAAMcBAADGAQAAxgEAAMcBAADGAQAAtQEAALUBAAC1AQAAtQEAAMcBAADHAQAAxgEAAMcBAAC1AQAAxgEAALUBAAC1AQAAxwEAAMcBAADHAQAAxwEAALUBAADGAQAAxwEAAMcBAAC1AQAAxwEAAMYBAADHAQAAxwEAAMYBAAC1AQAAtQEAAMcBAAC1AQAAxwEAALUBAADHAQAAtQEAAMYBAADHAQAAxwEAALUBAADGAQAAxgEAAMYBAADGAQAAtQEAAMYBAADHAQAAxgEAALUBAADHAQAAtQEAAMYBAADHAQAAxgEAAMcBAAC1AQAAxwEAAMYBAADHAQAAxwEAAMYBAADHAQAAtQEAALUBAADHAQAAxwEAAMYBAAC1AQAAxgEAAMcBAADHAQAAxwEAAMcBAAC1AQAAxgEAALUBAAC1AQAAxgEAALUBAADHAQAAxgEAAMYBAADGAQAAxgEAALUBAADGAQAAtQEAALUBAADHAQAAxgEAAMYBAADHAQAAxgEAALUBAADGAQAAxgEAALUBAADGAQAAtQEAALUBAAC1AQAAxwEAAMcBAADHAQAAxwEAAMYBAAC1AQAAxwEAAMYBAADHAQAAxwEAAMcBAAC1AQAAxwEAALUBAADGAQAAxwEAAMYBAADGAQAAxgEAALUBAAC1AQAAtQEAAMcBAAC1AQAAxwEAAMYBAADGAQAAxwEAAMYBAADGAQAAxgEAAMYBAADGAQAAxwEAALUBAAC1AQAAtQEAALUBAADGAQAAtQEAAMcBAADGAQAAxgEAAMcBAADHAQAAxwEAALUBAADGAQAAxwEAAMcBAADGAQAAtQEAAMYBAADHAQAAxgEAAMcBAADGAQAAxwEAAMYBAADHAQAAxwEAALUBAADHAQAAxwEAALUBAADGAQAAtQEAALUBAADGAQAAtQEAAMYBAADHAQAAtQEAALUBAADGAQAAtQEAALUBAADHAQAAtQEAAMYBAADGAQAAxwEAALUBAAC1AQAAxgEAAMcBAAC1AQAAtQEAAMcBAADGAQAAxwEAAMcBAADGAQAAxgEAAMcBAADGAQAAxwEAAMYBAADGAQAAxwEAAMYBAADHAQAAxgEAAMcBAADGAQAAtQEAAMcBAADHAQAAtQEAAMYBAADGAQAAxwEAAMYBAAC1AQAAxgEAAMYBAAC1AQAAxgEAAMYBAAC1AQAAtQEAAMcBAAC1AQAAxwEAAMcBAAC1AQAAtQEAAMcBAAC1AQAAxgEAALUBAAC1AQAAtQEAAMcBAAC1AQAAtQEAALUBAADGAQAAxwEAALUBAAC1AQAAxwEAALUBAADGAQAAxwEAAMYBAADGAQAAxwEAAMYBAADHAQAAxgEAAMcBAADHAQAAtQEAAMcBAADGAQAAxwEAAMYBAADHAQAA"
    },
    {
      type = "tilelayer",
      name = "Upper Detail",
      x = 0,
      y = 0,
      width = 30,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB4BAAAfAQAAIAEAAAAAAAAAAAAAHgEAACABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAeAQAAHwEAADEBAAAuAQAAMAEAAB8BAAAfAQAAMQEAADABAAAgAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB4BAAAfAQAAHwEAACABAAAAAAAAAAAAAA0CAAAAAAAAAAAAAAAAAAAeAQAAHwEAAB8BAAAxAQAAPwEAAEABAABAAQAAPwEAAEABAAAuAQAAPwEAAEABAAAwAQAAIAEAAAAAAAAAAAAAAAAAAB4BAAAfAQAAHwEAADEBAAA/AQAAPwEAADABAAAfAQAAIAEAAAAAAAAAAAAAAAAAAAAAAAA8AQAAIgEAAEABAAA/AQAALgEAACEBAAA9AQAAPQEAACIBAAAuAQAALgEAAEABAAAuAQAAMAEAAB8BAAAfAQAAHwEAADEBAAA/AQAAQAEAAD8BAAA/AQAAQAEAAD8BAAAuAQAALwEAAB4BAAAfAQAAAAAAAAAAAAAAAAAALQEAAC4BAAAhAQAAPQEAAD4BAAAAAAAAAAAAADwBAAAiAQAALgEAAD8BAABAAQAAQAEAAC4BAAA/AQAALgEAAD8BAAAuAQAAQAEAAD8BAAAuAQAAPwEAAC4BAAAuAQAAMAEAADEBAAA/AQAAAAAAAAAAAAAeAQAAMQEAAD8BAAAvAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAtAQAAQAEAAC4BAAA/AQAAQAEAAD8BAAAuAQAAPwEAAC4BAABAAQAAPwEAAEABAAA/AQAALgEAAC4BAABAAQAAQAEAAD8BAAAuAQAAAAAAAB4BAAAxAQAAPwEAACEBAAA+AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AQAAIgEAAEABAAA/AQAAQAEAAD8BAABAAQAALgEAACEBAAA9AQAAPQEAACIBAAAhAQAAPQEAACIBAABAAQAAQAEAAC4BAAA/AQAAHgEAADEBAABAAQAAQAEAAC8BAAAAAAAAAAAAAAAAAAAAAAAAHgEAACABAAAeAQAAMQEAAC4BAAA/AQAALgEAAC4BAAAuAQAAPwEAADABAAAgAQAAAAAAAC0BAAAwAQAAIAEAADwBAAAiAQAAPwEAAEABAABAAQAAPAEAACIBAABAAQAALgEAADABAAAfAQAAHwEAAB8BAAAfAQAAMQEAADABAAAxAQAAPwEAAC4BAAAuAQAAQAEAAEABAAA/AQAAQAEAAD8BAAAwAQAAIAEAADwBAAA9AQAAPgEAAAAAAAA8AQAAIgEAAEABAAA/AQAAAAAAAC0BAABAAQAAPwEAAD8BAAAuAQAAPwEAAEABAAA/AQAALgEAAC4BAAA/AQAAPwEAAD8BAAA/AQAALgEAAD8BAABAAQAALgEAAD8BAAA/AQAAMAEAACABAAAAAAAAAAAAAAAAAAAeAQAAMQEAAEABAABAAQAAAAAAADwBAAAiAQAAQAEAAD8BAAA/AQAAQAEAACEBAAA9AQAAPQEAAD0BAAAiAQAALgEAAC4BAAAhAQAAPQEAAD0BAAAiAQAALgEAAD8BAABAAQAAIQEAAD4BAAAAAAAAAAAAAAAAAAAtAQAAQAEAAC4BAAAuAQAAAAAAAAAAAAAtAQAAQAEAAD8BAAAuAQAAIQEAAD4BAAAAAAAAAAAAAAAAAAAtAQAALgEAAC4BAAAvAQAAAAAAAAAAAAA8AQAAIgEAAC4BAAAhAQAAPgEAAAAAAAAAAAAAAAAAAB4BAAAxAQAAPwEAAD8BAABAAQAAAAAAAB4BAAAxAQAAQAEAAEABAAAuAQAAMAEAAB8BAAAgAQAAAAAAAAAAAAA8AQAAIgEAAC4BAAAvAQAAAAAAAAAAAAAAAAAALQEAAC4BAAAvAQAAAAAAAAAAAAAeAQAAHwEAADEBAAA/AQAAQAEAAD8BAAAuAQAAAAAAAC0BAAAuAQAAQAEAAD8BAABAAQAALgEAAD8BAAAwAQAAHwEAAB8BAAAfAQAAMQEAAC4BAAAwAQAAIAEAAB4BAAAgAQAALQEAAD8BAAAwAQAAHwEAAB8BAAAxAQAAPwEAAC4BAAA/AQAAQAEAAC4BAAAuAQAAAAAAADwBAAAiAQAAIQEAACIBAAA/AQAAPwEAAD8BAAA/AQAAQAEAAD8BAAAhAQAAPQEAAD0BAAAiAQAAMAEAADEBAAAwAQAAMQEAAEABAAAuAQAAQAEAAEABAAAuAQAAPwEAAEABAABAAQAAIQEAAD0BAAA9AQAAAAAAAAAAAAA8AQAAPgEAADwBAAA9AQAAIgEAAEABAAA/AQAAIQEAAD0BAAA+AQAAAAAAAAAAAAA8AQAAPQEAAD0BAAAiAQAAQAEAAEABAABAAQAAIQEAAD0BAAAiAQAAPwEAACEBAAA9AQAAPgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPAEAACIBAAAuAQAAMAEAACABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAtAQAALgEAAD8BAAAhAQAAPgEAAAAAAAA8AQAAPQEAAD4BAAAAAAAAAAAAAAAAAAAAAAAA"
    },
    {
      type = "tilelayer",
      name = "Tile Layer 6",
      x = 0,
      y = 0,
      width = 30,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      data = "zAEAAMkBAAC8AQAA2AEAAL0BAAC8AQAA2AEAANkBAADXAQAA2AEAANgBAADZAQAA1wEAANgBAADYAQAAvQEAAMkBAADJAQAAyQEAALwBAAC9AQAAyQEAALwBAADYAQAAvQEAAMkBAADJAQAAyQEAAMkBAADJAQAAyQEAAMkBAADKAQAAAAAAANcBAADZAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC5AQAAzAEAAMkBAADJAQAAyQEAAMoBAADXAQAA2AEAANkBAAAAAAAA1wEAANgBAADYAQAAvQEAAMkBAADJAQAAyQEAALwBAADZAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADXAQAA2AEAAL0BAAC8AQAA2AEAANkBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA1wEAANgBAADYAQAAvAEAANkBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAuQEAALsBAAAAAAAAAAAAAAAAAAAAAAAAAAAAANcBAADZAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAygEAAAAAAAAAAAAAAAAAAAAAAAC5AQAAuwEAALkBAAC6AQAAzAEAAMsBAAC7AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAygEAAAAAAAAAAAAAAAAAAAAAAADIAQAAywEAAMwBAADJAQAAyQEAALwBAADZAQAAAAAAAAAAAADgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAygEAAAAAAAAAAAAAAAAAALkBAADMAQAAyQEAAMkBAADJAQAAyQEAAMsBAAC6AQAAuwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC5AQAAugEAALsBAAC5AQAAugEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAygEAAAAAAAAAAAAAAAAAAMgBAADJAQAAyQEAALwBAADYAQAA2AEAAL0BAAC8AQAA2QEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADXAQAAvQEAAMoBAADXAQAAvQEAAMoBAAAAAAAAAAAAAAAAAAAAAAAAygEAAAAAAAAAAAAAAAAAANcBAADYAQAA2AEAANkBAAAAAAAAAAAAANcBAADZAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAyAEAAMsBAAC6AQAAzAEAAMsBAAC7AQAAAAAAAAAAAAAAAAAAywEAALsBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANgBAAC9AQAAyQEAALwBAADZAQAAAAAAAAAAAAAAAAAAyQEAAMoBAAAAAAAAAAAAAAAAAAAAAAAAAAAAALkBAAC6AQAAugEAALsBAAAAAAAAAAAAAAAAAAAAAAAAuQEAALsBAAAAAAAAAAAAAAAAAAAAAAAAAAAAALkBAADMAQAAyQEAAMoBAAAAAAAAAAAAAAAAAAAAAAAAvAEAANkBAAAAAAAA4AAAAAAAAAAAAAAAuQEAAMwBAADJAQAAyQEAAMsBAAC7AQAAAAAAAAAAAAC5AQAAzAEAAMsBAAC7AQAAAAAAAAAAAAC5AQAAugEAAMwBAADJAQAAyQEAAMoBAAAAAAAAAAAAAAAAAAAAAAAAygEAAAAAAAAAAAAAAAAAAAAAAAAAAAAA1wEAANgBAADYAQAAvQEAALwBAADZAQAAAAAAAAAAAADIAQAAyQEAAMkBAADKAQAAAAAAAAAAAADXAQAAvQEAAMkBAAC8AQAA2AEAANkBAAAAAAAAAAAAAAAAAAAAAAAAywEAALsBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA1wEAANkBAAAAAAAAAAAAAAAAAADXAQAAvQEAALwBAADZAQAAAAAAAAAAAAAAAAAA1wEAANgBAADZAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAyQEAAMoBAAAAAAAAuQEAALsBAAAAAAAAAAAAAAAAAACzAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA1wEAANkBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALkBAAC7AQAAyQEAAMsBAAAKAgAAyAEAAMsBAAC6AQAAuwEAAAAAAAAAAAAAuQEAALoBAAC6AQAAuwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC0AAAAAAAAALkBAAC7AQAA4AAAALkBAAC6AQAAuwEAAMgBAADLAQAAvQEAAMkBAADLAQAAzAEAAMkBAADJAQAAygEAAAAAAAAAAAAA1wEAAL0BAADJAQAAywEAALoBAAC6AQAAuwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAuQEAAMwBAADLAQAAugEAAMwBAADJAQAAywEAAMwBAAC8AQAA"
    },
    {
      type = "tilelayer",
      name = "Tile Layer 10",
      x = 0,
      y = 0,
      width = 30,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABgCAAAZAgAAKgIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAnAgAAKAIAACkCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    },
    {
      type = "tilelayer",
      name = "Treehack",
      x = 0,
      y = 0,
      width = 30,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      data = "AAAAAAAAAAAAAAAAAAAAAAsCAAAAAAAAAAAAAA0CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADQIAAAAAAAAAAAAAAAAAAAAAAAAAAAAACwIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAsCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0QAAAAAAAAAAAAAAAAAAALQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD7AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD7AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD7AQAAAAAAAAAAAAAAAAAAAAAAAAAAAADRAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADSAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD7AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAtAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD7AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD7AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADSAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    },
    {
      type = "tilelayer",
      name = "Lower Detail",
      x = 0,
      y = 0,
      width = 30,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      data = "/QEAAP0BAAD9AQAA/QEAAP4BAAAMAgAADAIAAAAAAAAAAAAACwIAAAwCAAANAgAAAAAAAAAAAAALAgAA/AEAAAAAAAD9AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA+QEAAAAAAAD8AQAA/QEAAP0BAAAAAAAA/QEAAP0BAAD+AQAADAIAAA0CAADuAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD9AQAACwIAAAwCAAANAgAAAAAAAAAAAAAAAAAA+QEAAAAAAAALAgAADAIAAPwBAAAAAAAA/QEAAP0BAAD+AQAAAAAAAAAAAAD9AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAsCAAAMAgAADQIAAAAAAAAAAAAAAAAAAAAAAAAAAAAA+QEAAAAAAAAAAAAAAAAAAAsCAAAAAAAA/QEAAP0BAAD+AQAAAAAAAAsCAAAMAgAADQIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaAgAAGwIAABwCAAAAAAAACAIAAOsBAADsAQAAAAAAAAAAAAAAAAAA/QEAAAwCAAANAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAgAACQIAAAkCAAAJAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACPAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADQIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACPAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjwIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7gEAAO8BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAsAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYAQAAGQEAABkBAAAZAQAA/QEAAP4BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACqAQAAqwEAAKsBAACrAQAA/QEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYAQAAGQEAABkBAAAaAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGwIAABwCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACqAQAAqwEAAKsBAACsAQAAAAAAAAAAAAAAAAAAGAEAABkBAAAaAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/gEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAqgEAAKsBAACsAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/QEAAP4BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACwBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAIAAA0CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADsBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALAgAADAIAAAwCAAANAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    },
    {
      type = "tilelayer",
      name = "Collision Layer",
      x = 0,
      y = 0,
      width = 30,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = "true"
      },
      encoding = "base64",
      data = "7gEAAO4BAADvAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP0BAAAAAAAA7gEAAAAAAAAAAAAAAAAAAAAAAAD8AQAAAAAAAAAAAAD9AQAA7gEAAO4BAADvAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7gEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD9AQAA7gEAAO4BAADvAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/QEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAgAA7gEAAO8BAAAAAAAAAAAAAAAAAAAAAAAAAAAAACEBAAA9AQAAPQEAACIBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7gEAAAAAAAAAAAAAAAAAAAAAAAAhAQAAPQEAAAAAAAAAAAAASgEAAAAAAAAiAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAvAQAAAAAAAAAAAAAAAAAAWQEAAAAAAAAtAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACEBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACEBAAA9AQAAPQEAACIBAAAhAQAAPQEAACIBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC8BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMQEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADABAAAAAAAAAAAAAAAAAAAwAQAAAAAAAAAAAAAiAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADABAAAfAQAAHwEAAB8BAAAAAAAAMQEAADABAAAxAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIgEAAC4BAAAuAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC4BAAAAAAAALwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7gEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACEBAAAAAAAAPQEAAD0BAAAiAQAALgEAAC4BAAAhAQAAPQEAAD0BAAAiAQAAAAAAAAAAAAAAAAAAIQEAAAAAAAAAAAAAAAAAAAAAAACqAQAAqwEAAKsBAACrAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIQEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIgEAAC4BAAAhAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAEAAB8BAAAAAAAAAAAAAAAAAACqAQAAqwEAAKsBAACsAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHwEAADEBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAO8BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwAQAAHwEAAAAAAAAfAQAAMQEAAAAAAAAwAQAAAAAAAAAAAAAAAAAAqgEAAKsBAACsAQAAHwEAAB8BAAAxAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADtAQAAAAAAAAAAAADvAQAAAAAAAAAAAAAAAAAALgEAAAAAAAAhAQAAPQEAAD0BAAAiAQAAMAEAADEBAAAwAQAAMQEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOoBAAD8AQAAAAAAAAAAAAD+AQAAAAAAAAAAAAAAAAAAIQEAAAAAAAAAAAAAAAAAAAAAAAA8AQAAPQEAAD0BAAAiAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACQIAAAoCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAtAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    },
    {
      type = "objectgroup",
      name = "Objects Layer",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 3,
          name = "Spawn Point",
          type = "SpawnPoint",
          shape = "rectangle",
          x = 384,
          y = 544,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 15,
          visible = true,
          properties = {
            ["tilePos"] = "{6,16}"
          }
        },
        {
          id = 4,
          name = "Asterix",
          type = "Npc",
          shape = "rectangle",
          x = 256,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 679,
          visible = true,
          properties = {
            ["ai"] = "static",
            ["dialogue"] = "jungleAsterix.lua",
            ["loop"] = true,
            ["path"] = "",
            ["portraitIndex"] = 1,
            ["quests"] = "{\"asterixQuest1.lua\"}",
            ["velocity"] = 200
          }
        },
        {
          id = 5,
          name = "Tilde",
          type = "Npc",
          shape = "rectangle",
          x = 160,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 680,
          visible = true,
          properties = {
            ["ai"] = "static",
            ["dialogue"] = "jungleTilde.lua",
            ["loop"] = true,
            ["path"] = "",
            ["portraitIndex"] = 1,
            ["quests"] = "{\"tildeQuest1.lua\"}",
            ["velocity"] = 200
          }
        },
        {
          id = 6,
          name = "Wild Girl",
          type = "Npc",
          shape = "rectangle",
          x = 672,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 676,
          visible = true,
          properties = {
            ["ai"] = "static",
            ["dialogue"] = "jungleWildGirl",
            ["loop"] = true,
            ["path"] = "",
            ["portraitIndex"] = 1,
            ["quests"] = "{}",
            ["velocity"] = 200
          }
        },
        {
          id = 7,
          name = "Snake Terminal",
          type = "Terminal",
          shape = "rectangle",
          x = 224,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 3221226063,
          visible = true,
          properties = {
            ["dialogue"] = "makeSnake.lua"
          }
        }
      }
    },
    {
      type = "tilelayer",
      name = "Foregroud Layer",
      x = 0,
      y = 0,
      width = 30,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALMDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    },
    {
      type = "tilelayer",
      name = "Light",
      x = 0,
      y = 0,
      width = 30,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAL4BAAC/AQAAvwEAAMABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAL4BAAC/AQAAwAEAAL4BAADAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAL4BAADAAQAAvgEAANEBAADOAQAAwQEAAN4BAAAAAAAAvgEAAMABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANwBAADCAQAA0AEAANEBAADPAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAvgEAANEBAADQAQAA0QEAAM4BAADOAQAAzwEAAAAAAAC+AQAA0QEAAM8BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADNAQAAzgEAAM4BAADPAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAC+AQAA0QEAAM4BAADOAQAAwQEAAN0BAADdAQAA3gEAAAAAAADcAQAAwgEAANABAADAAQAAAAAAAAAAAAC+AQAAwAEAAAAAAAAAAAAAvgEAAMABAADcAQAA3QEAAMIBAADQAQAAwAEAAAAAAAAAAAAAAAAAAL4BAADRAQAAzgEAAMEBAADdAQAA3gEAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3AEAAMIBAADPAQAAAAAAAL4BAADRAQAAzwEAAAAAAAAAAAAAzQEAAM8BAAAAAAAAAAAAANwBAADCAQAA0AEAAMABAAAAAAAAAAAAANwBAADCAQAAzgEAAM8BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAvgEAANEBAADQAQAAvwEAANEBAADOAQAAzwEAAAAAAAC+AQAA0QEAANABAADAAQAAAAAAAAAAAADcAQAA3QEAAN4BAAAAAAAAAAAAAAAAAADcAQAA3QEAAN4BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3AEAAMIBAADOAQAAzgEAAM4BAADBAQAA3gEAAL4BAADRAQAAzgEAAM4BAADPAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAM0BAADOAQAAwQEAAMIBAADPAQAAvgEAANEBAADOAQAAzgEAAMEBAADeAQAAvgEAAMABAAC+AQAAvwEAAMABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAvgEAAL8BAAC/AQAAvwEAAMABAAAAAAAAAAAAANwBAADdAQAA3gEAANwBAADeAQAAzQEAAM4BAADOAQAAzgEAANABAADAAQAA3AEAAN4BAADNAQAAzgEAAM8BAAAAAAAAAAAAAL4BAAC/AQAAwAEAAAAAAAAAAAAA3AEAAMIBAADOAQAAzgEAANABAADAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3AEAAN0BAADdAQAA3QEAAN0BAADeAQAAAAAAAL4BAADRAQAAzgEAAM8BAAAAAAAAAAAAAM0BAADOAQAA0AEAAL8BAADAAQAAAAAAANwBAADCAQAAzgEAAM4BAADQAQAAwAEAAAAAAAAJAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAvgEAANEBAADBAQAA3QEAAN4BAAAAAAAAAAAAANwBAADCAQAAzgEAAM4BAADQAQAAwAEAAAAAAADcAQAAwgEAAMEBAADCAQAA0AEAAMABAAC+AQAAvwEAAMABAAAAAAAACAEAAAAAAAAJAQAAAAAAAAAAAAC+AQAA0QEAAM4BAADPAQAAAAAAAAAAAAAAAAAAAAAAAAAAAADNAQAAwQEAAMIBAADOAQAAzwEAAAAAAAAAAAAA3AEAAN4BAADNAQAAzgEAANABAADRAQAAwQEAAN4BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAL4BAADRAQAAzgEAAMEBAADeAQAAAAAAAAAAAAAAAAAAAAAAAAAAAADcAQAA3gEAANwBAADCAQAA0AEAAMABAAAAAAAAAAAAAAAAAADcAQAA3QEAAMIBAADBAQAA3gEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAvgEAANEBAADBAQAA3QEAAN4BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADcAQAA3QEAAN4BAAAAAAAAAAAAAAAAAAAAAAAAAAAAANwBAADeAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3AEAAN0BAADeAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    },
    {
      type = "tilelayer",
      name = "Tile Layer 9",
      x = 0,
      y = 0,
      width = 30,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD5AQAAAAAAAAAAAAAAAAAAAAAAAPkBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAgAACQIAAOsBAADsAQAAAAAAAPkBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD5AQAABwIAAAgCAAAJAgAA7AEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAgAACQIAAAkCAAAJAgAACgIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACQIAAAkCAADsAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    },
    {
      type = "tilelayer",
      name = "Tile Layer 11",
      x = 0,
      y = 0,
      width = 30,
      height = 17,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      data = "IwIAACMCAAAjAgAAFgIAABcCAAAjAgAAIwIAABYCAAAyAgAAFwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAWAgAAFwIAABYCAAAXAgAAIwIAACMCAAAWAgAAMgIAABcCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAWAgAAMwIAADECAAAXAgAAFgIAADMCAAAAAAAAMQIAADICAAAXAgAAIwIAABYCAAAXAgAAIwIAABYCAAAzAgAAMQIAADMCAAAxAgAAFwIAABYCAAAzAgAAAAAAADECAAAyAgAAFwIAACMCAAAjAgAAIwIAABYCAAAzAgAAAAAAAAAAAAAxAgAAMwIAAAAAAAAAAAAAAAAAAAAAAAAxAgAAMgIAADMCAAAxAgAAMgIAADMCAAAAAAAAAAAAAAAAAAAAAAAAMQIAADMCAAAAAAAAAAAAAAAAAAAAAAAAMQIAABcCAAAjAgAAIwIAACQCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADECAAAXAgAAIwIAACQCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxAgAAFgIAADMCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJQIAABUCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIwIAACUCAAAVAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIwIAACMCAAAkAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIwIAACMCAAAlAgAAFQIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIwIAABYCAAAyAgAAMwIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFgIAADMCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJQIAABUCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIwIAACUCAAAUAgAAFQIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAATAgAAFQIAAAAAAAATAgAAIwIAACMCAAAjAgAAJQIAABUCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABMCAAAVAgAAAAAAABMCAAAmAgAAJQIAABQCAAAmAgAAIwIAACMCAAAjAgAAIwIAACUCAAAUAgAAFQIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEwIAACYCAAAlAgAAFAIAACYCAAAjAgAAIwIAACMCAAAjAgAA"
    }
  }
}
