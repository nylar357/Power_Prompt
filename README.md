huge props to RYANOASIS without which none of this would be possible 

Starting Note:  If you don't already use ZSH & Powerlevel9k for your shell and prompt elements please stop now and go to the Cyberpunk-Neon repository on my page.  That will get you to the point you need to be to go forward, and its quick and easy (15-30 miuntes).  Plus the amount of productivity and satisfaction from working your terminal will increase by magnitudes.


![preview](img/Terminal_Photo.png)

This is currently my Powerlevel9k Prompt.  To give you some idea of the options and things you can do with it.
So once you get the idea its actually extremely simple to do this.  Assuming of course you've already installed the pre-req's and are familiar with their respective conf files.  If you don't already use ZSH, Oh-My-Zsh, Tmux, Oh-My-Tmux, and the syntax highlighting and auto suggestions that go along with them pherhaps its time to make a change.  Your productivity will increase by magnitudes.  

I'll lay down the broad strokes and toss some goodies in there for you (the syntax highlighting and auto suggestions).  Not gonna explain how to install and configuure everything properly but I will tell you what you need, throw in some example confs (mine actually which obviously work, albiet they may be clunky at the moment).  

IF YOU SHOULD BE ABSOLUTELY AGAINST SWITCHING FROM  YOUR CURRENT SHELL TO ZSH, TMUX, WHATEVER THERES A FASTER ROUTE THO I HAVE NOT TESTED THIS.  BUT I HAVE CONFIDENCE THE SOURCE WILL STEER YOU IN THE DIRECTION OF LEAST RESISTENCE.
(https://github.com/banga/powerline-shell)

Shell : ZSH
Shell Mod : Oh-My-Zsh
Terminal Multiplexor & Oh-My-Tmux

don't underestimate the usefulness of these, 

Command Syntax Highlighting & Auto-Suggestions based on command history
Download zsh-autosuggestions by

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

Download zsh-syntax-highlighting by

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
nano ~/.zshrc find plugins=(git)

Append zsh-autosuggestions & zsh-syntax-highlighting to plugins() like this

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)


You would want to edit the glyph code into your ~/.oh-my-zsh/custom/themes/powerlevel9k/functions/icons.zsh file.  ONLY in the nerdfont-complete section.  Then adding to your .zshrc conf file: 

POWERLEVEL9K_MODE="nerdfont-complete"



![preview](img/original_slanted.png) 
		
		Slanted
                Lock Icon : u'\uE0A2',
                Network Icon : u'\uE0A2',
                Seperator : u'\uE0B8',
                Separator_thin : u'\uE0B9'

![preview](img/slanted2.png)        
		
		Slanted (Mirrored)
                Lock Icon : u'\uE0A2',
                Network Icon : u'\uE0A2',
                Seperator : u'\uE0BC',
                Separator_thin : u'\uE0BD

![preview](img/rounded.png)        
	
		Rounded
                Lock Icon : u'\uE0A2',
                Network Icon : u'\uE0A2',
                Seperator : u'\uE0B4',
                Separator_thin : u'\uE0B5'


![preview](img/flame1.png)
![preview](img/flame2.png)
		
		Flames
		Lock Icon : u'\uE0A2',
                Network Icon : u'\uE0A2',
                Seperator : u'\uE0C0',
               	Separator_thin : u'\uE0C1'
		
		
![preview](img/lego.png)

       		Lego!! (My current fav, tho fractal is a closer 2nd)
        	Lock Icon : u'\uE0A2',
                Network Icon : u'\uE0A2',
                Seperator : u'\uE0CE',
                Separator_thin : u'\uE0CF'


![preview](img/fractal.png)
	
	},
        # pixelated blocks 2 (large) random fade (pixey)
        'patched': {
        	'lock': u'\uE0A2',
        	'network': u'\uE0A2',
        	'separator': u'\uE0C6',
        	'separator_thin': u'\uE0C6'
        }



![preview](img/fontforge.png)

Fonts: 
https://github.com/ryanoasis/powerline-extra-symbols

Installation of the font is the most difficult part unless you want to DL 50GB of nerdfonts.   Go to the above link and get only the patched ones we need (RyanOasis whom again I have to give the biggest thanks to bc all the real work is absolutely due to him). 

I had trouble with the install.sh & font-patcher.py but eventually figured out that if you simply clone the Symbol repo above, from patched-fonts folder move Droid*.otf to /usr/local/share/fonts/Nerdfonts/ then run the install.sh script provided on the same site its alot quicker than dealing with the pleathora of .local / .config / fonts / .font / font folder inconsistencies accross distros (a good time to mention I'm running on Ubuntu 18.04 for this particular work thru but I've also ran it on Kali Linux with little or no modification).  
