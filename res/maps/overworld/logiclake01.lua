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
  nextobjectid = 14,
  properties = {
    ["areaNameKey"] = "lakeArea",
    ["nextMapDown"] = "cove03.lua",
    ["nextMapRight"] = "logiclake04.lua",
    ["nextMapUp"] = "logiclake02.lua"
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
      data = "9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAFAAAABPAAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAFAAAAA+AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAFAAAABQAAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAD4AAABPAAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAPcAAAD3AAAA9wAAAD4AAAA+AAAA"
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
      data = "xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADQAAAAAAAAALMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAsgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAtQAAAAAAAAC3AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAM8AAAAAAAAAAAAAALIAAAAAAAAAAAAAAAAAAAAAAAAAxAAAAAAAAADGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAAAAALIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0AAAAAAAAACxAAAAAAAAAAAAAAAAAAAAAAAAANEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUAAAC2AAAAtwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMQAAADFAAAAxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMQAAADFAAAAxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMQAAADFAAAAxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMQAAADFAAAAxgAAAAAAAAAAAAAA"
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAI8CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACPAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABmAAAAZgAAAGYAAABmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAATwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAATwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAATwAAAAAAAAAAAAAA"
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
      data = "lQAAAJUAAACWAAAAdQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAagAAAH0AAABrAAAAawAAAHwAAABrAAAAawAAAH0AAAB9AAAAfQAAAH0AAAB9AAAAfAAAAGsAAAB9AAAAfAAAAH0AAAB9AAAAlQAAAJYAAAClAAAAdQAAAAAAAAAAAAAAAAAAAL4AAAAAAAAAAAAAAAAAAABbAAAAbgAAAHwAAAB9AAAAfAAAAHwAAAB9AAAAfQAAAH0AAAB8AAAAfQAAAGsAAABrAAAAfQAAAH0AAABrAAAAawAAAGsAAAB9AAAAlQAAAJYAAAAAAAAAdQAAAAAAAAC+AAAAAAAAAAAAAAAAAAAAAAAAAAAAAABqAAAAfAAAAGsAAAB8AAAAfAAAAH0AAAB8AAAAfAAAAGsAAAB9AAAAfQAAAGsAAAB8AAAAawAAAHwAAAB9AAAAawAAAHwAAAB9AAAAlQAAAJYAAAAAAAAAdQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB5AAAAXwAAAGsAAAB8AAAAfAAAAHwAAABeAAAAegAAAF8AAABeAAAAXwAAAH0AAAB9AAAAXgAAAHoAAABfAAAAfAAAAF4AAAB6AAAAlQAAAJYAAACTAAAAdQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAeQAAAHoAAABfAAAAfQAAAF4AAAB7AAAAAAAAAHkAAAB7AAAAeQAAAHoAAAB6AAAAewAAAAAAAAB5AAAAegAAAHsAAAAAAAAAlQAAAJYAAAAAAAAAdQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAL4AAAAAAAAAAAAAAAAAAAB5AAAAegAAAHsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAvgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlQAAAJYAAAAAAAAAdQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaAAAAGYAAABpAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAL4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlQAAAJUAAACWAAAAdQAAAAAAAAAAAAAAAAAAAL4AAAAAAAAAdgAAAAAAAAB2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlQAAAJUAAACWAAAAdQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC+AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAvgAAAAAAAAAAAAAAlQAAAJYAAAClAAAAdQAAAAAAAAC+AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC+AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC+AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlQAAAJYAAAAAAAAAdQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlQAAAJYAAAAAAAAAdQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGgAAAAuAAAALwAAAC8AAAAvAAAAlQAAAJYAAAAAAAAAdwAAAGYAAABmAAAAZgAAAGYAAABmAAAAZgAAAGYAAABmAAAAZgAAAGYAAABmAAAAaQAAAAAAAAAAAAAAAAAAAGgAAABmAAAAZgAAAGYAAABmAAAAZgAAAHgAAAA9AAAAAAAAAAAAAAAAAAAAlQAAAJYAAAAAAAAAhwAAAAAAAAAAAAAAAAAAAJMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB3AAAAeAAAAAAAAAAAAAAAAAAAAHcAAAB4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAAAAAAAAAAAAAAAAAAlQAAAJUAAACVAAAAlgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlAAAAJUAAACVAAAAlgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAAAAAAAAAAAAAAAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAAAAAAAAAAAAAAAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAAtQAAAAAAAAAAAAAA"
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
          id = 11,
          name = "Radu",
          type = "Npc",
          shape = "rectangle",
          x = 320,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 726,
          visible = true,
          properties = {
            ["ai"] = "static",
            ["dialogue"] = "MrFlappy.lua",
            ["loop"] = true,
            ["path"] = "",
            ["portraitIndex"] = 1,
            ["quests"] = "{}",
            ["velocity"] = 200
          }
        },
        {
          id = 12,
          name = "rivalKid",
          type = "Npc",
          shape = "rectangle",
          x = 160,
          y = 352,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 727,
          visible = true,
          properties = {
            ["ai"] = "static",
            ["dialogue"] = "rivalKid.lua",
            ["loop"] = true,
            ["path"] = "",
            ["portraitIndex"] = 14,
            ["quests"] = "{\"rivalKidQuest1.lua\"}",
            ["velocity"] = 200
          }
        },
        {
          id = 5,
          name = "Logic Lake Sign Post",
          type = "SignPost",
          shape = "rectangle",
          x = 480,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 236,
          visible = true,
          properties = {
            ["dialogue"] = "llSignpost"
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
      data = "hgAAAIcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAK8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADEAAAAxQAAAMUAAAC4AAAAuQAAAMUAAADFAAAAxQAAAMUAAADFAAAAxQAAAMUAAADFAAAAxQAAAMUAAADFAAAAhgAAAIcAAAAAAAAAAAAAAAAAAACvAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADTAAAA1AAAANQAAADVAAAA0wAAANQAAADUAAAAuQAAAMUAAAC4AAAA1AAAANQAAADUAAAA1AAAANQAAADUAAAAhgAAAIcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0wAAANQAAADVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhgAAAIcAAACEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhgAAAIcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAK8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAArwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhgAAAIcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAK8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhgAAAIYAAACHAAAAAAAAAAAAAAAAAAAAAAAAAK8AAAAAAAAAAAAAALYDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhgAAAIYAAACHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACvAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAArwAAAAAAAAAAAAAAhgAAAIYAAAAAAAAAAAAAAAAAAACvAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACvAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACvAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhgAAAIcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhgAAAIcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhgAAAIcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhgAAAIcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhgAAAIYAAACGAAAAhwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhQAAAIYAAACGAAAAhwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABPAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAATwAAAAAAAAAAAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALgAAAC8AAAAvAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPQAAAE8AAABPAAAA"
    }
  }
}
