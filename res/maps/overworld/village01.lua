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
  nextobjectid = 13,
  properties = {
    ["areaNameKey"] = "villageArea",
    ["nextMapLeft"] = "village02.lua",
    ["nextMapRight"] = "plains03.lua"
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
      tiles = {
        {
          id = 105,
          animation = {
            {
              tileid = "105",
              duration = "200"
            },
            {
              tileid = "108",
              duration = "200"
            },
            {
              tileid = "111",
              duration = "200"
            },
            {
              tileid = "114",
              duration = "200"
            }
          }
        },
        {
          id = 106,
          animation = {
            {
              tileid = "106",
              duration = "200"
            },
            {
              tileid = "109",
              duration = "200"
            },
            {
              tileid = "112",
              duration = "200"
            },
            {
              tileid = "115",
              duration = "200"
            }
          }
        },
        {
          id = 107,
          animation = {
            {
              tileid = "107",
              duration = "200"
            },
            {
              tileid = "110",
              duration = "200"
            },
            {
              tileid = "113",
              duration = "200"
            },
            {
              tileid = "116",
              duration = "200"
            }
          }
        },
        {
          id = 120,
          animation = {
            {
              tileid = "120",
              duration = "400"
            },
            {
              tileid = "123",
              duration = "400"
            },
            {
              tileid = "126",
              duration = "400"
            }
          }
        },
        {
          id = 121,
          animation = {
            {
              tileid = "121",
              duration = "400"
            },
            {
              tileid = "124",
              duration = "400"
            },
            {
              tileid = "127",
              duration = "400"
            }
          }
        },
        {
          id = 122,
          animation = {
            {
              tileid = "122",
              duration = "400"
            },
            {
              tileid = "125",
              duration = "400"
            },
            {
              tileid = "128",
              duration = "400"
            }
          }
        },
        {
          id = 135,
          animation = {
            {
              tileid = "135",
              duration = "400"
            },
            {
              tileid = "138",
              duration = "400"
            },
            {
              tileid = "141",
              duration = "400"
            }
          }
        },
        {
          id = 136,
          animation = {
            {
              tileid = "136",
              duration = "400"
            },
            {
              tileid = "139",
              duration = "400"
            },
            {
              tileid = "142",
              duration = "400"
            }
          }
        },
        {
          id = 137,
          animation = {
            {
              tileid = "137",
              duration = "400"
            },
            {
              tileid = "140",
              duration = "400"
            },
            {
              tileid = "143",
              duration = "400"
            }
          }
        }
      }
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
      data = "XgEAAF4BAABeAQAAXgEAAF4BAABeAQAAXgEAAF4BAABeAQAAXgEAAF4BAABeAQAAXgEAAF4BAABeAQAAXgEAAF4BAABeAQAAXgEAAF4BAABeAQAAXgEAAF4BAABeAQAAXgEAAF4BAABbAQAAWwEAABEAAAARAAAAXgEAAF4BAABeAQAAXgEAAF4BAABeAQAAXgEAAF4BAABeAQAAWwEAAFsBAABbAQAAWwEAAFsBAABbAQAAWwEAAFsBAABbAQAAWwEAAFsBAABeAQAAXgEAAF4BAABeAQAAWwEAAFsBAABbAQAAEQAAABEAAAARAAAAXgEAAF4BAABbAQAAEQAAAFsBAABbAQAAWwEAAFsBAABbAQAAWwEAABEAAAARAAAAIwAAABEAAAARAAAAEQAAABEAAABeAQAAXgEAAF4BAABbAQAAWwEAAFsBAABbAQAAXgEAACIAAAARAAAAEQAAABEAAAARAAAAXgEAAFsBAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAAF4BAABeAQAAXgEAAF4BAABeAQAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAACMAAAARAAAAIwAAAGsAAAARAAAAEQAAABEAAAARAAAAIgAAABEAAABrAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAABrAAAAawAAAGsAAABrAAAAawAAAGsAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAABrAAAAIwAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAawAAAGsAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAIwAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAAGsAAABeAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAIwAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAawAAAGsAAABsAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAAjAAAAEQAAACMAAAARAAAAEQAAABEAAAARAAAAEQAAACIAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAegAAAHoAAAB7AAAAEQAAABEAAAAiAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAIgAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAIwAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAACIAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAACMAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAAiAAAAIgAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAA"
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG8BAABMAQAATAEAAEwBAABMAQAATAEAAEwBAABwAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAE0BAAAAAAAAAAAAAAAAAABvAQAATAEAAEwBAABwAQAAAAAAAAAAAABvAQAATAEAAE0BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABLAQAATAEAAEwBAABwAQAAAAAAAAAAAABvAQAATAEAAEwBAABNAQAAAAAAAAAAAAAAAAAAAAAAAG8BAABNAQAAAAAAAAAAAAAAAAAASwEAAE0BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABLAQAATAEAAEwBAABNAQAAAAAAAAAAAABbAQAAAAAAAAAAAAAAAAAATQEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaQEAAGsBAABbAAAAXQAAAAAAAABbAAAAXAAAAFwAAABcAAAAXAAAAFwAAABdAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACjAAAAAAAAAAAAAAAAAAAAawEAAFsAAABcAAAAXAAAAFwAAABcAAAAXAAAAFwAAABuAAAAbQAAABwAAABrAAAAfQAAAHwAAABrAAAAfQAAAHwAAAAcAAAAXAAAAF0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABwAAAAcAAAAHAAAABwAAAAcAAAAHAAAABwAAAB9AAAAawAAAGsAAABrAAAAfAAAAHwAAAB9AAAAawAAAGsAAABrAAAAawAAAGsAAAAcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAXAAAAG4AAABrAAAAXgAAAF8AAABrAAAAGwAAAB0AAABrAAAAfQAAAH0AAABrAAAAawAAAHwAAABrAAAAfQAAAGsAAAB8AAAAXgAAAHoAAAB7AAAAAAAAAAAAAABCAQAAAAAAALEAAAAAAAAAAAAAAM8AAAAAAAAAawAAABwAAAAdAAAAewAAAHkAAAB6AAAAegAAAHoAAAB6AAAAXwAAAGsAAAB9AAAAXgAAAF8AAAB8AAAAXgAAAF8AAABeAAAAewAAADgAAAA5AAAAOgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHAAAAB0AAAB7AAAAAAAAAEIBAAAAAAAAAAAAANAAAABbAAAAbgAAAGsAAABeAAAAewAAAHkAAAB6AAAAewAAAGoAAABtAAAAXQAAAFYAAABXAAAAWAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAgAAAAIAAAAUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABqAAAAawAAAH0AAABsAAAAAAAAAM8AAAAAAAAAAAAAAHkAAABfAAAAbQAAAF0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABqAAAAawAAAH0AAABtAAAAXQAAAAAAAAAAAAAAAAAAAAAAAAB5AAAAXwAAAG0AAABdAAAAAAAAAAAAAACyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFsAAABuAAAAfAAAAH0AAAB8AAAAbAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAeQAAAF8AAABsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWwAAAG4AAAB9AAAAawAAAH0AAABrAAAAbAAAAAAAAAAAAAAAAAAAAEIBAABCAQAAAAAAAGoAAABsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAagAAAH0AAAB8AAAAawAAAHwAAABeAAAAewAAALEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGoAAABsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALEAAAAAAAAAagAAAHwAAAB8AAAAfQAAAH0AAABsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADPAAAAAAAAAGoAAABsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABbAAAAbgAAAF4AAABfAAAAawAAAHwAAABsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGoAAABsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB5AAAAegAAAHsAAABqAAAAawAAAF4AAAB7AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHkAAAB7AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABMAQAAcAEAAG8BAABMAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACUAAAAAAAAAAAAAAAAAAAATAEAAE0BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAagEAAGoBAABqAQAAagEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWwEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA4AAAAcAAAAHAAAABwAAAAcAAAAHAAAABwAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcAAAAHAAAAB0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbAAAAHAAAABwAAAAAAAAAAAAAADMBAAAzAQAAAAAAAAAAAACPAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGsBAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACPAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACPAgAAAAAAAAAAAAAYAQAAGQEAABkBAAAaAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAnAQAAKAEAACgBAAApAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABgBAAAaAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACcBAAApAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
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
      data = "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"
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
          x = 768,
          y = 288,
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
          id = 4,
          name = "house01 door",
          type = "Door",
          shape = "rectangle",
          x = 736,
          y = 224,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 324,
          visible = true,
          properties = {
            ["id"] = "villagehouse01",
            ["nextMap"] = "village_house01.lua"
          }
        },
        {
          id = 6,
          name = "house02 door",
          type = "Door",
          shape = "rectangle",
          x = 512,
          y = 416,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 324,
          visible = true,
          properties = {
            ["id"] = "villagehouse02",
            ["nextMap"] = "village_house02.lua"
          }
        },
        {
          id = 8,
          name = "Summer Camp Girl",
          type = "Npc",
          shape = "rectangle",
          x = 832,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 666,
          visible = true,
          properties = {
            ["ai"] = "static",
            ["dialogue"] = "villageSummercampGirl.lua",
            ["loop"] = true,
            ["path"] = "",
            ["portraitIndex"] = 1,
            ["quests"] = "{}",
            ["velocity"] = 200
          }
        },
        {
          id = 9,
          name = "Summer Camp Boy",
          type = "Npc",
          shape = "rectangle",
          x = 160,
          y = 320,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 667,
          visible = true,
          properties = {
            ["ai"] = "static",
            ["dialogue"] = "villageSummercampBoy",
            ["loop"] = true,
            ["path"] = "",
            ["portraitIndex"] = 1,
            ["quests"] = "{}",
            ["velocity"] = 200
          }
        },
        {
          id = 10,
          name = "house03 door",
          type = "Door",
          shape = "rectangle",
          x = 128,
          y = 288,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 324,
          visible = true,
          properties = {
            ["id"] = "villagehouse03",
            ["nextMap"] = "village_house03.lua"
          }
        },
        {
          id = 11,
          name = "pixelHacker",
          type = "Npc",
          shape = "rectangle",
          x = 640,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 671,
          visible = true,
          properties = {
            ["ai"] = "static",
            ["dialogue"] = "pixelHacker.lua",
            ["loop"] = true,
            ["path"] = "",
            ["portraitIndex"] = 1,
            ["quests"] = "{\"makeArtQuest.lua\"}",
            ["velocity"] = 200
          }
        },
        {
          id = 12,
          name = "Make Art Launcher",
          type = "Terminal",
          shape = "rectangle",
          x = 672,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 3221226080,
          visible = true,
          properties = {
            ["dialogue"] = "makeArt.lua"
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANgEAADcBAAA3AQAAOAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAXQMAAF4DAABeAwAAXwMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACFAAAAhgAAAIYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAXQMAAF4DAABeAwAAXwMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhQAAAIYAAAAAAAAAlQAAAJUAAACVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbAMAAG0DAABtAwAAbgMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFAEAABUBAAAVAQAAFQEAABYBAACWAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAewMAAHwDAAB8AwAAfQMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIwEAACQBAAAkAQAAJAEAACUBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFAEAABUBAAAVAQAAFgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMgEAACYBAAAmAQAAJgEAADQBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAsgMAADUBAAAAAAAANQEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAQAAAAAAAAAAAAAJAQAAAAAAAAAAAAAUAQAAFQEAABUBAAAVAQAAFgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjAQAAJAEAACQBAAAkAQAAJQEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACFAAAAhgAAAIYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJgEAAAAAAAAmAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIUAAACHAAAAhgAAAIYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANQEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACFAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgBAAAJAQAAhQAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACFAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhwAAAAAAAAAAAAAAAAAAAIUAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAAhgAAAIYAAACGAAAA"
    }
  }
}
