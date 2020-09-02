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
  nextobjectid = 7,
  properties = {
    ["areaNameKey"] = "plainsArea",
    ["nextMapDown"] = "camcaverns01.lua",
    ["nextMapLeft"] = "plains03.lua",
    ["nextMapUp"] = "jungle01.lua"
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
          name = "Swamp Water",
          tile = 346,
          properties = {}
        },
        {
          name = "Tree Canopy",
          tile = -1,
          properties = {}
        },
        {
          name = "Swamp Grass",
          tile = 456,
          properties = {}
        },
        {
          name = "Swamp Mud",
          tile = 436,
          properties = {}
        },
        {
          name = "Path",
          tile = 616,
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
          id = 330,
          terrain = { -1, -1, -1, 9 }
        },
        {
          id = 331,
          terrain = { -1, -1, 9, 9 }
        },
        {
          id = 332,
          terrain = { -1, -1, 9, -1 }
        },
        {
          id = 333,
          terrain = { 9, 9, 9, -1 }
        },
        {
          id = 334,
          terrain = { 9, 9, -1, 9 }
        },
        {
          id = 345,
          terrain = { -1, 9, -1, 9 }
        },
        {
          id = 346,
          terrain = { 9, 9, 9, 9 }
        },
        {
          id = 347,
          terrain = { 9, -1, 9, -1 }
        },
        {
          id = 348,
          terrain = { 9, -1, 9, 9 }
        },
        {
          id = 349,
          terrain = { -1, 9, 9, 9 }
        },
        {
          id = 360,
          terrain = { -1, 9, -1, -1 }
        },
        {
          id = 361,
          terrain = { 9, 9, -1, -1 }
        },
        {
          id = 362,
          terrain = { 9, -1, -1, -1 }
        },
        {
          id = 363,
          terrain = { 9, 9, 9, 9 }
        },
        {
          id = 364,
          terrain = { 9, 9, 9, 9 }
        },
        {
          id = 420,
          terrain = { -1, -1, -1, 12 }
        },
        {
          id = 421,
          terrain = { -1, -1, 12, 12 }
        },
        {
          id = 422,
          terrain = { -1, -1, 12, -1 }
        },
        {
          id = 423,
          terrain = { 12, 12, 12, -1 }
        },
        {
          id = 424,
          terrain = { 12, 12, -1, 12 }
        },
        {
          id = 435,
          terrain = { -1, 12, -1, 12 }
        },
        {
          id = 436,
          terrain = { 12, 12, 12, 12 }
        },
        {
          id = 437,
          terrain = { 12, -1, 12, -1 }
        },
        {
          id = 438,
          terrain = { 12, -1, 12, 12 }
        },
        {
          id = 439,
          terrain = { -1, 12, 12, 12 }
        },
        {
          id = 440,
          terrain = { -1, -1, -1, 11 }
        },
        {
          id = 441,
          terrain = { -1, -1, 11, 11 }
        },
        {
          id = 442,
          terrain = { -1, -1, 11, -1 }
        },
        {
          id = 443,
          terrain = { 11, 11, 11, -1 }
        },
        {
          id = 444,
          terrain = { 11, 11, -1, 11 }
        },
        {
          id = 450,
          terrain = { -1, 12, -1, -1 }
        },
        {
          id = 451,
          terrain = { 12, 12, -1, -1 }
        },
        {
          id = 452,
          terrain = { 12, -1, -1, -1 }
        },
        {
          id = 453,
          terrain = { 12, 12, 12, 12 }
        },
        {
          id = 454,
          terrain = { 12, 12, 12, 12 }
        },
        {
          id = 455,
          terrain = { -1, 11, -1, 11 }
        },
        {
          id = 456,
          terrain = { 11, 11, 11, 11 }
        },
        {
          id = 457,
          terrain = { 11, -1, 11, -1 }
        },
        {
          id = 458,
          terrain = { 11, -1, 11, 11 }
        },
        {
          id = 459,
          terrain = { -1, 11, 11, 11 }
        },
        {
          id = 470,
          terrain = { -1, 11, -1, -1 }
        },
        {
          id = 471,
          terrain = { 11, 11, -1, -1 }
        },
        {
          id = 472,
          terrain = { 11, -1, -1, -1 }
        },
        {
          id = 530,
          terrain = { -1, -1, -1, 10 }
        },
        {
          id = 531,
          terrain = { -1, -1, 10, 10 }
        },
        {
          id = 532,
          terrain = { -1, -1, 10, -1 }
        },
        {
          id = 533,
          terrain = { 10, 10, 10, -1 }
        },
        {
          id = 534,
          terrain = { 10, 10, -1, 10 }
        },
        {
          id = 545,
          terrain = { -1, 10, -1, 10 }
        },
        {
          id = 546,
          terrain = { 10, 10, 10, 10 }
        },
        {
          id = 547,
          terrain = { 10, -1, 10, -1 }
        },
        {
          id = 548,
          terrain = { 10, -1, 10, 10 }
        },
        {
          id = 549,
          terrain = { -1, 10, 10, 10 }
        },
        {
          id = 560,
          terrain = { -1, 10, -1, -1 }
        },
        {
          id = 561,
          terrain = { 10, 10, -1, -1 }
        },
        {
          id = 562,
          terrain = { 10, -1, -1, -1 }
        },
        {
          id = 600,
          terrain = { -1, -1, -1, 13 }
        },
        {
          id = 601,
          terrain = { -1, -1, 13, 13 }
        },
        {
          id = 602,
          terrain = { -1, -1, 13, -1 }
        },
        {
          id = 603,
          terrain = { 13, 13, 13, -1 }
        },
        {
          id = 604,
          terrain = { 13, 13, -1, 13 }
        },
        {
          id = 615,
          terrain = { -1, 13, -1, 13 }
        },
        {
          id = 616,
          terrain = { 13, 13, 13, 13 }
        },
        {
          id = 617,
          terrain = { 13, -1, 13, -1 }
        },
        {
          id = 618,
          terrain = { 13, -1, 13, 13 }
        },
        {
          id = 619,
          terrain = { -1, 13, 13, 13 }
        },
        {
          id = 630,
          terrain = { -1, 13, -1, -1 }
        },
        {
          id = 631,
          terrain = { 13, 13, -1, -1 }
        },
        {
          id = 632,
          terrain = { 13, -1, -1, -1 }
        },
        {
          id = 633,
          terrain = { 13, 13, 13, 13 }
        },
        {
          id = 634,
          terrain = { 13, 13, 13, 13 }
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
      data = "EQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABIAAAC1AQAAtQEAALUBAAC1AQAAtQEAALUBAAAgAAAAIAAAACEAAAC0AQAAxgEAAMcBAADHAQAAtwEAAKcBAAAfAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAAAQAAAAgAAAAIAAAACEAAAC1AQAAtQEAALUBAAC1AQAAtQEAAKYBAACmAQAApgEAAKYBAAC4AQAAxgEAALUBAAC1AQAAtQEAALcBAACmAQAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAABAAAACEAAAClAQAApgEAAKcBAAC0AQAAxgEAALUBAADGAQAAxwEAAMcBAAC1AQAAxgEAALUBAAC1AQAAxwEAALUBAADHAQAAxwEAALUBAAC1AQAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEgAAAAAAAAC1AQAAxwEAALcBAAC4AQAAxwEAAMcBAADHAQAAxgEAAMcBAAC1AQAAxgEAALUBAAC1AQAAxgEAAMcBAADGAQAAxwEAALUBAADHAQAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEwAAAAMAAAC1AQAAxgEAAMcBAAC1AQAAxwEAALUBAADHAQAAtQEAAMcBAADGAQAAxgEAAMcBAADGAQAAxgEAAMcBAAC1AQAAtQEAAMcBAADGAQAAEQAAABEAAAARAAAAIwAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABIAAAC1AQAAtQEAALUBAADHAQAAxwEAAMYBAAC1AQAAtQEAAMYBAAC1AQAAxwEAAMYBAAC1AQAAxwEAALUBAAC1AQAAtQEAALUBAAC1AQAAEQAAABEAAAARAAAAIgAAABEAAAARAAAAEQAAABEAAAARAAAAIgAAABMAAAACAAAAAwAAALUBAAC1AQAAtQEAAMcBAADGAQAAxgEAAMcBAAC1AQAAxwEAALUBAADHAQAAtQEAAMYBAADHAQAAtQEAAMYBAADGAQAAEQAAABEAAAARAAAAEQAAACMAAAAiAAAAEQAAABEAAAARAAAAEQAAACIAAAAjAAAAEwAAAAIAAAC1AQAAtQEAALUBAAC1AQAAxwEAAMYBAAC1AQAAxwEAAMYBAADGAQAAxwEAAMcBAADHAQAAqAEAAMQBAADEAQAAEQAAABEAAAARAAAAEQAAABEAAAAiAAAAEQAAABEAAAARAAAAIgAAABEAAAARAAAAEQAAACIAAAATAAAAAgAAALUBAAC1AQAAqQEAAKgBAACpAQAAtQEAAMYBAAC1AQAAxgEAAMcBAADHAQAAtwEAAKcBAAAAAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAACIAAAARAAAAEQAAABEAAAARAAAAIgAAABMAAAADAAAAwwEAAMUBAAC0AQAAtQEAALUBAAC1AQAAxwEAAMYBAAC1AQAAxwEAALcBAACnAQAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAACIAAAAjAAAAEQAAACMAAAARAAAAIgAAABEAAAATAAAAAgAAAAMAAAC0AQAAtQEAAMcBAADGAQAAxwEAAMcBAADGAQAAtQEAAMYBAAC2AQAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAACIAAAAiAAAAIwAAACIAAAAiAAAAEQAAABEAAAAiAAAAEQAAABIAAADDAQAAxAEAAMQBAADEAQAAxAEAAMQBAADEAQAAqQEAALUBAAC2AQAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAIgAAACMAAAAjAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAAAIAAAACAAAAAgAAAAIAAAADAAAAwwEAAMQBAADFAQAAEQAAABEAAAARAAAAIwAAACIAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAACIAAAAjAAAAIwAAABEAAAARAAAAEQAAABEAAAAiAAAAIgAAABEAAAARAAAAEQAAACIAAAATAAAAAgAAAAIAAAACAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAIgAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAACMAAAAiAAAAIgAAACMAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAIwAAACIAAAAjAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAA"
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
      data = "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"
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAClAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACjAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACjAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApQAAAAAAAAAAAAAApQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACjAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAClAAAAAAAAAAsCAAAAAAAADQIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKQAAACkAAAApAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACwIAAAAAAAAAAAAApAAAAAAAAAAAAAAAAAAAAKUAAACzAAAAowAAAKQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACwIAAAAAAAANAgAAAAAAAAAAAAAAAAAAAAAAAI8CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKUAAAAAAAAAsQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAowAAAKQAAAAAAAAAAAAAAAAAAAAAAAAA0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAsCAAAAAAAADQIAAAsCAAAAAAAADQIAAKMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKMAAACkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACjAAAApAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
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
      data = "lQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACFAAAAhgAAAIcAAACUAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACUAAAAlQAAAJYAAACUAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAApAAAAKQAAACUAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACjAAAApAAAAKUAAACUAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAAAAAAAAAAACjAAAAlAAAAJUAAACVAAAAlQAAAJUAAACVAAAAlgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACUAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAAAAAAAAAAAAAAAAAowAAAKQAAACkAAAAlAAAAJUAAACVAAAAlgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACUAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAowAAAKQAAACUAAAAlgAAAAAAAAAMAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP0BAACUAAAAlQAAAJUAAACVAAAAlQAAAJYAAAAAAAAAlAAAAJUAAACVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACjAAAApQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwCAAAAAAAAlAAAAJUAAACVAAAAlQAAAJYAAAAAAAAAAAAAAJQAAACVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlAAAAJUAAACVAAAAlQAAAJYAAAAAAAAAAAAAAJQAAACVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAowAAAJQAAACVAAAAlQAAAJUAAACWAAAAAAAAAJQAAACVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJQAAACVAAAAlQAAAJUAAACWAAAAAAAAAJQAAACVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAgAAAAAAAAAAAAAMAgAAAAAAAJQAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJQAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJQAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKMAAACUAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACUAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACUAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlAAAAJUAAACVAAAAlQAAAJUAAACVAAAA"
    },
    {
      type = "tilelayer",
      name = "Tile Layer 7",
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACFAAAAhQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
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
          x = 544,
          y = 544,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 15,
          visible = true,
          properties = {
            ["tilePos"] = "{17,16}"
          }
        },
        {
          id = 5,
          name = "Adventure Girl",
          type = "Npc",
          shape = "rectangle",
          x = 608,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 709,
          visible = true,
          properties = {
            ["ai"] = "static",
            ["dialogue"] = "plainsAdventureGirl",
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
      name = "Foreground Layer",
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
      data = "hgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhwAAADgCAAA5AgAAOgIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOAIAADkCAAA6AgAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAAAAAAAAAAACFAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhwAAAEcCAABIAgAASQIAAAAAAAAAAAAAAAAAAAAAAAAAAAAARwIAAEgCAABJAgAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAAAAAAAAAAAAAAAAAhQAAAIYAAACGAAAAhgAAAIYAAACGAAAAhwAAAFYCAABXAgAAWAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVgIAAFcCAABYAgAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhQAAAIYAAACGAAAAhwAAAAAAAADuAQAAOAIAADkCAAA6AgAAAAAAADgCAAA5AgAAOgIAAO4BAACFAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACFAAAAhwAAAAAAAAD9AQAARwIAAEgCAABJAgAAAAAAAEcCAABIAgAASQIAAP0BAACFAAAAhgAAAIYAAACGAAAAhgAAAIcAAAAAAAAAhQAAAIYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVgIAAFcCAABYAgAAAAAAAFYCAABXAgAAWAIAADgCAAA5AgAAOgIAAIYAAACGAAAAhgAAAIcAAAAAAAAAAAAAAIUAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP0BAAAAAAAAAAAAAAAAAADuAQAAAAAAAEcCAABIAgAASQIAAIYAAACGAAAAhgAAAIcAAAAAAAAAAAAAAIUAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD9AQAAAAAAAFYCAABXAgAAWAIAAIUAAACGAAAAhgAAAIYAAACHAAAAAAAAAIUAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD9AQAAAAAAAAAAAADuAQAAAAAAAIUAAACGAAAAhgAAAIYAAACHAAAAAAAAAIUAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD9AQAAAAAAAAAAAAD9AQAAAAAAAIUAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIUAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIUAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACFAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACFAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACFAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhQAAAIYAAACGAAAAhgAAAIYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIYAAACGAAAAhgAAAIYAAACGAAAA"
    }
  }
}
