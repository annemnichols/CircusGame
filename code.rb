puts "You decide to explore a creepy circus at night."
puts "You arrive and enter the creaky gates."
puts "You can hear strange circus music and screams." 

def arrive
	puts "Do you go left, right, or forward?"
	prompt

	enter = gets.chomp

	if enter.include? "left"
		games
	elsif enter.include? "right"
		rides
	elsif enter.include?("forward") || enter.include?("straight")
			food
	else
		invalid
		arrive
	end
end

def games
	puts "You arrive at an area full of games to play."
	puts "Which game would you like to play?"
	puts "- shooting game"
	puts "- test your strength"
	puts "- ring toss"
	prompt
	
	game = gets.chomp
	
	if game.include?("shooting") || game.include?("shoot") 
		shoot
	elsif game.include?("test") || game.include?("strength")
			strength
	elsif game.include?("ring") || game.include?("toss")
		ringtoss
	else
		invalid
		games
	end
end

def shoot
	puts "You decide to try a shooting game."
	puts "Do you want the pistol or shotgun?"
	prompt
	
	gun = gets.chomp
	
	if gun.include? "pistol"
		pistol
	elsif gun.include? "shotgun"
		shotgun
	else
		invalid
		shoot
	end
end

def pistol
	puts "You hit the target and won a doll! It's probably haunted."
	moregames
end

def shotgun
	puts "You'll shoot your eye out, kid!"
	puts "Aaaaaand you did. Good job." 
	die
end

def strength
	puts "You decide to test your strength!"
	puts "Do you work out?"
	prompt
	
	workout = gets.chomp
	
	if workout == "yes"
		yesworkout
	elsif workout == "no" 
		noworkout
	else
		invalid
		strength
	end
end
		
def yesworkout
	puts "You hit the target too hard."
	puts "It bounces back, hits you in the head, and kills you."
	die
end

def noworkout
	puts "You're a weakling and embarass yourself."
	puts "The creepy guy running the game gives you"
	puts "a small stuffed bunny as a consolation prize."
	puts "You name him Tim."
	moregames
end


def ringtoss
	puts "You wander over to the ring toss game."
	puts "You throw a few rings that oddly don't ever go around the bottles."
	puts "You fear the guy running the game is tricking you."
	puts "Do you call him out?"
	prompt
	
	callout = gets.chomp
	
	if callout == "yes"
		puts "He asks you to go into the back to talk."
		puts "You're never heard from again." 
		puts "Pretty sure the guy was a canibal."
		die
	elsif callout == "no"
		puts "You decide not to provoke Sketchy McGee." 
		moregames
	else
		invalid
		ringtoss
	end
end
	
def rides
	puts "You decide to give some rides a try."
	puts "Which would you like to try?" 
	puts "- ferris wheel"
	puts "- merry go-round"
	puts "- freak show"
	prompt
	
	ride = gets.chomp
	
	if ride.include?("ferris") || ride.include?("wheel")
		ferriswheel
	elsif ride.include?("merry") || ride.include?("go-round")
		merrygoround
	elsif ride.include?("freak") || ride.include?("show")
		freakshow
	else
		invalid
		rides
	end
end

def ferriswheel
	puts "You get on the rickety ferris wheel."
	puts "It's all fun and games until you get stuck at the top." 
	puts "Do you try to climb down?"
	prompt
	
	answer = gets.chomp
	
	if answer == "yes"
		puts "You climb down the ride and make it safely to the bottom."
		puts "The old dude running the ride won't even give you your money back."
		puts "What a jerk."
		morerides
	elsif answer == "no"
		puts "You decide to stay put." 
		puts "Unfortunately some carnie canibals climb up and capture you."
		puts "You'll make a tasty dinner tonight."
		die
	else
		invalid
		ferriswheel
	end
end

def merrygoround
	puts "The Merry Go-Round looks like a nice, gentle ride." 
	puts "Would you like to ride the horse or the hippo?"
	prompt
	
	answer = gets.chomp
	
	if answer.include?("horse")
		puts "The horse looks good. You climb up and the ride starts."
		puts "Then the horse comes to life and starts galloping away!"
		horse
	elsif answer.include?("hippo")
		puts "You decide on the hippo."
		puts "Aside from the hippo smelling bad and the creepy carnival music,"
		puts "the ride goes smoothly. Though you're feeling a bit queasy now."
		morerides	
	else
		invalid
		merrygoround
	end
end
		
def horse
	puts "Do you try to jump off, or stay on?"
	prompt
		
	horse = gets.chomp
		
	if horse.include?("off")
		puts "You jump off the horse and break your neck."
		die
	elsif horse.include?("on")
		puts "You stay on the horse until a carnie wrangles it and helps you off."
		arriveagain
	else
		invalid
		horse
	end
end
			
def freakshow
	puts "You decide to see a good old fashioned freak show."
	puts "Which weirdo would you like to take a peek at?"
	puts "- bearded lady"
	puts "- siamese twins"
	puts "- creepy clown"
	prompt
	
	freak = gets.chomp
	
	if freak.include?("bearded") || freak.include?("lady")
		beardedlady
	elsif freak.include?("siamese") || freak.include?("twins")
		siamesetwins
	elsif freak.include?("creepy") || freak.include?("clown")
		clown
	else
		invalid
		freakshow
	end
end

def beardedlady
	puts "You decide you'd like to see a woman with a beard."
	puts "Mkay. Weirdo."
	puts "You go take a gander at the bearded lady and feel an"
	puts "overwhelming desire to talk to her."
	puts "Do you taunt her, or compliment her?"
	prompt
	
	answer = gets.chomp
	
	if answer.include?("taunt")
		beardedchase
	elsif answer.include?("compliment")
		puts "You give her a nice compliment. Because you're so nice."
		puts "In return she slips you her number and a lock of her glorious beard."
		morefreakshow
	else
		invalid
		beardedlady
	end
