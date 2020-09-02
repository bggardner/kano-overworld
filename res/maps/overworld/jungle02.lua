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
  nextobjectid = 6,
  properties = {
    ["areaNameKey"] = "jungleArea",
    ["nextMapDown"] = "jungle03.lua",
    ["nextMapLeft"] = "jungle01.lua"
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
      data = "xwEAALUBAADHAQAAxwEAAMcBAAC1AQAAxgEAAMcBAADHAQAAxwEAAMcBAADGAQAAxwEAAMYBAAC1AQAAxwEAAMYBAAC1AQAAxgEAAMYBAADHAQAAxwEAAMcBAADGAQAAxwEAAMcBAAC1AQAAxwEAAMcBAADHAQAAxgEAAMYBAAC1AQAAxgEAAMYBAADGAQAAxgEAAMcBAADHAQAAxgEAAMcBAAC1AQAAxwEAALUBAADGAQAAtQEAALUBAAC1AQAAxgEAAMcBAAC1AQAAtQEAALUBAAC1AQAAxgEAAMYBAAC1AQAAxgEAAMYBAADHAQAAxwEAAMcBAAC1AQAAxgEAALUBAADHAQAAxgEAALUBAAC1AQAAxwEAAMcBAADHAQAAxgEAALUBAADHAQAAtQEAALUBAADGAQAAxwEAALUBAADHAQAAtQEAAMcBAADGAQAAxgEAAMYBAAC1AQAAtQEAAMYBAADHAQAAxgEAAMYBAAC1AQAAxwEAALUBAADHAQAAxgEAALUBAADGAQAAtQEAAMYBAAC1AQAAtQEAALUBAADGAQAAxwEAAMYBAAC1AQAAxgEAALUBAADHAQAAtQEAAMYBAAC1AQAAxwEAAMcBAADHAQAAtQEAALUBAAC1AQAAtQEAAMcBAADGAQAAxgEAAMYBAADGAQAAxwEAAMcBAADGAQAAxwEAAMcBAADGAQAAxgEAALUBAADGAQAAxgEAAMYBAADHAQAAxgEAALUBAAC1AQAAxgEAALUBAAC1AQAAtQEAALUBAAC1AQAAxwEAAMcBAADGAQAAxgEAAMcBAADHAQAAxgEAALUBAAC1AQAAxgEAALUBAAC1AQAAxwEAAMcBAADHAQAAxgEAALUBAADHAQAAxwEAALUBAADHAQAAxwEAALUBAADGAQAAtQEAAMYBAAC1AQAAtQEAALUBAADGAQAAtQEAAMcBAADHAQAAtQEAAMYBAAC1AQAAtQEAAMYBAADGAQAAtQEAAMYBAADHAQAAxwEAALUBAADGAQAAxgEAALUBAADHAQAAxgEAAMYBAADGAQAAtQEAALUBAAC1AQAAxwEAAMYBAADGAQAAxgEAAMYBAADGAQAAtQEAAMYBAADGAQAAxwEAAMYBAADHAQAAtQEAAMYBAADHAQAAxgEAAMYBAAC1AQAAxwEAAMYBAADHAQAAtQEAAMYBAAC1AQAAxgEAAMcBAAC1AQAAxwEAALUBAADGAQAAxgEAAMcBAAC1AQAAxgEAAMcBAADGAQAAtQEAAMYBAADHAQAAxwEAAMcBAAC1AQAAxgEAAMcBAAC1AQAAxgEAAMcBAADGAQAAxgEAAMcBAADGAQAAtQEAALUBAAC1AQAAtQEAAMcBAADHAQAAxgEAAMcBAAC1AQAAxgEAALUBAAC1AQAAxwEAAMcBAADHAQAAxwEAALUBAADGAQAALgEAAC4BAAC1AQAAxwEAAMYBAADHAQAAxwEAAMYBAAC1AQAAtQEAAMcBAAAuAQAAxwEAALUBAADHAQAAtQEAAMYBAADHAQAAxwEAALUBAADGAQAAxgEAAMYBAADGAQAAtQEAAMYBAADHAQAAxgEAALUBAADHAQAAtQEAAMYBAAC1AQAAxgEAAMcBAAC1AQAAxwEAAMYBAADHAQAAxwEAAMYBAADHAQAAtQEAALUBAADHAQAAxwEAAMYBAAC1AQAAxgEAAMcBAADHAQAAxwEAAMcBAAC1AQAAxgEAALUBAAC1AQAAxgEAALUBAADHAQAAxgEAAMYBAADGAQAAxgEAALUBAADGAQAAtQEAALUBAADHAQAAxgEAAMYBAADHAQAAxgEAALUBAADGAQAAxgEAALUBAADGAQAAtQEAALUBAAC1AQAAxwEAAMcBAADHAQAAxwEAAMYBAAC1AQAAxwEAAMYBAADHAQAAxwEAAMcBAAC1AQAAxwEAALUBAADGAQAAxwEAAMYBAADGAQAAxgEAALUBAAC1AQAAtQEAAMcBAAC1AQAAxwEAAMYBAADGAQAAxwEAAMYBAADGAQAAxgEAAMYBAADGAQAAxwEAALUBAAC1AQAAtQEAALUBAADGAQAAtQEAAMcBAADGAQAAxgEAAMcBAADHAQAAxwEAALUBAADGAQAAxwEAAMcBAADGAQAAtQEAAMYBAADHAQAAxgEAAMcBAADGAQAAxwEAAMYBAADHAQAAxwEAALUBAADHAQAAxwEAALUBAADGAQAAtQEAALUBAADGAQAAtQEAAMYBAADHAQAAtQEAALUBAADGAQAAtQEAALUBAADHAQAAtQEAAMYBAADGAQAAxwEAALUBAAC1AQAAxgEAAMcBAAC1AQAAtQEAAMcBAADGAQAAxwEAAMcBAADGAQAAxgEAAMcBAADGAQAAxwEAAMYBAADGAQAAxwEAAMYBAADHAQAAxgEAAMcBAADGAQAAtQEAAMcBAADHAQAAtQEAAMYBAADGAQAAxwEAAMYBAAC1AQAAxgEAAMYBAAC1AQAAxgEAAMYBAAAuAQAAtQEAAMcBAAC1AQAAxwEAAMcBAAC1AQAAtQEAAMcBAAC1AQAAxgEAALUBAAC1AQAAtQEAAMcBAAC1AQAAtQEAALUBAADGAQAAxwEAALUBAAC1AQAAxwEAALUBAADGAQAAxwEAAMYBAADGAQAAxwEAAMYBAAAuAQAAxgEAAMcBAADHAQAAtQEAAMcBAADGAQAAxwEAAMYBAADHAQAA"
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
      data = "AAAAAAAAAAAAAAAAAAAAALkBAAC6AQAAuwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/AEAAAAAAAAAAAAAAAAAALkBAAC6AQAAuwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMgBAAC8AQAA2QEAAAAAAAAAAAAAuQEAALoBAAC6AQAAuwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAuQEAAMwBAADJAQAAywEAALsBAAAAAAAAuQEAALsBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANcBAADZAQAAAAAAAAAAAAAAAAAA1wEAANgBAADYAQAA2QEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAyAEAALwBAADYAQAA2AEAANkBAAAAAAAAyAEAAMsBAAC7AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA1wEAANkBAAAAAAAAAAAAAAAAAAAAAAAA1wEAAL0BAADKAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANcBAADZAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC5AQAAugEAALsBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALkBAAC7AQAAAAAAALkBAAC7AQAAAAAAAAAAAAAAAAAAAAAAALkBAAC7AQAAAAAAAAAAAAC5AQAAuwEAAAAAAADIAQAAvAEAANkBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMgBAADLAQAAugEAAMwBAADLAQAAuwEAAAAAAAAAAAAAAAAAAMgBAADLAQAAugEAALoBAADMAQAAygEAALkBAADMAQAAygEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGQEAABkBAAAvAQAAAAAAANcBAAC9AQAAyQEAAMkBAAC8AQAA2QEAAC0BAAAZAQAALwEAANcBAADYAQAAvQEAAMkBAADJAQAAywEAAMwBAADJAQAAywEAALoBAAC7AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADXAQAAvQEAAMkBAADKAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA1wEAANgBAAC9AQAAvAEAANgBAAC9AQAAyQEAALwBAADZAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA1wEAANgBAADZAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADIAQAAywEAALoBAADMAQAAyQEAAMoBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADXAQAA2AEAAL0BAAC8AQAAvQEAAMsBAAC7AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANcBAADZAQAA1wEAANgBAADZAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAfAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAsAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAsAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABIAAAASAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOAAAAEgAAABIAAAASAAAAFcAAABYAAAASAAAADkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVgAAAFcAAABYAAAAAAAAAAAAAAAAAAAARwAAAEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACwIAAAwCAAANAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVgAAAFcAAABIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAI8CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjwIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaAQAAAAAAALQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABgBAAAAAAAAGgEAAAAAAAAAAAAA0gAAANEAAAAAAAAAAAAAAAAAAAAAAAAAtAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
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
      data = "AAAAAAAAAADvAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD8AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAeAQAAHwEAAB8BAAAgAQAAAAAAAAAAAAAAAAAAAAAAAB4BAAAgAQAAHgEAACABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB4BAAAfAQAAHwEAAB8BAAAxAQAAPwEAAEABAAAwAQAAHwEAACABAAAeAQAAHwEAADEBAAAwAQAAMQEAADABAAAgAQAAAAAAAAAAAAAeAQAAHwEAAB8BAAAgAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHwEAADEBAAA/AQAALgEAAC4BAAA/AQAALgEAAEABAAA/AQAAPwEAADABAAAxAQAAPwEAAC4BAAAuAQAAPwEAAEABAAAwAQAAHwEAAB8BAAAxAQAAQAEAAD8BAAAwAQAAHwEAACABAAAAAAAAAAAAAAAAAAAAAAAAPwEAAD8BAAAuAQAAQAEAAEABAAA/AQAAQAEAAD8BAAAuAQAAQAEAAC4BAAAuAQAAQAEAAEABAAAuAQAAQAEAAEABAAAuAQAAQAEAAD8BAAA/AQAALgEAAEABAAAuAQAAQAEAAC8BAAAeAQAAIAEAAAAAAAAAAAAAPwEAAC4BAAA/AQAAPwEAAC4BAAAuAQAAQAEAAD8BAAAuAQAALgEAAC4BAAA/AQAAQAEAAD8BAAA/AQAALgEAAD8BAAAuAQAAQAEAAC4BAABAAQAAPwEAAC4BAABAAQAAPwEAADABAAAxAQAALwEAAAAAAAAAAAAALgEAAEABAAA/AQAAPwEAAC4BAAAuAQAAIQEAAD0BAAAiAQAAQAEAAEABAAAuAQAAIQEAACIBAAA/AQAAPwEAAD8BAAA/AQAALgEAACEBAAA9AQAAPQEAACIBAAA/AQAAQAEAAEABAAAhAQAAPgEAAAAAAAAAAAAAPwEAAD8BAAAuAQAAIQEAAD0BAAA9AQAAPgEAAAAAAAAtAQAAPwEAAC4BAAA/AQAALwEAADwBAAA9AQAAPQEAACIBAAAhAQAAPQEAAD4BAAAAAAAAAAAAAC0BAAA/AQAAQAEAAC4BAAAwAQAAIAEAAAAAAAAAAAAAPwEAAC4BAAAhAQAAPgEAAAAAAAAAAAAAAAAAAAAAAAA8AQAAPQEAACIBAAA/AQAALwEAAAAAAAAAAAAAAAAAADwBAAA+AQAAAAAAAAAAAAAAAAAAAAAAAC0BAAA/AQAAQAEAAEABAAA/AQAALwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADwBAAAiAQAALgEAAEABAAAhAQAAPgEAAAAAAAAAAAAAQAEAAD8BAAAwAQAAHwEAAB8BAAAgAQAAAAAAAAAAAAAeAQAAHwEAADEBAABAAQAALwEAAB4BAAAfAQAAHwEAACABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AQAAIgEAAC4BAAAwAQAAIAEAAAAAAAAAAAAALgEAAD8BAAA/AQAALgEAAC4BAAAwAQAAHwEAAB8BAAAxAQAAQAEAAEABAABAAQAAMAEAADEBAAAuAQAAPwEAADABAAAgAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALQEAAD8BAAA/AQAALwEAAAAAAAAAAAAALgEAAD8BAAAuAQAAPwEAAC4BAAAuAQAAQAEAAC4BAABAAQAALgEAAEABAAA/AQAALgEAAD8BAABAAQAAPwEAAD8BAAAwAQAAIAEAAAAAAAAAAAAAAAAAAAAAAAAeAQAAMQEAAD8BAAA/AQAAMAEAACABAAAAAAAAIQEAACIBAAAuAQAAPwEAAC4BAAA/AQAAPwEAAEABAABAAQAALgEAAEABAAA/AQAALgEAAD8BAAAuAQAAPwEAAC4BAABAAQAALwEAAAAAAAAAAAAAHgEAAB8BAAAxAQAAQAEAAC4BAAA/AQAAPwEAAC8BAAAAAAAAPgEAADwBAAAiAQAAPwEAAEABAAA/AQAAQAEAAEABAAA/AQAALgEAAC4BAAA/AQAALgEAAEABAAA/AQAAPwEAAD8BAAA/AQAAMAEAAB8BAAAAAAAAMQEAAEABAAA/AQAAQAEAAEABAAAuAQAALgEAAC8BAAAAAAAAAAAAAAAAAAAtAQAALgEAAEABAAA/AQAAPwEAAD8BAAA/AQAAQAEAAC4BAABAAQAALgEAAD8BAAAuAQAALgEAAD8BAAAuAQAAQAEAAD8BAAAAAAAAQAEAAC4BAABAAQAAPwEAAEABAAA/AQAAQAEAAC8BAAAAAAAAAAAAAAAAAAAtAQAAQAEAAEABAAA/AQAAPwEAAD8BAABAAQAALgEAAEABAAAuAQAAPwEAAC4BAAAuAQAAPwEAAD8BAAA/AQAAQAEAAC4BAAAAAAAAPwEAAEABAAA/AQAAPwEAAC4BAAA/AQAAQAEAAC8BAAAAAAAA"
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
          x = 32,
          y = 320,
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
          name = "Daring Boy",
          type = "Npc",
          shape = "rectangle",
          x = 672,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 677,
          visible = true,
          properties = {
            ["ai"] = "static",
            ["dialogue"] = "jungleDaringBoy",
            ["loop"] = true,
            ["path"] = "",
            ["portraitIndex"] = 1,
            ["quests"] = "{}",
            ["velocity"] = 200
          }
        },
        {
          id = 5,
          name = "antlerBoy",
          type = "Npc",
          shape = "rectangle",
          x = 224,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 682,
          visible = true,
          properties = {
            ["ai"] = "static",
            ["dialogue"] = "wildantlerboy.lua",
            ["loop"] = true,
            ["path"] = "",
            ["portraitIndex"] = 1,
            ["quests"] = "{}",
            ["velocity"] = 200
          }
        }
      }
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA+wEAAAAAAAAAAAAA/QEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP0BAAAAAAAA/QEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA+wEAAAAAAAAAAAAA/QEAABoCAAAbAgAAHAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP0BAAAaAgAAGwIAABwCAAD7AQAAAAAAAP0BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA+wEAAAAAAAAAAAAA/QEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP0BAAAAAAAAAAAAAAAAAAD7AQAACwIAAAwCAAANAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADqAQAACgIAAAAAAAAYAgAAGQIAACoCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP0BAAAAAAAAAAAAAOAAAAD7AQAAAAAAAAAAAAD9AQAAAAAAAAAAAAAAAAAA6wEAAOsBAADsAQAA6gEAAOsBAAAKAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALQAAAAAAAAAAAAAAAAAAAAAAAAAJwIAACgCAAApAgAAAAAAAOoBAAD7AQAA7AEAAAsCAAAMAgAADQIAAAAAAAAAAAAAAAAAAAAAAAAIAgAACgIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgCAAAKAgAA+QEAAAAAAADqAQAA6wEAAOsBAADrAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAIAAAkCAAAKAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOoBAADrAQAA6wEAAOsBAADrAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPkBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPkBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOoBAAAJAgAACQIAAAoCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPkBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    },
    {
      type = "tilelayer",
      name = "Tile Layer 8",
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALAgAADAIAAA0CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGgIAABsCAAAcAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAvgEAAMABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC+AQAAvwEAAL8BAADAAQAAAAAAAL4BAAC/AQAAwAEAAAAAAAAAAAAAzQEAAM8BAAAAAAAAAAAAAL4BAAC/AQAAwAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAvgEAAL8BAADRAQAAzgEAAMEBAADeAQAAvgEAANEBAADOAQAA0AEAAMABAAAAAAAAzQEAANABAADAAQAAAAAAANwBAADCAQAAzwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzQEAAMEBAADdAQAA3QEAAN4BAAAAAAAA3AEAAN0BAADCAQAAzgEAAM8BAAAAAAAA3AEAAMIBAADPAQAAAAAAAL4BAADRAQAA0AEAAL8BAAC/AQAAvwEAAMABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3AEAAN4BAAC+AQAAvwEAAMABAAAAAAAAAAAAAAAAAADNAQAAzgEAANABAADAAQAAAAAAANwBAADeAQAAAAAAANwBAADCAQAAzgEAAM4BAADOAQAAzgEAAM8BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC+AQAAvwEAAL8BAADRAQAAzgEAANABAADAAQAAAAAAAAAAAADNAQAAzgEAAM4BAADQAQAAwAEAAAAAAAAAAAAAAAAAAAAAAADcAQAAwgEAAM4BAADOAQAAzgEAANABAADAAQAAAAAAAAAAAAAAAAAAAAAAAL4BAADRAQAAzgEAAM4BAADOAQAAwQEAAN0BAADeAQAAAAAAAAAAAADcAQAAwgEAAM4BAADOAQAAzwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3AEAAMIBAADOAQAAzgEAAMEBAADeAQAAAAAAAAAAAAAAAAAAAAAAAM0BAADOAQAAzgEAAMEBAADdAQAA3gEAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3AEAAN0BAADdAQAA3gEAAAAAAAAAAAAAvgEAAL8BAADAAQAAAAAAANwBAADdAQAA3QEAAN4BAAAAAAAAAAAAAAAAAAAAAAAAAAAAANwBAADdAQAA3QEAAN4BAAAAAAAAAAAAAL4BAAC/AQAAvwEAAL8BAADAAQAAAAAAAAAAAAAAAAAAAAAAAL4BAAC/AQAA0QEAAM4BAADQAQAAvwEAAMABAAAAAAAAAAAAAAAAAAC+AQAAwAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAvgEAANEBAADOAQAAzgEAAM4BAADQAQAAvwEAAMABAAAAAAAAAAAAAM0BAADOAQAAzgEAAM4BAADOAQAAzgEAANABAADAAQAAAAAAAL4BAADRAQAAzwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzQEAAMEBAADdAQAA3QEAAN0BAADCAQAAzgEAANABAADAAQAAAAAAANwBAADdAQAA3QEAAMIBAADOAQAAzgEAAM4BAADPAQAAAAAAAM0BAADOAQAAzwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3AEAAN4BAAAAAAAAAAAAAAAAAADcAQAA3QEAAN0BAADeAQAAAAAAAAAAAAAAAAAAAAAAANwBAADCAQAAzgEAAMEBAADeAQAAvgEAANEBAADOAQAAzwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAL4BAADRAQAAwQEAAN4BAAAAAAAAzQEAAMEBAADdAQAA3gEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANwBAADdAQAA3gEAAAAAAAAAAAAA3AEAAN4BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
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
      data = "IwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAWAgAAFwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAABYCAAAyAgAAFwIAABYCAAAXAgAAFgIAADICAAAXAgAAFgIAABcCAAAjAgAAIwIAABYCAAAXAgAAFgIAADICAAAzAgAAIgIAABYCAAAXAgAAFgIAABcCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAjAgAAFgIAADMCAAAAAAAAMQIAADMCAAAxAgAAMwIAAAAAAAAxAgAAMwIAADECAAAXAgAAFgIAADMCAAAxAgAAMwIAAAAAAAAAAAAAMQIAADMCAAAxAgAAMwIAACICAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAWAgAAMwIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxAgAAMwIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADECAAAXAgAAIwIAACMCAAAjAgAAMgIAADICAAAzAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADrAQAAAAAAAAAAAAAxAgAAFwIAACMCAAAjAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMQIAABcCAAAjAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEwIAACYCAAAjAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMQIAABcCAAAjAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEwIAACYCAAAjAgAAAAAAAAAAAAAJAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAAACQEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMQIAABcCAAAjAgAAqwEAAKsBAACsAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKoBAACrAQAArAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADECAAAXAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABMCAAAmAgAAAAAAAAAAAAAAAAAAEwIAABUCAAAAAAAAAAAAAAAAAAAAAAAAAAAAABMCAAAVAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACICAAAjAgAAAAAAABMCAAAUAgAAJgIAACUCAAAUAgAAFQIAAAAAAAATAgAAFAIAACYCAAAlAgAAFAIAABUCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEwIAACYCAAAjAgAAFAIAACYCAAAjAgAAIwIAACMCAAAjAgAAJQIAABQCAAAmAgAAIwIAACMCAAAjAgAAIwIAACUCAAAVAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABMCAAAVAgAAIgIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAlAgAAFAIAABUCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACICAAAlAgAAJgIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACMCAAAjAgAAIwIAACUCAAAVAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEwIAACYCAAAjAgAAIwIAACMCAAAjAgAA"
    }
  }
}
