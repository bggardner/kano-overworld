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
  nextobjectid = 12,
  properties = {
    ["areaNameKey"] = "plainsArea",
    ["nextMapDown"] = "hdmi01.lua",
    ["nextMapLeft"] = "logiclake04.lua",
    ["nextMapUp"] = "plains02.lua"
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
          id = 600,
          terrain = { -1, -1, -1, 9 }
        },
        {
          id = 601,
          terrain = { -1, -1, 9, 9 }
        },
        {
          id = 602,
          terrain = { -1, -1, 9, -1 }
        },
        {
          id = 603,
          terrain = { 9, 9, 9, -1 }
        },
        {
          id = 604,
          terrain = { 9, 9, -1, 9 }
        },
        {
          id = 615,
          terrain = { -1, 9, -1, 9 }
        },
        {
          id = 616,
          terrain = { 9, 9, 9, 9 }
        },
        {
          id = 617,
          terrain = { 9, -1, 9, -1 }
        },
        {
          id = 618,
          terrain = { 9, -1, 9, 9 }
        },
        {
          id = 619,
          terrain = { -1, 9, 9, 9 }
        },
        {
          id = 630,
          terrain = { -1, 9, -1, -1 }
        },
        {
          id = 631,
          terrain = { 9, 9, -1, -1 }
        },
        {
          id = 632,
          terrain = { 9, -1, -1, -1 }
        },
        {
          id = 633,
          terrain = { 9, 9, 9, 9 }
        },
        {
          id = 634,
          terrain = { 9, 9, 9, 9 }
        }
      }
    },
    {
      name = "logiclake-walkingfarmer",
      firstgid = 646,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../images/walkingNPCs/logiclake-walkingfarmer.png",
      imagewidth = 128,
      imageheight = 160,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 20,
      tiles = {}
    },
    {
      name = "Landscape2",
      firstgid = 666,
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
      data = "EQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAACMAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAAAAAAAAAAAAAAAAAEQAAABEAAAARAAAAIwAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAAiAAAAEQAAACMAAAARAAAAEQAAABEAAAARAAAAEQAAACIAAAARAAAAAAAAAAAAAAAAAAAAEQAAABEAAAARAAAAEQAAABEAAAAiAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAIwAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAIwAAABEAAAARAAAAEQAAACIAAAARAAAAAAAAAAAAAAAAAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAAAAAAAAAAAAAAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAACMAAAARAAAAIwAAABEAAAARAAAAEQAAABEAAAARAAAAIgAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAAAAAAAAAAAAAAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAIwAAABEAAAARAAAAEQAAABEAAAARAAAAAAAAAAAAAAAAAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAIwAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAACMAAAARAAAAAAAAAAAAAAAAAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAIwAAABEAAAARAAAAEQAAABEAAAAiAAAAEQAAAAAAAAAAAAAAEQAAABEAAAAiAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAAjAAAAEQAAACMAAAARAAAAEQAAABEAAAARAAAAEQAAACIAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAAAAAAAAAAAAAEQAAABEAAAAjAAAAEQAAABEAAAAiAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAIgAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAAAAAAAAAAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAIwAAABEAAAARAAAAEQAAAAAAAAAAAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAAAAAAAAAAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAACIAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAAAAAAAAAAAAATwAAAD4AAAA+AAAATwAAAFAAAABPAAAAPgAAABEAAAARAAAAUAAAAD4AAABPAAAAEQAAACMAAAARAAAAUAAAAD4AAABQAAAAEQAAABEAAAAiAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAAAAAAAAAAAAAPgAAAD4AAAA+AAAAPgAAAE8AAABQAAAAPgAAAFAAAAA+AAAATwAAAFAAAABQAAAAPgAAAE8AAAA+AAAAPgAAAFAAAABQAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAAAAAAAAAAAAATwAAAFAAAABPAAAAPgAAAD4AAABQAAAATwAAAE8AAABQAAAAPgAAAD4AAABQAAAAPgAAAE8AAABQAAAAPgAAAFAAAABQAAAAPgAAABEAAAARAAAAEQAAABEAAAAiAAAAIgAAABEAAAARAAAAEQAAAAAAAAAAAAAAPgAAAE8AAAA+AAAATwAAAD4AAABPAAAAPgAAAD4AAABPAAAATwAAAFAAAABQAAAAPgAAAE8AAABPAAAAPgAAAFAAAAA+AAAAPgAAAFAAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAAAAAAAAAAAAA"
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
      data = "8gAAAPIAAADyAAAA8gAAAPQAAADkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADEAAAAxQAAAMYAAAAAAAAA8gAAAPIAAADyAAAA8gAAAPIAAADzAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzwAAAAAAAADEAAAAxQAAAMYAAAAAAAAA8gAAAPIAAADyAAAA8gAAAPIAAADzAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADEAAAAxQAAAMYAAAAAAAAA8gAAAPIAAADyAAAA8gAAAPIAAADzAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADEAAAAxQAAAMYAAAAAAAAA8gAAAPIAAADyAAAA8gAAAPIAAAD0AAAA5AAAAAAAAAAAAAAAAAAAAAAAAACkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADEAAAAxQAAAMYAAAAAAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA9AAAAOQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADEAAAAxQAAAMYAAAAAAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPQAAADkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADEAAAAxQAAAMYAAAAAAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAOUAAAACAQAAAAAAAM8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADEAAAAxQAAAMYAAAAAAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADEAAAAxQAAAMYAAAAAAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPQAAADkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADTAAAA1AAAANUAAAAAAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA5QAAAOYAAADzAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAsQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8wAAAAABAAACAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAtQAAALYAAAC3AAAA8gAAAPIAAADyAAAA8gAAAPIAAADlAAAAAgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxAAAAMUAAADGAAAAPgAAAD4AAAA+AAAAPgAAAD4AAAA+AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxAAAAMUAAADGAAAAPgAAAD4AAAA+AAAAPgAAAD4AAAA+AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxAAAAMUAAADGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxAAAAMUAAADGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxAAAAMUAAADGAAAA"
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABoAgAAegIAAGkCAAB7AgAAegIAAGsCAABbAgAAAAAAAAAAAAAAAAAATwAAAE8AAABQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB3AgAAXQIAAGkCAAB6AgAAewIAAHoCAABqAgAAAAAAAAAAAAAAAAAAUAAAAE8AAABQAAAAtgAAALYAAAC2AAAAtgAAALYAAAC2AAAAtgAAALYAAAC2AAAAtgAAALYAAAC2AAAAtgAAALcAAAAAAAAAAAAAAAAAAAAAAAAAdwIAAF0CAABpAgAAaQIAAFwCAAB5AgAAAAAAAAAAAAAAAAAAUAAAAD4AAAA+AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGgCAAB7AgAAewIAAGsCAABbAgAAAAAAAAAAAAAAAAAAUAAAAE8AAABPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxgAAAAAAAAAAAAAAWQIAAGwCAAB6AgAAewIAAHsCAABqAgAAAAAAAAAAAAAAAAAATwAAAFAAAAA+AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFkCAABaAgAAbAIAAGkCAAB7AgAAaQIAAGkCAABqAgAAAAAAAAAAAAAAAAAAPgAAAFAAAABPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFkCAABaAgAAWgIAAGwCAAB7AgAAewIAAHoCAAB7AgAAXAIAAHgCAAB5AgAAAAAAAAAAAAAAAAAAUAAAAFAAAAA+AAAAAAAAAAAAAAAAAAAAAAAAALEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWQIAAGwCAAB7AgAAaQIAAHsCAAB7AgAAaQIAAHoCAAB6AgAAawIAAFsCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD4AAABQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWQIAAFoCAABaAgAAbAIAAHsCAAB6AgAAegIAAHoCAAB7AgAAXAIAAF0CAAB6AgAAaQIAAGoCAAAAAAAAAAAAAAAAAAAVAAAAJQAAAD4AAAA+AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaAIAAHsCAAB6AgAAegIAAHoCAABcAgAAeAIAAHgCAAB4AgAAeQIAAHcCAABdAgAAewIAAGsCAABaAgAAWgIAAFsCAAAVAAAAKAAAAD4AAAA+AAAAAAAAAAAAAADQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdwIAAHgCAABdAgAAewIAAFwCAAB5AgAAAAAAAAAAAAAAAAAAAAAAAAAAAABoAgAAewIAAHsCAABpAgAAXAIAAHkCAAAYAAAAFgAAAFAAAABQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB3AgAAeAIAAHkCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB3AgAAXQIAAGkCAABpAgAAagIAAAAAAAAnAAAAFgAAAD4AAABQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABZAgAAbAIAAHoCAABpAgAAawIAAFsCAAAAAAAAAAAAAD4AAABPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB3AgAAXQIAAHsCAAB7AgAAewIAAGsCAABbAgAAAAAAAE8AAABPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaAIAAGkCAAB7AgAAaQIAAHoCAABqAgAAAAAAAE8AAABPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdwIAAF0CAABpAgAAegIAAFwCAAB5AgAAAAAAAFAAAABPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC3AAAAAAAAAGgCAAB6AgAAaQIAAGoCAAAAAAAAAAAAAFAAAAA+AAAA"
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
      data = "lQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACWAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAAAAAAAAAAAAAAAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAAAAAAAAAAAAAAAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAAAAAAAAAAAAAAAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJUAAACVAAAAlQAAAJYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAAAAAAAAAAAAAAAAAApAAAAKQAAACkAAAApAAAAKQAAACkAAAApAAAAKQAAACkAAAApAAAAKQAAACUAAAAlQAAAJUAAACVAAAAlgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAAAAAAAAAAAAAAAAAAZgAAAGYAAABmAAAAZgAAAGYAAABmAAAAaQAAAAAAAAAAAAAAAAAAAAAAAACjAAAApAAAAKQAAACkAAAApQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB3AAAAeAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPAQAAEwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAvgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVAAAAPQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP4CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVAAAAPQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABoAAAAaQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVAAAAPQAAAAAAAAAAAAAAZgAAAGYAAABmAAAAZgAAAGYAAABmAAAAeAAAAAAAAAAAAAAAAAAAAP4CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAnAAAAPQAAAAAAAAAAAAAALwAAAC8AAAAvAAAALwAAAC8AAAAvAAAALwAAADAAAAAuAAAALwAAAC8AAAAvAAAAMAAAAAAAAAAuAAAALwAAAC8AAAAvAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAABBAAAAAAAAAAAAAAAAAAAAQAAAAC8AAABBAAAAAAAAAAAAAAAAAAAAPwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALgAAAC8AAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD+AgAAPQAAAAAAAAAAAAAALwAAAC8AAAAvAAAALwAAADAAAAAuAAAALwAAAC8AAAAvAAAAQQAAAAAAAABAAAAALwAAAC8AAAAvAAAALwAAAC8AAAAwAAAAAAAAAEAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAABBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD4AAAA/AAAAAAAAAAAAAAA/AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPQAAAAAAAAAAAAAA"
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
          x = 0,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 15,
          visible = true,
          properties = {
            ["tilePos"] = "{0,7}"
          }
        },
        {
          id = 4,
          name = "Plains01 Sign",
          type = "SignPost",
          shape = "rectangle",
          x = 672,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 236,
          visible = true,
          properties = {
            ["dialogue"] = "plains01Sign"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "Dynamic Objects Layer",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["containsPlayer"] = true
      },
      objects = {
        {
          id = 9,
          name = "Running Farmer",
          type = "Npc",
          shape = "rectangle",
          x = 736,
          y = 288,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["ai"] = "random",
            ["dialogue"] = "plainsFarmer",
            ["loop"] = true,
            ["path"] = "",
            ["portraitIndex"] = 1,
            ["quests"] = "{}",
            ["velocity"] = 80
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
      data = "hgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACFAAAAhgAAAIYAAACGAAAAhwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAArwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAK8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAK8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACvAAAAPQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    }
  }
}