end

def beardedchase
	puts "You taunt the bearded lady. What a horrible decision."
	puts "She decides she's had enough and chases you out of the tent."
	puts "Do you run left or right?"
	prompt
	
	direction = gets.chomp
	
	if direction == "left"
		puts "You go left and end up in a dressing room."
		puts "The bearded lady's dressing room."
		puts "She enters behind you, carrying an axe."
		die
	elsif direction == "right"
		puts "You veer right and are able to hide behind a tent."
		morefreakshow
	else
		invalid
		beardedchase
	end
end

def siamesetwins
	puts "The siamese twins sound interesting!"
	puts "They think you're pretty interesting too."
	puts "They ask you which one of them is more attractive."
	puts "Which one do you like more, chief?"
	puts "- Bertha"
	puts "- Belinda"
	puts "- Both"
	prompt
	
	twin = gets.chomp.downcase
	
	if twin == "bertha"
		puts "You decide you like Bertha best."
		puts "Unfortunately, Belinda is the one with raging jealousy."
		puts "And a gun in her pocket."
		die
	elsif twin == "belinda"
		puts "Belinda never gets complimented, and is thankful for your kindness."
		puts "She slips you a note that says she'll meet you later if she can get away."
		morefreakshow
	elsif twin == "both"
		puts "You tell them they're both gorgeous."
		puts "They're so giddy about it that they force you to marry them on the spot."
		puts "Welcome to carnie life!"
	else
		invalid
		siamesetwins
	end
end

def clown
	puts "You take a chance on the creepy clown."
	puts "Are you scared of clowns at all?"
	prompt
	
	answer = gets.chomp
	
	if answer == "yes"
		puts "Good thing this is a nice looking clown."
		puts "Aside from the terrifying smile and claws."
		puts "He gets a good scare out of you and lets you go."
		morefreakshow
	elsif answer == "no"
		notscared
	else
		invalid
		clown
	end
end
		
def notscared
	puts "Mr. Scary Clownface doesn't like that you aren't terrified of him."
	puts "He gets a big grin on his face and chases you down."
	puts "You run out of the tent. Do you go left or right?"
	prompt
		
	direction = gets.chomp
	
	if direction == "left"
		puts "You veer left and are able to hide in the animal pen until he passes."
		morefreakshow
	elsif direction == "right"
		puts "You run to the right and into the arms of three more creepy clowns."
		puts "One of them is holding a rope tied in a noose."
		die
	else
		invalid
		notscared
	end
end

def morefreakshow
	puts "Would you like to take a peek at some more freaks?"
	prompt
	
	answer = gets.chomp
	
	if answer == "yes"
		freakshow
	elsif answer == "no"
		arriveagain
	else
		invalid
		morefreakshow
	end
end

def food
	puts "You decide to get some grub." 
	puts "Whatcha in the mood for?"
	puts "- hot dog"
	puts "- cotton candy"
	puts "- popcorn"
	prompt
	
	answer = gets.chomp
	
	if answer == "hot dog"
		puts "After devouring your hot dog, you learn that"
		puts "it's made from rotten horse meat."
		puts "Your death is swift."
		die
	elsif answer == "cotton candy"
		candychoice
	elsif answer == "popcorn"
		puts "Aside from it being moldy and gross, it's quite delicious."
		morefood
	else
		invalid
		food
	end
end

def candychoice
	puts "Time for some cotton candy!"
	puts "Do you want pink or blue?"
	prompt
	
	answer = gets.chomp
	
	if answer == "blue"
		puts "You choose blue. You take a big bite and get a mouthful of horse hair."
		puts "You smartly throw the rest away."
		morefood
	elsif answer == "pink"
		puts "You choose the pink cotton candy."
		puts "Then food poisoning chooses you."
		puts "Terrible, fatal food poisoning."
		die
	else
		invalid
		candychoice
	end
end

def moregames
	puts "Want to play more games?"
	prompt
		
	answer = gets.chomp
		
	if answer == "yes"
		games
	elsif answer == "no"
		arriveagain
	else
		invalid
		moregames
	end
end

def morerides
	puts "Want to go on more rides?"
	prompt
		
	answer = gets.chomp
		
	if answer == "yes"
		rides
	elsif answer == "no"
		arriveagain
	else
		invalid
		morerides
	end
end

def morefood
	puts "Want to eat more grub?"
	prompt
		
	answer = gets.chomp
		
	if answer == "yes"
		food
	elsif answer == "no"
		arriveagain
	else
		invalid
		morefood
	end
end

def arriveagain
	puts "You wander back to the front gates."
	puts "Do you want to explore more, or leave?"
	prompt
	
	answer = gets.chomp
	
	if answer.include?("explore")
		arrive
	elsif answer.include?("leave")
		leave
	else
		invalid
		arriveagain
	end
end

def leave
	puts "You go to leave but some sinister looking"
	puts "clowns block your path. Choose a number"
	puts "between 1-10 and if you choose a lucky"
	puts "one they'll let you leave." 
	prompt
	
	number = gets.chomp.to_i
	
	if number <= 5
		leavealive
	elsif number >= 6
		leavedead
	else
		invalid
		leave
	end
end

def leavealive
	puts "You chose a lucky number!"
	puts "The carnies let you out alive!"
	puts "Congrats!"
end

def leavedead
	puts "Sorry buddy, you chose an unlucky number." 
	puts "You belong to the carnies now."
	die
end

def invalid
	puts "That's not a valid response. Try again, chief."
end

def prompt
	print "> "
end

def die
	puts "Rest in peace." 
end

arrive	
