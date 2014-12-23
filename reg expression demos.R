#work with regular expressions (demos for part I and II from videos)

#check out: http://www.regular-expressions.info/rlanguage.html but note that recommendation for setting perl=TRUE may break some 
#of the patterns shown below

#############
#Reg Expression I slide 7/12

string <- c("i think we all rule for participating",
            "i think i have been outed",
            "i think this will be quite fun actually",
            "i think i need to go to work",
            "i think i first saw zombo in 1999.",
            "but i think this string will not match")

pattern <- "^i think"

string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression I slide 8/12

string <- c("well they had something this morning",
            "then had to catch a tram home in the morning",
            "dog obedience school in the morning",
            "and yes happy birthday i forgot to say it earlier this morning",
            "I walked in the rain this morning",
            "good morning",
            "good morning, too bad this does not match")

pattern <- "morning$"

string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression I slide 9/12

string <- c("The democrats are playing, \"Name the worst thing about Bush!\"",
            "I smelled the desert creosote bush, brownies, BBQ chicken",
            "BBQ and bushwalking at Molonglo Gorge",
            "Bush TOLD you that North Korea is part of the Axis of Evil",
            "I’m listening to Bush - Hurricane (Album Version)",
            "Will not find this bu sh or this bu.sh or this bu$h")

pattern <- "[Bb][Uu][Ss][Hh]"

string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression I slide 10/12

string <- c("i am so angry at my boyfriend i can’t even bear to look at him",
            "i am boycotting the apple store",
            "I am twittering from iPhone",
            "I am a very vengeful person when you ruin my sweetheart.",
            "I am so over this. I need food. Mmmm bacon...",
            "Iam not expecting this one to be matched",
            "nor I am not expecting this to be matched")

pattern <- "^[Ii] am"

string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression I slide 11/12

string <- c("7th inning stretch",
            "2nd half soon to begin. OSU did just win something",
            "3am - cant sleep - too hot still.. :(",
            "5ft 7 sent from heaven",
            "1st sign of starvagtion",
            "9's will not be matched",
            "10s will not be matched either")

pattern <- "^[0-9][a-zA-Z]"

string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression I slide 12/12

string <- c("i like basketballs",
            "6 and 9",
            "dont worry... we all die anyway!",
            "Not in Baghdad",
            "helicopter under water? hmmm",
            "this will not be matched, right?",
            "and a traling period will not be matched either.")

pattern <- "[^?.]$"

string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression II slide 2/17

string <- "9.11"
pattern <- "."

grep(pattern, string, value=TRUE)

string <- c("its stupid the post 9-11 rules",
            "if any 1 of us did 9/11 we would have been caught in days.",
            "NetBios: scanning ip 203.169.114.66",
            "Front Door 9:11:46 AM",
            "Sings: 0118999881999119725...3 !")

string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression II slide 3/17


string <- c("is firewire like usb on none macs?",
            "the global flood makes sense within the context of the bible",
            "yeah ive had the fire on tonight",
            "... and the floods, hurricanes, killer heatwaves, rednecks, gun nuts, etc.")
pattern <- "flood|fire"

string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression II slide 4/17

string <- c("Not a whole lot of hurricanes in the Arctic.",
            "We do have earthquakes nearly every day somewhere in our State",
            "hurricanes swirl in the other direction",
            "coldfire is STRAIGHT!",
            "’cause we keep getting earthquakes")

pattern <- "flood|earthquake|hurricane|coldfire"

string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression II slide 5/17

string <- c("good to hear some good knews from someone here",
            "Good afternoon fellow american infidels!",
            "good on you-what do you drive?",
            "Katie... guess they had bad experiences...",
            "my middle name is trouble, Miss Bad News",
            "This will not match good since good is not first",
            "bad will match but good will not")

pattern <- "^[Gg]ood|[Bb]ad"

string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression II slide 6/17

string <- c("bad habbit",
            "bad coordination today",
            "good, becuase there is nothing worse than a man in kinky underwear",
            "Badcop, its because people want to use drugs",
            "Good Monday Holiday",
            "Good riddance to Limey",
            "this will not match bad or good")

pattern <- "^([Gg]ood|[Bb]ad)"

string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression II slide 7/17 and 8/17

