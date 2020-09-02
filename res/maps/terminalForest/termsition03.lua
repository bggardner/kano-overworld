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
    ["areaNameKey"] = "binaryborderArea",
    ["nextMapDown"] = "termsition02.lua"
  },
  tilesets = {
    {
      name = "Landscape1",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../images/Initflow.png",
      imagewidth = 480,
      imageheight = 832,
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
          name = "ASCII",
          tile = 301,
          properties = {}
        },
        {
          name = "Monodirt",
          tile = 307,
          properties = {}
        },
        {
          name = "Grass Edge",
          tile = -1,
          properties = {}
        },
        {
          name = "Shadows",
          tile = -1,
          properties = {}
        }
      },
      tilecount = 390,
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
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 124,
          terrain = { 3, 3, 3, 3 }
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
          terrain = { -1, -1, -1, 9 }
        },
        {
          id = 181,
          terrain = { -1, -1, 9, 9 }
        },
        {
          id = 182,
          terrain = { -1, -1, 9, -1 }
        },
        {
          id = 183,
          terrain = { 9, 9, 9, -1 }
        },
        {
          id = 184,
          terrain = { 9, 9, -1, 9 }
        },
        {
          id = 195,
          terrain = { -1, 9, -1, 9 }
        },
        {
          id = 196,
          terrain = { 9, 9, 9, 9 }
        },
        {
          id = 197,
          terrain = { 9, -1, 9, -1 }
        },
        {
          id = 198,
          terrain = { 9, -1, 9, 9 }
        },
        {
          id = 199,
          terrain = { -1, 9, 9, 9 }
        },
        {
          id = 210,
          terrain = { -1, 9, -1, -1 }
        },
        {
          id = 211,
          terrain = { 9, 9, -1, -1 }
        },
        {
          id = 212,
          terrain = { 9, -1, -1, -1 }
        },
        {
          id = 225,
          terrain = { -1, -1, -1, 8 }
        },
        {
          id = 226,
          terrain = { -1, -1, 8, 8 }
        },
        {
          id = 227,
          terrain = { -1, -1, 8, -1 }
        },
        {
          id = 228,
          terrain = { 8, 8, 8, -1 }
        },
        {
          id = 229,
          terrain = { 8, 8, -1, 8 }
        },
        {
          id = 240,
          terrain = { -1, 8, -1, 8 }
        },
        {
          id = 241,
          terrain = { 8, 8, 8, 8 }
        },
        {
          id = 242,
          terrain = { 8, -1, 8, -1 }
        },
        {
          id = 243,
          terrain = { 8, -1, 8, 8 }
        },
        {
          id = 244,
          terrain = { -1, 8, 8, 8 }
        },
        {
          id = 255,
          terrain = { -1, 8, -1, -1 }
        },
        {
          id = 256,
          terrain = { 8, 8, -1, -1 }
        },
        {
          id = 257,
          terrain = { 8, -1, -1, -1 }
        },
        {
          id = 285,
          terrain = { -1, -1, -1, 6 }
        },
        {
          id = 286,
          terrain = { -1, -1, 6, 6 }
        },
        {
          id = 287,
          terrain = { -1, -1, 6, -1 }
        },
        {
          id = 288,
          terrain = { 6, 6, 6, -1 }
        },
        {
          id = 289,
          terrain = { 6, 6, -1, 6 }
        },
        {
          id = 291,
          terrain = { -1, -1, -1, 7 }
        },
        {
          id = 292,
          terrain = { -1, -1, 7, 7 }
        },
        {
          id = 293,
          terrain = { -1, -1, 7, -1 }
        },
        {
          id = 294,
          terrain = { 7, 7, 7, -1 }
        },
        {
          id = 295,
          terrain = { 7, 7, -1, 7 }
        },
        {
          id = 300,
          terrain = { -1, 6, -1, 6 }
        },
        {
          id = 301,
          terrain = { 6, 6, 6, 6 }
        },
        {
          id = 302,
          terrain = { 6, -1, 6, -1 }
        },
        {
          id = 303,
          terrain = { 6, -1, 6, 6 }
        },
        {
          id = 304,
          terrain = { -1, 6, 6, 6 }
        },
        {
          id = 306,
          terrain = { -1, 7, -1, 7 }
        },
        {
          id = 307,
          terrain = { 7, 7, 7, 7 }
        },
        {
          id = 308,
          terrain = { 7, -1, 7, -1 }
        },
        {
          id = 309,
          terrain = { 7, -1, 7, 7 }
        },
        {
          id = 310,
          terrain = { -1, 7, 7, 7 }
        },
        {
          id = 315,
          terrain = { -1, 6, -1, -1 }
        },
        {
          id = 316,
          terrain = { 6, 6, -1, -1 }
        },
        {
          id = 317,
          terrain = { 6, -1, -1, -1 }
        },
        {
          id = 321,
          terrain = { -1, 7, -1, -1 }
        },
        {
          id = 322,
          terrain = { 7, 7, -1, -1 }
        },
        {
          id = 323,
          terrain = { 7, -1, -1, -1 }
        }
      }
    },
    {
      name = "terminalforest",
      firstgid = 391,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../images/terminalforest.png",
      imagewidth = 192,
      imageheight = 384,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 72,
      tiles = {}
    },
    {
      name = "Binary2Pixels",
      firstgid = 463,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "../../images/binary2pixels.png",
      imagewidth = 256,
      imageheight = 576,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 144,
      tiles = {
        {
          id = 40,
          animation = {
            {
              tileid = "40",
              duration = "200"
            },
            {
              tileid = "48",
              duration = "200"
            },
            {
              tileid = "56",
              duration = "200"
            },
            {
              tileid = "64",
              duration = "200"
            },
            {
              tileid = "72",
              duration = "200"
            },
            {
              tileid = "80",
              duration = "200"
            },
            {
              tileid = "88",
              duration = "200"
            },
            {
              tileid = "42",
              duration = "200"
            },
            {
              tileid = "50",
              duration = "200"
            },
            {
              tileid = "58",
              duration = "200"
            },
            {
              tileid = "66",
              duration = "200"
            },
            {
              tileid = "74",
              duration = "200"
            },
            {
              tileid = "82",
              duration = "200"
            }
          }
        },
        {
          id = 41,
          animation = {
            {
              tileid = "41",
              duration = "200"
            },
            {
              tileid = "49",
              duration = "200"
            },
            {
              tileid = "57",
              duration = "200"
            },
            {
              tileid = "65",
              duration = "200"
            },
            {
              tileid = "73",
              duration = "200"
            },
            {
              tileid = "81",
              duration = "200"
            },
            {
              tileid = "89",
              duration = "200"
            },
            {
              tileid = "43",
              duration = "200"
            },
            {
              tileid = "51",
              duration = "200"
            },
            {
              tileid = "59",
              duration = "200"
            },
            {
              tileid = "67",
              duration = "200"
            },
            {
              tileid = "75",
              duration = "200"
            },
            {
              tileid = "83",
              duration = "200"
            }
          }
        },
        {
          id = 44,
          animation = {
            {
              tileid = "44",
              duration = "200"
            },
            {
              tileid = "52",
              duration = "200"
            },
            {
              tileid = "60",
              duration = "200"
            },
            {
              tileid = "68",
              duration = "200"
            },
            {
              tileid = "76",
              duration = "200"
            },
            {
              tileid = "84",
              duration = "200"
            },
            {
              tileid = "92",
              duration = "200"
            },
            {
              tileid = "46",
              duration = "200"
            },
            {
              tileid = "54",
              duration = "200"
            },
            {
              tileid = "62",
              duration = "200"
            },
            {
              tileid = "70",
              duration = "200"
            },
            {
              tileid = "78",
              duration = "200"
            },
            {
              tileid = "86",
              duration = "200"
            }
          }
        },
        {
          id = 45,
          animation = {
            {
              tileid = "45",
              duration = "200"
            },
            {
              tileid = "53",
              duration = "200"
            },
            {
              tileid = "61",
              duration = "200"
            },
            {
              tileid = "69",
              duration = "200"
            },
            {
              tileid = "77",
              duration = "200"
            },
            {
              tileid = "85",
              duration = "200"
            },
            {
              tileid = "93",
              duration = "200"
            },
            {
              tileid = "47",
              duration = "200"
            },
            {
              tileid = "55",
              duration = "200"
            },
            {
              tileid = "63",
              duration = "200"
            },
            {
              tileid = "71",
              duration = "200"
            },
            {
              tileid = "79",
              duration = "200"
            },
            {
              tileid = "87",
              duration = "200"
            }
          }
        },
        {
          id = 96,
          animation = {
            {
              tileid = "96",
              duration = "800"
            },
            {
              tileid = "112",
              duration = "800"
            },
            {
              tileid = "128",
              duration = "800"
            },
            {
              tileid = "99",
              duration = "800"
            },
            {
              tileid = "115",
              duration = "800"
            }
          }
        },
        {
          id = 97,
          animation = {
            {
              tileid = "97",
              duration = "800"
            },
            {
              tileid = "113",
              duration = "800"
            },
            {
              tileid = "129",
              duration = "800"
            },
            {
              tileid = "100",
              duration = "800"
            },
            {
              tileid = "116",
              duration = "800"
            }
          }
        },
        {
          id = 98,
          animation = {
            {
              tileid = "98",
              duration = "800"
            },
            {
              tileid = "114",
              duration = "800"
            },
            {
              tileid = "130",
              duration = "800"
            },
            {
              tileid = "101",
              duration = "800"
            },
            {
              tileid = "117",
              duration = "800"
            }
          }
        },
        {
          id = 104,
          animation = {
            {
              tileid = "104",
              duration = "800"
            },
            {
              tileid = "120",
              duration = "800"
            },
            {
              tileid = "136",
              duration = "800"
            },
            {
              tileid = "107",
              duration = "800"
            },
            {
              tileid = "123",
              duration = "800"
            }
          }
        },
        {
          id = 105,
          animation = {
            {
              tileid = "105",
              duration = "800"
            },
            {
              tileid = "121",
              duration = "800"
            },
            {
              tileid = "137",
              duration = "800"
            },
            {
              tileid = "108",
              duration = "800"
            },
            {
              tileid = "124",
              duration = "800"
            }
          }
        },
        {
          id = 106,
          animation = {
            {
              tileid = "106",
              duration = "800"
            },
            {
              tileid = "122",
              duration = "800"
            },
            {
              tileid = "138",
              duration = "800"
            },
            {
              tileid = "109",
              duration = "800"
            },
            {
              tileid = "125",
              duration = "800"
            }
          }
        },
        {
          id = 141,
          animation = {
            {
              tileid = "141",
              duration = "150"
            },
            {
              tileid = "142",
              duration = "150"
            },
            {
              tileid = "143",
              duration = "150"
            },
            {
              tileid = "142",
              duration = "150"
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
      data = "UAAAAE8AAAA+AAAATwAAAD4AAABPAAAATwAAAE8AAAA+AAAATwAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAA+AAAAPgAAAD4AAABQAAAAPgAAAE8AAABQAAAAPgAAAFAAAABPAAAAPgAAAFAAAABQAAAAUAAAAFAAAABPAAAAUAAAAE8AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAD4AAABQAAAATwAAAD4AAABPAAAATwAAAFAAAABPAAAAUAAAAD4AAABPAAAAPgAAAE8AAAA+AAAATwAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAABQAAAAUAAAAD4AAABPAAAAPgAAAD4AAABPAAAAPgAAAFAAAAA+AAAAUAAAAFAAAABQAAAATwAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAA+AAAATwAAAE8AAABPAAAATwAAAE8AAAA+AAAATwAAAD4AAABPAAAATwAAAD4AAABQAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAPgAAAE8AAAA+AAAAUAAAAFAAAABQAAAATwAAAE8AAAA+AAAAUAAAAFAAAABQAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAUAAAAFAAAAA+AAAAPgAAAFAAAABQAAAATwAAAE8AAABPAAAAPgAAAE8AAAA+AAAAHgAAAPIAAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAFAAAABQAAAATwAAAD4AAABQAAAAPgAAAFAAAABPAAAAPgAAAE8AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAPIAAADyAAAAHgAAAD4AAAA+AAAATwAAAD4AAABPAAAAHgAAAB4AAABPAAAAUAAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAABPAAAAPgAAAE8AAABQAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAAHgAAAB4AAAAeAAAA"
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlAQAAJgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAANwEAADQBAAAAAAAAAAAAADQBAAA0AQAANgEAACUBAAAlAQAAJQEAACUBAAAlAQAAJQEAACUBAAAlAQAAJgEAACQBAAAlAQAAJQEAACUBAAAlAQAAJQEAADcBAAA0AQAANgEAACUBAAAAAAAAAAAAAAAAAAAAAAAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANgEAADcBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA2AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAAQwEAAEMBAAAoAQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAAAAAAAAAAAABCAQAAKAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAAnAQAAAAAAAAAAAAAAAAAAMwEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAAJwEAAEMBAABEAQAAAAAAAAAAAAAAAAAAMwEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAACcBAABDAQAARAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMwEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADQBAAA0AQAANAEAADUBAAAAAAAAAAAAAAAAAAAAAAAA"
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADyAAAA8gAAABYAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAABkAAADyAAAA8gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPIAAAAoAAAA8gAAACgAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAACgAAAAoAAAAJQAAAPIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACgAAAAlAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAAAoAAAAJQAAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8gAAABkAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAABYAAADyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGQAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAAAoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFgAAABcAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAAAlAAAAKAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPQBAAD1AQAAFgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8gAAAPIAAAAAAAAAAAAAAPIAAAAoAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAAGQAAAPIAAAAAAAAAAAAAAAAAAAAAAAAAAQEAACUAAADlAAAA5gAAABYAAAAlAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAACUAAADyAAAA8gAAAPIAAADyAAAAAAAAACgAAAACAQAAAAEAACUAAADlAAAA5gAAAPIAAADyAAAA8gAAAOUAAAABAQAA5gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAAPIAAADyAAAA8gAAACUAAADyAAAA8gAAAPIAAADlAAAA5gAAAPIAAADyAAAA8gAAAOUAAAACAQAA8QAAAPIAAADlAAAAAQEAAAIBAAAAAAAAAAEAAAEBAADmAAAA5QAAAOYAAADyAAAA8gAAAPIAAADlAAAAAQEAAOYAAADlAAAA5gAAAPIAAADmAAAA8gAAAPIAAAD0AAAAAAEAAAEBAAABAQAAAQEAAAIBAAAAAAAAAAEAAAEBAAACAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAgEAAAABAADmAAAA5QAAAAEBAAACAQAAAAAAAAABAAACAQAAAAEAAAEBAADmAAAA8gAAAPIAAADyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAQEAAOYAAADlAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAACAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA7wEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADvAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA+AEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD7AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC3AAAA1QAAAAAAAAAAAAAAAAAAALcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALcAAADVAAAAAAAAAAAAAAC3AAAAAAAAAMYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMQAAAAAAAAAtQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAtwAAANUAAAAAAAAAAAAAAAAAAADGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANMAAAAAAAAAxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxgAAAAAAAAAAAAAAAAAAALcAAADVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0wAAALUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxgAAAAAAAAAAAAAAtwAAAMYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA1QAAAAAAAAAAAAAAxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANMAAAC1AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC3AAAAxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADTAAAAtQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALUAAAAAAAAAAAAAALcAAADGAAAA1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxAAAALUAAAC3AAAAAAAAAAAAAAAAAAAAAAAAAMQAAAAAAAAAAAAAAMYAAADVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0wAAAMQAAADGAAAAAAAAAAAAAAAAAAAAAAAAANMAAAAAAAAAAAAAANUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANMAAADVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
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
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADEAAAAxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADEAAAAxwAAALcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADTAAAAtQAAAMYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0wAAANUAAAC1AAAAtwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADEAAAAxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADTAAAA1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADvAQAAAAAAAO8BAADvAQAA7wEAAO8BAADvAQAA7wEAAO8BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8gEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
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
          id = 5,
          name = "Spawn Point",
          type = "SpawnPoint",
          shape = "rectangle",
          x = 448,
          y = 512,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 15,
          visible = true,
          properties = {
            ["tilePos"] = "{14,15}"
          }
        },
        {
          id = 6,
          name = "Termsition Terminal",
          type = "Terminal",
          shape = "rectangle",
          x = 480,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 498,
          visible = true,
          properties = {
            ["dialogue"] = "TermsitionTerminal.lua"
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
      data = "UAAAAD4AAAA+AAAATwAAAE8AAAASAQAAEQEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAAUAAAAFAAAABQAAAAPgAAAE8AAABPAAAAUAAAAFAAAABPAAAATwAAABIBAAARAQAAKQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPAQAAEwEAAE8AAAA+AAAATwAAAFAAAABQAAAAUAAAAE8AAABPAAAAEgEAABEBAAApAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhAAAAAAAAAAAAAAAAAAAAAAAAAAnAAAADwEAABABAAATAQAAUAAAAE8AAABPAAAATwAAAE8AAABQAAAAPwAAACYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFQAAAD0AAAAAAAAAJAAAABkAAAA9AAAAUAAAAD4AAABPAAAAUAAAAD4AAAA+AAAAPwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAvAgAAMAIAADECAAAAAAAAAAAAAAAAAAAAAAAAhAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAAPgAAAD4AAABQAAAAEAEAABABAAAQAQAAEQEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3AgAAOAIAADkCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPAQAAEAEAABABAAAQAQAAKAAAABkAAAAWAAAAJgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADoAQAAXAIAAOwBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAO0BAAAAAAAAAAAAAAAAAAAkAAAAJQAAACgAAAAlAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADwAQAAAAAAAPQBAAAAAAAAAAAAAAAAAAAAAAAAhAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALwBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADIAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC8AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC8AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    }
  }
}
