--[[
lang.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

English language
]]--


return {

    ------ HEADERS AND OPTIONS ----------------------------------------------------------

    enter = "Press Enter",
    loading = "Loading",
    play = "Play",
    letsHack = "Let's hack!",
    letsMake = "Let's make!",
    letsGo = "Let's go! [ENTER]",
    checkMap = "Check Map",
    maybeLater = "Maybe later",
    wasFun = "That was fun!",
    maps = "Where am I?",
    challenges = "What's Pong?",
    Yes = "Yes",
    No = "No",
    rabbit = "Where is the rabbit?",
    who = "Who are you?",
    what = "What is this?",
    how = "How does it work?",
    interested = "I'm interested",
    why = "Why?",
    bye = "See you later",
    you = "you",
    coming = "Coming Soon...",
    tellMe = "Tell me more",
    sine = "Sine",
    triangle = "Triangle",
    square = "Square",
    noise = "Noise",

    playPong = "Play Pong",
    makePong = "Make Pong",
    flappyJudoka = "Play Flappy Judoka",
    minecraft = "Hack the game",
    makeArt = "Make Art",
    makeMusic = "Launch Sonic Pi",
    createArt = "Make a creation",
    playSnake = "Play Snake",
    playterminalquest = "Go to Folderton",
    mehTemp = "No thanks",
    ok = "Ok",
    blank = " ",
    firstLoadingText = "Preloading Data...",
    secondLoadingText = "Entering the computer...",

    temp = 'Waiting for copy..',
    complete = "Quest Complete",
    tempNoInternetCopy = "Internet connection not found. Connect now?",
    tempLaunchWifiConfig = "Launch Settings",
    tempNoUpdatesCopy = "Awesome! You're fully up to date. Come back to check for updates soon.",
    tempUpdatesAvailableCopy = 'Updates found! Install them now?',
    tempLaunchUpdater = "Launch Updater",
    painting1 = "Launch the creation in Kano World?",
    launchShareTemp = "Launch",

    --- Menu ---

    close = "Close",
    map = "Map",
    quests = "Quests",
    codex = "Codex",
    completed = "completed",
    discovered = "Discovered",
    exit = "Back to Dashboard?",
    underConstruction = "Under construction",
    undiscovered = "Undiscovered",
    activeQuests = "Active Quests",
    completedQuests = "Completed Quests",
    questsCompleted = "Quests Completed",
    codexDiscovered = "Codex Items Discovered",
    backCodex = "Back to Codex",
    search = "search",
    codexEmpty = "No Codex Items Found",

    --- Pop ups ---

    stepComplete = "Step $1/$2 complete",
    questComplete = "Quest Complete",
    newQuest = "NEW QUEST:",
    newArea = "NEW AREA:",
    codexDiscovery = "CODEX DISCOVERY:",

    --- Area Name Keys ---

    backToDashboard = "Back to Dashboard",
    binaryborderArea = "Binary Border",
    beachArea = "SD Beach",
    lakeArea = "Logic Lake",
    lakeSchoolArea = "Logic Gate School",
    coveArea = "Power Path",
    plainsArea = "Fiberglass Plains",
    portetherArea = "Port Ether",
    etherstationArea = "Ether St Station",
    villageArea = "Vector Village",
    jungleArea = "Python Jungle",
    minesentranceArea = "Block Mines Entrance",
    minesArea = "Block Mines",
    momaArea = "Museum of Make Art",
    powerArea = "Power Port",
    hdmiArea = "HD Hill",

    --- People's Names ---

    mrPong = "Allan",
    mrInfo = "Mr. Info",
    LogicLakeNerd = "Curious Student",
    LogicLakeMaster = "Mosfet",
    Radu = "Radu",
    rivalKid = "Rival",
    portetherMayorName = "Mayor of Port Ether",
    Caroline = "Caroline",
    Asterix = "Asterix",
    Tilde = "Tilde",
    antlerBoy = "Semicolon",
    Alex = "Alex",
    Vertex = "Curator",
    DevOps = "DevOps",
    chilledBoy = "Chilled Boy",
    chilledGirl = "Chilled Girl",
    Gregory = "Gregory",
    cafeTextCode = "Text Code Fan",
    cafeBlocksCode = "Blocks Code Fan",
    cafeHostess = "Coffee Script Fan",
    Twin1 = "Pix",
    Twin2 = "El",
    pixelHacker = "Pixel Hacker",
    MissWatts = "Miss Watts",
    powerGuardName = "Power Guard",
    HDMasterName = "HD Cameraman",
    newsReporter = "HD News Reporter",
    Jack = "Jack",

    --- Tech Questions ---

    logic = "What are Logic Gates?",

    ------ SPEECH BUBBLES ---------------------------------------------------------------

    level = "You are in level $1, and have completed $2 challenges",


    ------ DIALOGUES --------------------------------------------------------------------

    -- Overworld - Beach --

    mrPongDiag1 = "Pong. Pong. Pong. I love Pong. Fancy a game? Or even better, make your own?",
    mrPongDiag2 = "Boo! Maybe you should go and find the Art Museum instead.",
    mrInfoDiag1 = "Did you know SD Beach is built on a micro SD card? Below are" ..
         " teeny tiny electronic chips that remember your masterpieces, even when your" ..
         " computer is turned off. Check the map to see other parts of the computer.",
    chilledgirlDiag0 = "Woah! Where'd you just come from? Was that strange rabbit with you?",
    chilledgirlDiag = "Done all the Pong challenges yet? I hear you unlock a badge if you do.",
    sunburntDiag0 = "It's my first time at SD Beach too. Under our feet are all the computer's" ..
         " memories.",
    sunburntDiag = "I've just come from the Block Mines, where I learnt new super powers" ..
         " that control Minecraft!",
    beachSignPost = "Exit to Power Path",
    gregory1 = "Pong may seem simple, but master its code and there's no stopping you." ..
         " Talk to Allan in the orange hut to try Make Pong.",
    gregory2 = "Hmm you've not finished Make Pong? It's a great way to level up and earn" ..
         " more coding powers! You'll need them.",
    gregory3 = "Wow you're level $1! Have you tried sharing a creation?",

    --- Newsboard for updates ---

    newsboard = "- - - LATEST NEWS - - -\nThe Power Port has been built! Follow the" ..
        " Power Path down south and view the LED. \nHD Hill has now opened. Go to the east of Logic" ..
        " Lake and follow the cables to see the sights. \n\nPort Ether has also opened its Sound Port." ..
        " Check out the disco and join the party.",

    -- Beach -- Quests --

    -- Mr Info Quest ---

    mrInfoQuestTitle = "Explore the world",
    mrInfoQuestComplete = "Learned to use the world map.",
    mrInfoQuest1 = "Hello $1. Welcome to your computer. The more you explore and make," ..
         " the more powerful you'll become. Open your map to see the world.",
    mrInfoQuest2 = "To defeat the White Rabbit you'll have to level-up. Uncover the" ..
         " computer's secrets and conquer coding challenges to become a Kano Master." ..
         " I saw the white rabbit bouncing off to the right, towards the Power" ..
         " Port. It might be wise to follow it and see what it's up to.",
    mrInfoQuest3 = "Keep exploring this world. Come back and find me when you've discovered" ..
         " more than half of the island.",
    mrInfoQuest4 = "High-five! If you want to discover more about the world, you should" ..
         " head over to the Logic Gate School.",
    mrInfoQuestHelp1 = "Talk to the Info Center on SD Beach.",
    mrInfoQuestHelp2 = "See what else Mr. Info has to say.",
    mrInfoQuestHelp3 = "Explore at least 50% of the world.",
    mrInfoQuestHelp4 = "Go back to Mr. Info on SD Beach.",

    --- Pong Quest ---

    pongQuestTitle = "Intro to Make Pong",
    pongQuestComplete = "Completed Make Pong basics.",
    pongQuestHelp1 = "Talk to Gregory on the beach.",
    pongQuestHelp2 = "Complete challenge 2 in Pong.",
    pongQuestHelp3 = "Listen to Gregory's Pong advice.",
    pongQuest1 = "Hey there! You can make your own Pong game y'know.",
    pongQuest2 = "How about making the most awesome game of Pong ever? Talk to Allan in" ..
        " the orange hut and try to beat 2 challenges.",
    pongQuest3 = "Nice job. You're on your way to becoming a Kano Master. Have you tried" ..
        " sharing your amazing Pong creation?",

    -- Overworld -- Power Lighthouse ---

    powerOutside = "Have you come to visit the Power Port too? Did you know the whole" ..
        " computer is powered by energy brought in through the red cable?",
    powerOutside2 = "I hear you should never pull the power cable out without shutting" ..
        " the computer down first.",
    powerOutside3 = "Because the data can get corrupted and cause the computer to lose its" ..
        " memories. Definitely worth shutting down properly!",
    powerGuard = "Is that rabbit yours?",
    powerGuard2 = "Oh really? Well its been running around the lighthouse. This is where" ..
        " we receive electrical energy to power the computer.",
    powerGuard3 = "Oh ok, well welcome to Power Port. If you climb up to the top of the" ..
        " lighthouse you can see if the LED is working.",
    powerPerson1 = "Energy is the ability to do work and can take many forms. In the Power Port" ..
        " the energy is transformed into electricity and light.",
    powerPerson2 = "I don't have much energy. I'm on standby... Zzzzzz...",
    powerPerson3 = "Yo. Power is the rate at which electrical energy is transferred. The" ..
        " power port here transfers energy to all the components on the computer.",
    powerMissWatts = "I'm in CHARGE of monitoring the power levels. When" ..
        " the red light is on, we know that there is energy flowing into the computer." ..
        " Check out the light!",
    powerVoltage = "This computer needs 5 Volts, or 5V to operate. The energy flows in through" ..
        " this Power Port.",
    powerCurrent = "You see drawings of the flow of electricity through the computer, and" ..
        " a note saying: Current is the rate at which electrical charge is transferred.",
    powerLED = "You see a shining bright red light with the letters PWR underneath.",

    --- Power Quest ---

    powerQuestTitle = "The Power Port",
    powerQuestComplete = "Discovered how the computer is powered.",
    powerQuest = "POW you made it! I'm in CHARGE of monitoring the power levels. When" ..
        " the red light is on, we know that there is energy flowing into the computer.",
    powerQuest2 = "Why don't you check out the LED over there?",
    powerQuest3 = "Pretty bright isn't it? By the way, there was an energetic rabbit" ..
        " bouncing around. I don't think it did anything, but it does seem mischievous." ..
        " I think it headed towards the HDMI port.",
    powerQuestHelp = "Follow the white rabbit down the Power Path.",
    powerQuestHelp2 = "Investigate the LED in the lighthouse.",
    powerQuestHelp3 = "Find out more from Miss Watts.",

    -- Overworld - Cove --

    hdmicuriousDiag = "Have you seen the yellow HDMI cables? They take the 2,073,600 pixels" ..
        " from the computer's brain and brings them to life on screen.",

    -- Overworld - Logic Lake --

    mrFlappy1 = "Great games are based on simple logic. Flap up, or else fall down." ..
        " Your high score is $1. Let's see how far you fly!",
    mrFlappy2 = "Come back any time.",
    llFarmer = "These yellow HDMI cables are 'High-Definition'. They send 'Media' - sound" ..
        " and pictures. That makes them an 'Interface.'",
    llMaster = "I'm Mosfet, Logic Master. What are logic gates? Only the building blocks" ..
        " of digital computers!",
    llMaster2 = "Logic gates take 1s and 0s in and output a single 1 or 0. Connect many" ..
        " logic gates together and you have a series of instructions for anything.",
    llMaster3 = "Good luck on your journey. Keep exploring and leveling up.",
    llPupil = "You can use coding languages to change the rules of the computer.",
    llNerd = "Can you help me? I'm studying to become a Kano Master, but there are some secret" ..
        " scrolls I need to level up.",
    llNerd2 = "I hear some twins in Vector Village may have what I need. Can you find it" ..
        " and let me know what you learn?",
    llNerd3 = "You found it! So code turns humans words into binary. Computers think in" ..
        " binary. I must know more!",
    llNerd4 = "Can you try to find out how programs work? Apparently there's" ..
        " a book in Port Ether library that has this info.",
    llNerd5 = "Incredible! So I tell computers what to do using code. Thanks so much for" ..
        " your help.",
    llNerdDiag = "I'm a student here. My favorite Logic Gate is the NOT gate. Have" ..
        " you spoken to the Logic Master yet?",
    llSignpost = "Logic Lake - Home of the Logicians",
    llCheerfulGirl = "These HDMI cables send millions of tiny blocks of color called" ..
        " pixels to a screen. Have you ever tried to plug one in?",
    llScaredSon = "If you get lost exploring you can fast travel to places you've" ..
        " discovered! Open the map with [ESC] and click where you want to go.",
    llRunnerGirl = "Logic is cool. You can use it to make some great games!",
    llComputer = "LOGIC GATES:\nA logic gate is a building block of a digital circuit. Most" ..
        " logic gates have 2 inputs and 1 output. At any given moment, every terminal" ..
        " is in one of the 2 binary conditions low (0) or high (1).",
    LakeExitSign = "Exit to Fiberglass Plains",

    --- Flappy Kid Decision dialogue ---

    rivalKidDiag = "Hey! I'm a pro at flying in Flappy Judoka. Let's see your skills...",
    rivalKidDiag2 = "Your current high score is $1. I'm sure you" ..
        " can do better.",
    rivalKidDiag3 = "Oh! Your current high score is $1. That's pretty impressive.",
    rivalKidDiag4 = "WOW! Your current high score is $1. You've got the cool, calm," ..
        " logical flying nailed.",

    -- Logic Lake Quests --

    -- Rival Kid Quest --

    rivalKidQuestTitle = "No one flies better than me",
    rivalKidQuestComplete = "Scored 30 or above on Flappy Judoka.",
    rivalKidQuest1 = "Hey! Have you tried out Flappy Judoka? No one flies better than me.",
    rivalKidQuest2 = "Can you get 20 points in Flappy Judoka? You can play" ..
        " by talking to the guy by the fence.",
    rivalKidQuest3 = "Wow! Well done. What about getting a score of 30? That's my high score.",
    rivalKidQuest4 = "Are you going to try to get 30 points in Flappy Judoka?",
    rivalKidQuest5 = "Woah that's amazing! You're definitely good at simple up and down logic." ..
        " Talk to the Logic School Master to learn more.",
    rivalKidHelp1 = "Talk to the Rival in Logic Lake.",
    rivalKidHelp2 = "Get a score of 20 or more in Flappy Judoka.",
    rivalKidHelp3 = "Talk to the Rival in Logic Lake.",
    rivalKidHelp4 = "Get a score of 30 or more in Flappy Judoka.",
    rivalKidHelp5 = "Talk to the Rival in Logic Lake.",

    -- Top Student Quest ---

    LogicLakeNerdQuestTitle = "How do computers think?",
    LogicLakeNerdQuestComplete = "Discovered that step-by-step instructions called algorithms command" ..
        " computers.",
    LogicLakeNerdQuest1 = "You find a secret scroll on code: It reads: A program turns" ..
        " human words into 1s and 0s. This is called code.",
    LogicLakeNerdQuest2 = "You find a book on Algorithms. It reads: We use code to give" ..
        " computers step-by-step instructions.",
    LogicLakeNerdHelp1 = "Talk to the student in Logic Gate School.",
    LogicLakeNerdHelp2 = "Find a book in the twins' house in Vector Village.",
    LogicLakeNerdHelp3 = "Report back to the student in Logic Gate School.",
    LogicLakeNerdHelp4 = "Go to Port Ether library to investigate algorithms.",
    LogicLakeNerdHelp5 = "Report back to the student in Logic Gate School.",

    -- Overworld - Cove --

    plains01Sign = "HD Hill Ahead",

    -- HD Hill --

    newsWatcher = "Shhh, I'm such a fan of the HD News Crew.",
    HDMIgirl = "Wow, the HDMI port is amazing. Did you know it can transfer 162,000,000" ..
        " pixels per second?",
    HDMIreporter = "I love filming at the HDMI port. Watching the pictures, video and" ..
        " sound go from here to the screen.",
    HDsoundguy = "Echo... echo... echo...",
    HDmaster = "1080p. A weird name? But also the number of pixels high the screen image is." ..
        " More coming up next, on HD news.",

    -- HDMI Quest --

    hdmiQuestTitle = "Explore the HDMI",
    hdmiQuestComplete = "Learned about HDMI and its workings.",
    hdmiQuestHelp = "Find the news reporter on HD Hill.",
    hdmiQuestHelp2 = "Complete an interview with the HD news crew.",
    hdmiQuestHelp3 = "Talk with the news reporter.",
    hdmiQuest = "Heya. We were making a film about the yellow cable transferring pictures," ..
       " video and sound from the computer to the screen, when that strange White Rabbit" ..
       " ran past.",
    hdmiQuest2 = "Can you do an interview with our reporter?",
    hdmiQuest3 = "Nice one. This report will blow the White Rabbit story wide open!" ..
        "\nNow we just need to follow up on the sightings at the Port of Sound.",

    --- HD News Interview ---

    hdmiInterviewWelcome = "Hello, would you be willing to have an interview about recent events?",
    hdmiInterview1 = "And... ACTION! You're watching HD News! We're reporting live" ..
        " from HDMI port on the recent White Rabbit sightings. We're speaking with $1," ..
        " what brings you here today?",
    hdmiInterview1a = "Exploring computer",
    hdmiInterview1b = "Chasing the rabbit",
    hdmiInterview2 = "Great! Judoka travel far and wide to visit the HDMI port. To glimpse" ..
       " the 18 billion bits of data travel from the computer's brain to the screen!" ..
       " \nBut it was also the last reported location of the mysterious White Rabbit." ..
       " \nHave you seen it?",
    hdmiInterview21 = "You're investigating it too? We're still trying" ..
       " to figure out what's going on, so any information you have could be valuable" ..
       " to our viewers. \nDo you know where it comes from?",
    hdmiInterview2a = "Binary Border",
    hdmiInterview2b = "No",
    hdmiInterview3 = "It came from Binary Border?!" ..
       " That means it may have the coding powers to reshape" ..
       " the world around us. \nThere's no telling what it may do!" ..
       " The only way to stop it would be to uncover the secrets of the computer and" ..
       " master code powers. \nCan you help?",
    hdmiInterview31 = "We've heard mysterious reports from Folderton and Port Ether," ..
       " we think the rabbit may have coding powers. \nCan you help?",
    hdmiInterview3a = "I have coding powers",
    hdmiInterview3b = "Kano Master",
    hdmiInterview4 = "Amazing! Lots of Judoka have mastered one type of coding, but few" ..
       " have mastered them all, it would take a true Kano Master to tackle the rabbit" ..
       " head on.",
    hdmiInterview41 = "You're training to be a Kano Master? Wow! But you'll have to" ..
       " discover more about computers and learn different coding powers to level up," ..
       " become a true Kano Master and get that rabbit under control.",
    hdmiInterviewFinal = "OK! Thanks for your time $1. Next up: How data travels down" ..
       " the yellow cable at near the speed of light! Stay tuned.",

    -- Overworld - Vector Village --

    villageSummercampBoy = "The waterfalls are warm because the processor to the north" ..
        " gets very hot when its thinking!",
    villageSummercampGirl = "Do you know what this village is named after?",
    villageSummercampGirl2 = "Vectors! A vector tells us how far away one point is away" ..
        " from another. That's how programs like Make Art can draw their shapes with code!",
    villageSummercampBoy2 = "I love the Museum of Make Art. I really hope one of my" ..
        " creations is Staff Picked and framed on the walls.",
    makeArtTerminal1 = "Create a masterpiece with Make Art?",
    makeArtTerminal2 = "Come back soon...",
    pixelHackerDiag1 = "Check the computer to do more Make Art! I see you are" ..
        " level $1 on the Basic challenges.",

    -- Houses --

    House01Boy = "Heya! Feel free to check out our bookshelf. We have a pretty good collection.",
    House01Girl = "Did you know that pixels are the basic unit of color on a computer display?" ..
        " Every pixel is made up of three colors: Red Green and Blue.",
    House02Boy = "My sister is chilling on SD beach. I keep telling" ..
        " her that Make Art is way better than Pong, but she won't listen. Have you" ..
        " ever drawn something with code before?",
    house03PotNote = "Oh! There's a note in the pot. It reads: 'Rabbit was here. Why you" ..
        " talking to a plant, huh?'",
    village02DoorSign = "Museum of Make Art - CLOSED - Waiting for further Make Art creations",
    village_house02Computer = "There are some terminal commands on the screen.",

    --- Make Art Quiz ---

    makeArtQuizWelcome = "Try out the Make Art quiz?",
    makeArtQuizIncorrect = "Incorrect. Try Make Art to find the right answer.",
    makeArtQuiz1 = "How do you code an object to be yellow?",
    makeArtQuiz1a = "yellow color",
    makeArtQuiz1b = "color yellow",
    makeArtQuiz2 = "Nice one! How do you code a rectangle of width 20 and height 40?",
    makeArtQuiz2a = "rectangle 20, 40",
    makeArtQuiz2b = "rectangle 40, 20",
    makeArtQuiz3 = "Great work! Final question: I want to move an object relative to" ..
        " another object. Which command should I use?",
    makeArtQuiz3a = "move",
    makeArtQuiz3b = "moveTo",
    makeArtQuizEnd = "Congratulations! You really know your stuff. You should try sharing" ..
        " your creations online!",

    -- MoMa --

    momaArtAdmirer1 = "I love these creations so much! I hope that one of my Staff Picks" ..
        " displays here some day.",
    momaArtAdmirer2 = "Wow check out those pixels!",
    momaReception = "Welcome to the Museum of Make Art. Take a look at the latest" ..
        " staff picks on display.",
    momaArtCritic = "Hmmm... I wonder how functions can draw a teapot?",
    momaArtCritic2 = "Ah... This piece is called Perlin Noise. It's made from an algorithm." ..
        " The same one used to create patterns in Minecraft blocks.",
    momaProgrammer = "Did you know that make art uses the programming language CoffeeScript?" ..
        " It's really amazing.",
    momaFloorSign0 = "Pixel Hacker Lab",
    momaFloorSign1 = "MOMA Staff Picks Collection,\nThe Latest and Greatest from Kano World",
    momaFloorSign2 = "MOMA Permanent Collection,\nHistorical Code Based Artworks and Algorithms",
    momaUpstairsPlaque1 = "Perlin Noise (1983),\nKen Perlin",
    momaUpstairsPlaque2 = "Mandelbrot Set (1980),\nBenoit Mandelbrot",
    momaUpstairsPlaque3 = "Utah Teapot, (1975),\nMartin Newell",
    momaUpstairsPlaque4 = "MOUVNT Sculpture Programme (1972),\nJose Luis Alexanco",
    momaUpstairsPlaque5 = "AARON Artificial Intelligence (1990),\nHarold Cohen",
    momaUpstairsFan1 = "The Mandlebrot Set is a fractal, which is an example of something" ..
        " called recursion. Shapes are drawn using rules that draw themselves upon themselves," ..
        " this creates beautiful images that look like plants or galaxies.",
    momaUpstairsFan2 = "This teapot is a famous object from early 3D graphics, at the time" ..
        " rendering the curves of a teapot was a challenge so this particular teapot was often" ..
        " used to test 3D rendering code. Some 3D software include the teapot as a basic object" ..
        " next to cubes and spheres, causing it to often appear as a joke in 3D films.",
    momaUpstairsFan3 = "AARON was the first Artificial Intelligence artist, using complex" ..
        " algorithms built up from simple commands like the ones we use in Make Art it was" ..
        " able to create convincing artworks that could be mistaken for the work of a human" ..
        " artist. Although its styles had to be hand coded by Cohen, it was able to create" ..
        " an infinite number of artworks in these styles.",
    vertex1 = "Check the computer to do more Make Art! I see you are" ..
        " level $1 on the medium challenges.",

    -- Shares Fanatic Decision Dialogue ---

    momaSharesFanatic = "The servers in that room contain all the creations shared on Kano" ..
        " World. Let me check how much you've shared...",
    momaSharesFanatic2 = "Oh dear... an artist of your skill and you've not shared a thing." ..
        " Why not share a masterpiece now?",
    momaSharesFanatic3 = "Good going. You've shared 1 creation online. Keep on making!",
    momaSharesFanatic4 = "Wow you've made $1 creations. Nice work - keep up the coding!",
    momaSharesFanatic5 = "Woah! $1 creations made total. Awesome work, keep it up!",
    momaSharesFanatic6 = "WOW. $1 creations shared! That's incredible! You're well on" ..
        " way to being a Make Art guru.",

    -- Vector Village -- Quests --

    --- Make Art Quest 1 - Complete Basic Challenge 3 ----

    makeArtQuestTitle = "Make Art with code",
    makeArtQuestComplete = "Completed first 3 basic challenges in Make Art.",
    makeArtQuestHelp1 = "Go to Vector Village and talk to the Pixel Hacker.",
    makeArtQuestHelp2 = "Complete first 3 basic challenges in Make Art.",
    makeArtQuestHelp3 = "Talk to the Pixel Hacker in Vector Village.",
    pixelHacker1 = "Hi there, welcome to Vector Village! This is home to the famous" ..
        " Museum of Make Art. If you've come to learn how to make art with code you've" ..
        " come to the right place.",
    pixelHacker2 = "Why don't you use the computer beside me and complete the first" ..
        " 3 challenges of Make Art?",
    pixelHacker3 = "Nice one! Why not visit the Make Art Museum to the west? The Curator" ..
        " is in the basement there. She knows a lot about Make Art.",
    pixelHackerHelp1 = "Talk to the Pixel Hacker in Vector Village.",
    pixelHackerHelp2 = "Beat first 2 Basic Levels in Make Art.",
    pixelHackerHelp3 = "Talk to the Pixel Hacker in Vector Village.",

    --- Make Art Quest 2 --- Complete Basic + Medium ----

    makeArtQuestTitle2 = "Intermediate Make Art",
    makeArtQuestComplete2 = "Completed basic and medium challenges in Make Art.",
    chiefPixelHackerQuest1 = "Hello welcome to MoMA. I am the Curator. I guess" ..
        " you have come to learn some more Make Art? Try out our Make Art Quiz!",
    chiefPixelHackerQuest2 = "How about you start by taking our Make Art Quiz? You can" ..
        " launch it from the computer next to me.",
    chiefPixelHackerQuest3 = "Nice one! It looks like you've mastered those commands," ..
        " let's finish off the rest of the basic challenges.",
    chiefPixelHackerQuest4 = "Are you going to complete the basic Make Art challenges?" ..
        " You can do it from the computer in the corner.",
    chiefPixelHackerQuest5 = "You're getting the hang of this, the real fun with using" ..
        " code to Make Art is that you can create artworks in minutes that would take hours" ..
        " to create by hand as long as you know the right functions to use. Why don't you try" ..
        " your hand at the Medium Make Art challenges? You'll learn how to create starry" ..
        " nights and rainbows with just a few lines of code.",
    chiefPixelHackerQuest6 = "How about you try completing the Medium challenges in Make Art?",
    chiefPixelHackerQuest7 = "Well done you're well on your way to becoming an expert" ..
        " Pixel Hacker. You can get some sweet rewards if you make it all the way to the end" ..
        " of the Pixel Hack or Summer Camp challenges.",
    chiefPixelHackerHelp1 = "Talk to Curator in the Museum of Make Art.",
    chiefPixelHackerHelp2 = "Complete the Make Art Quiz.",
    chiefPixelHackerHelp3 = "Talk to Curator in the Museum of Make Art.",
    chiefPixelHackerHelp4 = "Complete the basic challenges in Make Art.",
    chiefPixelHackerHelp5 = "Talk to Curator in the Museum of Make Art.",
    chiefPixelHackerHelp6 = "Complete the medium challenges in Make Art.",
    chiefPixelHackerHelp7 = "Talk to Curator in the Museum of Make Art.",

    --- Creations on Servers Quest ---

    sharesQuestTitle = "How does Vector Village store data?",
    sharesQuestComplete = "Discovered that creations in Make Art are saved on servers.",
    sharesQuest1 = "Heya! So you want to find out about how Vector Villages stores data?" ..
        " How about you try sharing a Make Art creation online?",
    sharesQuest2 = "Have you tried sharing a Make Art creation?",
    sharesQuest3 = "Nice one! Now I think you should learn about where we keep all of our" ..
        " creations. Take a look at one of those machines in the room.",
    sharesQuest4 = "We store our data on other computers.",
    sharesQuest5 = "What do you think?",
    sharesHelp1 = "Find DevOps in the Make Art Museum.",
    sharesHelp2 = "Check out the servers in the basement in Make Art.",
    sharesHelp3 = "Talk to DevOps.",
    sharesHelp4 = "Share 3 Make Art Creations.",
    sharesHelp5 = "Talk to DevOps.",
    sharesQuestServer4 = "The server is flashing.",

    -- Overworld - Plains --

    plainsFarmer = "Y'know, your computer can do incredible things, but it is just a big" ..
        " pile of switches.",
    plainsProfessor = "Oh, hello. I'm on an expedition to research the circuit board." ..
        " I'm planning to dig through the fiberglass to find the copper core!",
    plainsRAMProfessor = "Software updates add new features and open new areas, like" ..
        " Memory Mines. Be sure to check your dashboard and update when you can!",
    plainsBuilder = "Phew, I'm exhausted after working so hard on the update. The depths" ..
        " of the RAM will be open to the public soon!",
    plainsAdventureGirl = "This path leads to Python Jungle, a dark shady place." ..
        " They say that only those who know terminal commands get respected there.",

    -- Overworld - Jungle --

    jungleMakeSnake1 = "Play Make Snake?",
    jungleAsterix = "In this realm we use magic words to speak to the computer and control" ..
        " snakes. Try it out - I can see you're on challenge $1.",
    jungleWildGirl = "How many apples can you eat? I bet you can't get over 100.",
    jungleDaringBoy = "I speak dozens of languages. I control Minecraft with Python." ..
        " And create websites with Javascript.",
    jungleScaredGirl = "Eeeek that snake! I was on my way to the Block Mines but I'm too" ..
        " scared to move.",
    jungleWildBoy = "The Block Mines are to the right. Explore them to find the Minecraft" ..
        " Master.",
    jungleTildeDiag1 = "We like to play with snakes and parameters. Let's see how good you" ..
        " are at those... Hmmm challenge $1.",
    jungleTildeDiag2 = "You still have a ways to go before you are as good as us. Talk" ..
        " to the chief to play some Snake.",
    jungleTildeDiag3 = "Oh! Not half bad - you are level $1. Nice one.",
    jungleTilde2 = "Go to the right to find the quiz.",

    -- Jungle Quiz ---

    jungleWildAntlerBoy = "We don't usually get people brave enough to come here." ..
        " Do you know what LS means in terminal?",
    jungleWildAntlerBoy2 = "Hmm... a fancy answer but that ain't right for the terminal.",
    jungleWildAntlerBoy3 = "Nice one! What about the 'CD' command?",
    jungleWildAntlerBoy4 = "Good going. And what does 'MV' mean?",
    jungleWildAntlerBoy5 = "Haha you're right! Final question: What does 'RM' mean?",
    jungleWildAntlerBoy6 = "Ooooh congratulations, you really do know your terminal" ..
        " commands. Well done.",
    jungleQuizOption1a = "List files",
    jungleQuizOption1b = "Linux Operating System",
    jungleQuizOption2a = "Change Directory",
    jungleQuizOption2b = "Compact Disc",
    jungleQuizOption3a = "Motion Video",
    jungleQuizOption3b = "Move",
    jungleQuizOption4a = "Random Memory",
    jungleQuizOption4b = "Remove",

    -- Jungle Quests --

    -- snakeQuestTitle = "Intro to Make Snake.",
    -- snakeQuestComplete = "Completed level 2 in Make Snake.",
    -- snakeQuestHelp1 = "Talk to the chief in the jungle.",
    -- snakeQuestHelp2 = "Complete 2 levels in snake.",
    -- snakeQuestHelp3 = "Talk to the chief in the jungle.",

    --- Asterix --- Uncovering the Terminal ---

    jungleAsterixQuestTitle = "Uncovering the Terminal with Snake",
    jungleAsterixQuestComplete = "Discovered terminal parameters in Make Snake.",
    jungleAsterix1 = "I can see you came from a dark place." ..
        " I can teach you more commands in the computer's shell, where a terrifying" ..
        " snake dwells.",
    jungleAsterix2 = "Are you brave enough to get past level 2 in Make Snake?",
    jungleAsterix3 = "Well done for getting this far in Make Snake. Why not visit the" ..
        " Block Mines next?",
    jungleAsterixHelp1 = "Talk to Asterix in Python Jungle.",
    jungleAsterixHelp2 = "Complete challenge 2 in Make Snake.",
    jungleAsterixHelp3 = "Report back to Asterix in Python Jungle.",

    --- Tilde ---- Challenge Terminal Quests ----

    jungleTildeQuestTitle = "Spells in Python Jungle",
    jungleTildeQuestComplete = "Learned terminal spells LS, CD, MV and RM through the Python Jungle" ..
        " Quiz.",
    jungleTildeQuest1a = "Hello. So... you've come here to learn about terminal commands? See if" ..
        " you can beat the challenge from my friend Semicolon.",
    jungleTildeQuest1b = "Have you spoken to Semicolon? He's a bit further down" ..
        " the jungle and has a challenge for you.",
    jungleTildeQuest1c = "Nicely done! So now you know a few more terminal commands. I" ..
        " recommend going to Vector Village if you want to investigate more.",
    jungleTildeHelp1a = "Talk to Tilde in Python Jungle.",
    jungleTildeHelp1b = "Complete the terminal quiz in Python Jungle.",
    jungleTildeHelp1c = "Tell Tilde in Python Jungle you completed the Quiz.",

    -- Overworld - Mines --

    mines01Sign = "Block Mines - for master builders only",
    minesSleepingGirl = "Zzzzzz just taking a quick break... I've been coding all day. Zzzzzz...",
    minesProfessor = "Our research group is working here. We're digging deep into the USB." ..
        " Please return once there's an update.",
    minesExplorer = "Ahead, enter a new dimension - a place of blocks and powers",
    minesFrightenedBoy = "Wow, did you know you can create a shelter with the tap of a key" ..
        " in Minecraft?",
    minesDojoWoman = "My favorite power in Hack Minecraft is Holey Moley." ..
        " I love digging holes super quick!",
    minecraftAlexDiag = "Check the computer next to me to code your own super powers" ..
        " in Minecraft.",
    makeMinecraft = "Ready to Hack Minecraft?",

    -- Mines -- Quests --

    -- Alex Quest Dialogue --

    minecraftAlex1 = "You've come far. Most can only play Minecraft. Here, you can make your own powers" ..
        " and reshape the world. Ready?",
    minecraftAlex2 = "Can you get past challenge 5 in Hack Minecraft?",
    minecraftAlex3 = "Nice! The more challenges you do, the more powerful you'll become.",
    minecraftQuestTitle = "Discover new powers",
    minecraftQuestComplete = "Completed challenge 5 in Hack Minecraft.",
    minecraftQuestHelp1 = "Talk to Alex from the Block Mines.",
    minecraftQuestHelp2 = "Complete challenge 5 of Hack Minecraft.",
    minecraftQuestHelp3 = "Talk to Alex in the Block Mines.",

    -- Overworld - Port Ether --

    portetherSeriousGirl = "The Internet connects your computer to billions of" ..
        " other computers around the world!",
    portetherBuilder1 = "Wanna take a look inside the Sound Port? This is where" ..
        " the speaker gets plugged in!",
    portetherBuilder2 = "The Town Hall is closed as the mayor is worried about that" ..
        " strange rabbit. Best thing to do is level up learn more spells.",
    portetherBuilder3 = "You know what the best type of sound is? Surround sound! You can" ..
        " get that with Stereo, where sound is directed through two or more speakers.",
    portetherWiseGuy = "That girl is running in an infinite loop around the fountain.",
    portetherProfessorNet = "WiFi and Ethernet are two ways to connect to the internet." ..
        " WiFi sends information through the air. While Ethernet is a cable that plugs" ..
        " into your computer.",
    portetherScaredGirl = "Do you know terminal commands? Something is using the terminal" ..
        " to take over the town of Folderton!",
    portetherTourist = "My favorite waves are sound waves! All sounds are mixed together and" ..
        " routed through a single speaker. This is called Mono.",
    portetherCheekyGirl = "My dream is to travel on a pulse train.",
    portetherSleepingGirl = "Zzzzzz I'm not leaving here until I know that Edith, Edward" ..
        " and Eleanor are ok. Zzzzzz.",
    portetherRunningGirl = "I love running loops.",
    portether03houseTetra = "I'm looking for information on Memory Mines. Apparently it" ..
        " has 1GB RAM - that's a total of 8,589,934,592 bits of data. Crazy huh?",
    portether03houseCurious = "The Logic Master said the more I practice at code the more" ..
        " powerful I'll become.",
    portether03houseLazyBoy = "If binary is used to make pictures and sound, surely you" ..
        " can make food with it, I'm starving. What? You can't? Oh.",
    portether03houseNote = "You find a note. It has a scribble that says: Folderton" ..
        " Library > Port Ether Library",
    portetherLibrarian1 = "Welcome to Port Ether Library. We have an excellent data" ..
        " collection. How may I help you?",
    portetherLibrarian2 = "We have data on the legendary caves of RAM, USB, NET and more." ..
        " Feel free to look around!",
    portetherLibrarian3 = "I've heard rumors about an animal leaving notes with pawprints" ..
        " in Folderton. You can travel there from Ether St Station.",
    portetherLockedDoor = "404 - Not found",
    portetherDoor3 = "404 - Not found",
    portetherLargeDoor = "404 - Mayor Not Found",
    portetherSignLibrary = "Port Ether Library",

    -- Ether St Station ----

    terminalquest1 = "Welcome to Ether St Station Terminal. Play Terminal Quest?",
    terminalquest2 = "Shutting down...",
    caroline1 = "Hello I'm Caroline, the Terminal Master. Can you please investigate what's" ..
        " happening in Folderton? Get to Terminal Quest through that computer! You" ..
        " are currently on challenge $1.",
    caroline2 = "Please investigate what's happening in Folderton. You can enter by sshing" ..
        " from that computer there.",
    caroline3 = "Thank you. Somehow you look more... powerful. Did you learn some spells?",
    etherstationPatientBoy = "There are two trains that leave from Ether St Station. The TCP goes back" ..
        " and forth picking up lost travelers. The UDP only travels one way though, so" ..
        " don't miss it!",
    etherstationWorriedBoy = "You can send packets on the UDP train. I'm sending one to my" ..
        " friend Eleanor. I hope she gets it...",

    -- Audio Jack Area ---

    makeMusicTerminal1 = "Code a song with Sonic Pi?",
    audioJack = "Yo, welcome to the Sound Port. What do you want to talk about?",
    audioJack2 = "The Mayor is old school. I" ..
        " say we rename this town to Port of Sound and party all day long!",
    audioJack3 = "Your ears hear by detecting vibrations from sound waves.",
    discoRunner = "I can feel the speaker vibrating. What do you want to know?",
    discoRunner2 = "The speaker turns energy into vibrations. These are sound waves," ..
       " like the pattern on the wall. I hope that helps.",
    discoGirl = "Wooo! I love how the speed of the vibration affects how high or low a note is.",
    discoSlo = "When computers generate audio from scratch they mostly use combinations " ..
      "of four different sound waves.",
    discoSloSine = "The sine wave makes a smooth humming noise and is made of a rounded " ..
      "wave that looks like a spring that has been stretched out. It sounds like blowing " ..
      "air across an empty bottle.",
    discoSloTriangle = "The triangle wave looks like a mountain range with sharp peaks and" ..
      " straight slopes. It has a deeper bass sound compared to the sine wave.",
    discoSloSquare = "The square wave can be too harsh if you listen to it unfiltered, " ..
      "sounding like an angry loud beep.",
    discoSloNoise = "The noise wave is made from completely random noise, it sounds like " ..
      "TV static and looks like a sharp pointy wall. If you play it just a very sort amount" ..
      " of time it sounds like percussion instruments like drums and cymbals.",

    --- Audio Quest ---

    audioQuestTitle = "Investigate audio",
    audioQuestComplete = "Learned about the speaker, sound waves and music.",
    audioQuestHelp = "Find Jack in Port Ether.",
    audioQuestHelp2 = "Speak to the disco dancers.",
    audioQuestHelp3 = "Launch Sonic Pi and write a song.",
    audioQuestHelp4 = "Hear what Jack has to say.",
    audioQuest = "You're chasing a rabbit? Well, one just" ..
        " deleted our song collection! Can you code us a song?",
    audioQuest2 = "To make the best song you need to know more about sound. Speak to some" ..
        " of the dancers.",
    audioQuest3 = "Now, open Sonic Pi from the computer next to me. You can use it" ..
        " to write songs with code.",
    audioQuest4 = "Awesome! Thanks for your help. Keep exploring the world and" ..
        " I'm sure you'll catch that cheeky rabbit.",

    --- Cafe ---

    portetherCafeHost = "Hey there, welcome to .Coffee, a hangout for coders.",
    portetherCafeText = "Text is better than Blocks for coding. It allows me to edit numbers" ..
        " much faster.",
    portetherCafeBlocks = "Blocks is better than text for coding. It's so much faster as I" ..
        " don't have to spend much time typing.",
    portetherCafeBoy = "I wonder if Coffee Script is going to replace Javascript...",
    portetherCafeGirl = "I think that Python is the best programming language. Wanna hear" ..
        " more about Python?",
    portetherCafeGirl2 = "Python is a programming language. It is very popular!" ..
        " Try out Make Snake to see some Python in action.",
    portetherCafeGirl3 = "Oh ok, that's a shame.",

    -- Town Hall --

    portetherDancer = "Did you see a rabbit bouncing around?",
    portetherDancer2 = "I hear something is deleting files around here. What do you think?",
    portetherDemonBoy = "There was a time when the Mayor used to hold parties up here. Not anymore...",
    portetherReceptionist = "Hey there, welcome to Port Ether Town Hall. The Mayor's office is" ..
        " just past me.",

    -- Default Mayor Dialogue ---

    portetherMayorDiag = "Welcome. I'm the Mayor of Port Ether. Here we specialise in" ..
        " Ethernet and Audio ports. They bring the internet in, and send sounds out.",
    portetherMayorDiag2 = "I see you have visited Folderton. Come back to me if you uncover" ..
        " anything interesting that's happening there. There have been strange rumours in" ..
        " the news.",
    portetherMayorDiag3 = "Thanks for your help. Do let me know if there's anything else you" ..
        " find out about Folderton.",
    portetherMayorDiag4 = "Thanks for your help. It looks like you are training to become" ..
        " a powerful Kano Master.",

    --- Terminal Quest Chapter 1 ---

    terminalQuestTitle = "Uncover Folderton mystery",
    terminalQuestComplete = "Uncovered mysterious disappearances of people in Folderton." ..
        " Learned the spells LS, CAT and CD.",
    terminalQuestHelp1 = "Talk to Caroline in Ether St Station.",
    terminalQuestHelp2 = "Complete challenge 8 in Terminal Quest.",
    terminalQuestHelp3 = "Talk to Caroline in Ether St Station.",
    carolineTerminalQuest1 = "Hello! Have you heard what's going on in Folderton? Please use" ..
        " the computer next to me to travel there.",
    carolineTerminalQuest2 = "Please visit Folderton, and make sure you learn some useful spells.",
    carolineTerminalQuest3 = "Wow, a bunch of people from Folderton have disappeared? That's" ..
        " crazy! Maybe you should tell the Mayor in Port Ether?",

    --- Mayor of Port Ether's Concern Quest ----

    portetherMayorQuestTitle = "Data corruption",
    portetherMayorQuestComplete = "Discovered two houses that had data corruption. Found" ..
        " notes that had the commands MV and RM.",
    portetherMayor = "Like Folderton, there seem to be some strange things happening around" ..
        " here. Can you investigate what's going on?",
    portetherMayor1 = "A strange rabbit was seen coming out of a house near the Audio Jack" ..
        " building.",
    portetherQuest1a = "You see part of the house has disappeared. Almost as if it's been" ..
        " moved. And a note with the letters MV ~/.",
    portetherQuest1b = "What? Part of it was moved? Does that pesky rabbit know magical" ..
        " commands? I've also heard rumours in Vector Village, can you take a look?",
    portetherMayor2 = "I think I saw that rabbit head to Vector Village.",
    portetherQuest1c = "You see a section of the world has been removed. And a note with" ..
        " the letters RM.",
    portetherQuest1d = "Deleted? RM? This is bad. That rabbit must be using Terminal" ..
        " Commands to alter things. Speak to the tribe in Python Jungle, they are wise" ..
        " in the ways of Terminal. But be careful.",
    portetherHelp = "Find the Mayor of Port Ether.",
    portetherHelp1a = "Look for a house with data loss in Port Ether.",
    portetherHelp1b = "Go back to the Mayor in Port Ether Town Hall.",
    portetherHelp1c = "Investigate houses in Vector Village.",
    portetherHelp1d = "Go back to the Mayor in Port Ether Town Hall.",

    -- Codex Elements --

    cBinaryTitle = "Binary",
    cBinary = "A numbering system with only two possible values for each digit: 0 and 1.",

    cHexTitle = "Hexadecimal",
    cHex = "A numbering system of base 16.",

    cBitTitle = "Bit",
    cBit = "The smallest unit of data in a computer. It has a single binary value, a 0 or 1.",

    cKilobyteTitle = "KiloByte",
    cKilobyte = "A unit of data that is 8,192 bits.",

    cPowerTitle = "Power",
    cPower = "Power is the rate at which energy is converted to another form, such" ..
        " as motion, heat, or electrical. It is measured in Watts.",

    cEnergyTitle = "Energy",
    cEnergy = "The ability to do work. It comes in many different forms. eg: electrical," ..
        " heat, light.",

    cLEDTitle = "LED",
    cLED = "An electronic device that emits a light when a voltage is applied.",

    cVoltageTitle = "Voltage",
    cVoltage = "Voltage, also called electromotive force, is a quantitative expression of" ..
        " the potential difference in charge between two points in an electrical field.",

    cCurrentTitle = "Current",
    cCurrent = "An electric current is a flow of electric charge. In electric circuits" ..
        " this charge is often carried by moving electrons in a wire.",

    cPixelsTitle = "Pixels",
    cPixels = "The basic unit of color on a computer display. The colors are made up of" ..
        " different values of red, green and blue.",

    cHDMITitle = "HDMI",
    cHDMI = "A standard for connecting high-definition video devices. eg: computer monitor, television.",

    cResolutionTitle = "Resolution",
    cResolution = "The number of pixels on the horizontal and vertical axis that can be" ..
        " displayed on a screen.",

    cSpeakerTitle = "Speaker",
    cSpeaker = "A device connected to a computer that outputs sound waves.",

    cSoundWaveTitle = "Sound Wave",
    cSoundWave = "A sound wave is produced by a vibration, eg: an electromagnetic field" ..
        " stimulated by voltage.",

    cStereoTitle = "Stereo",
    cStereo = "Sound that is directed through two or more speakers. This gives a more natural" ..
        " effect as it sounds as though it's coming from more than one direction.",

    cMonoTitle = "Mono",
    cMono = "All sounds are mixed together and routed through a single speaker.",

    cFrequencyTitle = "Frequency",
    cFrequency = "A measure of the number of waves that pass a fixed point in a given" ..
        " amount of time.",

    cVectorTitle = "Vector",
    cVector = "The use of polygons to represent images in computer graphics.",

    cTerminalTitle = "Terminal",
    cTerminal = "An interface for typing commands directly to a computer.",

    cCodeTitle = "Code",
    cCode = "The low-level software that supports the computer to schedule the" ..
        " instructions and control peripherals.",

    cSDCardTitle = "SD Card",
    cSDCard = "A flash memory card that can store lots of data in a small size. It is" ..
        " popularly used in digital cameras, mobile phones and the Kano Computer Kit.",

    cOSTitle = "OS (Operating System)",
    cOS = "The low-level software that supports the computer to carry out instructions" ..
        " and control other devices.",

    cIfStatementTitle = "If Statement",
    cIfStatement = "Tells the computer to run a block of code if a certain condition is met.",

    cCoordinatesTitle = "Coordinates",
    cCoordinates = "A 3D grid has an x-axis, a y-axis and a z-axis. A point in 3D space" ..
        " uses 3 numbers from each axis to identify its position. These numbers are the" ..
        " point's coordinates.",

    cLogicGateTitle = "Logic Gate",
    cLogicGate = "A logic gate is an elementary building block of a digital circuit. Most" ..
        " logic gates have two inputs and one output. At any given moment, every terminal" ..
        " is in one of the two binary conditions low (0) or high (1), represented by" ..
        " different voltage levels.",

    cInputTitle = "Input",
    cInput = "Information or data that is sent to a computer for processing from a device." ..
        " Eg: user pressing a key on a keyboard.",

    cOutputTitle = "Output",
    cOutput = "Information that has been processed and sent out from a computer." ..
        " Eg: viewing something on your screen.",

    cPythonTitle = "Python",
    cPython = "Python is a high-level programming language. It is easy to learn due to" ..
        " its simple syntax and very readable due to its white space.",

    cCoffeeScriptTitle = "CoffeeScript",
    cCoffeeScript = "CoffeeScript is a language that compiles into JavaScript. It was" ..
        " designed to use the good parts of JavaScript in a simple way so that is is" ..
        " easier to use.",

    -- Dev --

    devAlej = "I am the Chief Software Architect, a veteran here. This is the core team who" ..
        " built Kano OS.",
    devAlexB = "I'm the Principal Software Engineer that knows how to get the best performance on" ..
        " the Raspberry Pi.",
    devEmily = "I'm Kano's database that is obsessed with making characters. I also ship many things.",
    devJames = "So many pixels... so sleepy...",
    devTom = "I'm a mathmatician turned programmer with a passion for python and a craving" ..
        " for C. Oh my!",
    devRadu = "The world you are in is held together by code I wrote. You can imagine the" ..
        " code as a city with tall and small buildings, each having its own responsibility," ..
        " and being connected to others. For example, one of these buildings is drawing" ..
        " this dialogue box and my words within it. And this word too.. and this one, and" ..
        " that one.. and all future words in here..",
    devMegan = "I'm a mountain climber and photographer who assures that" ..
        " the software we ship is of high quality. I also know what is Mog.",
    devAlbert = "Hola! I'm a big fan of Linux, embedded computing, and arranging bits in" ..
        " the correct order.",

    -- Termsition -- Terminal

    termsitionTerminal1 = "You made it! Here, binary gets turned into pixels. Then" ..
        " we can create a character, with a pixel form.",

    termsitionSign1 = "01010111 01100101 01101100 01100011 01101111 01101101" ..
        " 01100101 00100001",
    termsitionSign2 = "Welcome!",
}