string <- c("i bet i can spell better than you and george bush combined",
            "BBC reported that President George W. Bush claimed God told him to invade I",
            "a bird in the hand is worth two george bushes",
            "this george w bush will not match",
            "this george w.     bush will not match either")

pattern <- "[Gg]eorge( [Ww]\\.)? [Bb]ush" #note: need to use double backslash in R to get escape 

string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression II slide 9/17

string <- c("anyone wanna chat? (24, m, germany)",
            "hello, 20.m here... ( east area + drives + webcam )",
            "(he means older men)",
            "()")

pattern <- "\\(.*\\)" #NOTE: did this slide expect the literal '(' and ')' to be matched? Need to escape them if so...otherwise they are grouping

string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression II slide 10/17

string <- c("working as MP here 720 MP battallion, 42nd birgade",
            "so say 2 or 3 years at colleage and 4 at uni makes us 23 when and if we fin",
            "it went down on several occasions for like, 3 or 4 *days*",
            "Mmmm its time 4 me 2 go 2 bed",
            "this will not match 222at all 33.",
            "and this will will match 2 at all oddly enough3")

pattern <- "[0-9]+ (.*)[0-9]+" 

string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression II slide 11/17 

string <- c("Bush has historically won all major debates he’s done.",
            "in my view, Bush doesn’t need these debates..",
            "bush doesn’t need the debates? maybe you are right",
            "That’s what Bush supporters are doing about the debate.",
            "Felix, I don’t disagree that Bush was poorly prepared for the debate.",
            "indeed, but still, Bush should have taken the debate more seriously.",
            "Keep repeating that Bush smirked and scowled during the debate",
            "this bush line should not work due to too many words between debate",
            "and this bush line debute should not work either")

#pattern <- "[Bb]ush( +[^ ]+ +){1,5} debate" #NOTE:cannot get this one to work in R!!!! This is incorrect (the trailing whitespace should not be there)
#pattern <- "[Bb]ush( +[^ ]+){1,5} debate" #corrected line
pattern <- "[Bb]ush(\\s+\\S+){1,5} debate" #corrected line (and safer...more likely to get result you want)
#pattern <- "[Bb]ush(\\s+[a-zA-Z’]+){1,5} debate" 


string[grepl(pattern, string)]

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression II slide 14/17 

string <- c("time for bed, night night twitter!",
            "blah blah blah blah",
            "my tattoo is so so itchy today",
            "i was standing all all alone against the world outside...",
            "hi anybody anybody at home",
            "estudiando css css css css.... que desastritooooo")

pattern <- "+([a-zA-Z]+) +\\1 +" #NOTE: need double back slash in R

string[grepl(pattern, string)] #NOTE: setting perl=TRUE will cause this to stop due to (I assume) the \\1 in the pattern

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression II slide 15/17 

string <- c("sitting at starbucks",
            "setting up mysql and rails",
            "studying stuff for the exams",
            "spaghetti with marshmallows",
            "stop fighting with crackers",
            "sore shoulders, stupid ergonomics")

pattern <- "^s(.*)s" 

string[grepl(pattern, string)] #NOTE: setting perl=TRUE will cause this to stop due to (I assume) the \\1 in the pattern

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression II slide 16/17 part A

string <- c("sitting at starbucks",
            "setting up mysql and rails",
            "studying stuff for the exams",
            "spaghetti with marshmallows",
            "stop fighting with crackers",
            "sore shoulders, stupid ergonomics")

pattern <- "^s(.*?)s" #NOTE: i removed the trailing $ so you can see the difference when running sub

string[grepl(pattern, string)] #NOTE: setting perl=TRUE will cause this to stop due to (I assume) the \\1 in the pattern

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string

#############
#Reg Expression II slide 16/17 part B

string <- c("sitting at starbucks",
            "setting up mysql and rails",
            "studying stuff for the exams",
            "spaghetti with marshmallows",
            "stop fighting with crackers",
            "sore shoulders, stupid ergonomics")

pattern <- "^s(.*?)s$" #the original line from the slide with trailing $

string[grepl(pattern, string)] #NOTE: setting perl=TRUE will cause this to stop due to (I assume) the \\1 in the pattern

sub(pattern,"XXXX",string) #will show exactly where the pattern was matched in the string
