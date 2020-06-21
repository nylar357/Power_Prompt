huge props to RYANOASIS without which none of this would be possible 

Starting Note:  If you don't already use ZSH & Powerlevel9k for your shell and prompt elements please stop now and go to the Cyberpunk-Neon repository on my page.  That will get you to the point you need to be to go forward, and its quick and easy (15-30 miuntes).  Plus the amount of productivity and satisfaction from working your terminal will increase by magnitudes.


![preview](img/Terminal_Photo.png)

This is currently my Powerlevel9k Prompt.  To give you some idea of the options and things you can do with it.
So once you get the idea its actually extremely simple to do this.  Assuming of course you've already installed the pre-req's and are familiar with their respective conf files.  If you don't already use ZSH, Oh-My-Zsh, Tmux, Oh-My-Tmux, and the syntax highlighting and auto suggestions that go along with them pherhaps its time to make a change.  Your productivity will increase by magnitudes.  

I'll lay down the broad strokes and toss some goodies in there for you (the syntax highlighting and auto suggestions).  Not gonna explain how to install and configuure everything properly but I will tell you what you need, throw in some example confs (mine actually which obviously work, albiet they may be clunky at the moment).  

IF YOU SHOULD BE ABSOLUTELY AGAINST SWITCHING FROM  YOUR CURRENT SHELL TO ZSH, TMUX, WHATEVER THERES A FASTER ROUTE THO I HAVE NOT TESTED THIS.  BUT I HAVE CONFIDENCE THE SOURCE WILL STEER YOU IN THE DIRECTION OF LEAST RESISTENCE.
(https://github.com/banga/powerline-shell)

Shell : ZSH
$ sudo apt install zsh 
$ chsh -s /usr/local/bin/zsh

	*you only need to perform the chsh function if your building or for some reason you don't get the switch auto on installation*


Glyph Installation (font patching)

$ git clone https://github.com/nylar357/Power_Prompt.git

$ cd Power_Prompt/fonts

$ ./install.sh

Simple as that, now reload your terminal application.  Set your font to one of the Droid NerdFonts + Powerline examples.  If you want a bigger variety of font samples that these glyphs work with, well you'll have to do the work.  

Now simple edit your icons.zsh file (NerdFont Complete Section Only!) with your desired icons and wing-bang-boom set to go vroom!

You would want to edit the glyph code into your ~/.oh-my-zsh/custom/themes/powerlevel9k/functions/icons.zsh file.  ONLY in the nerdfont-complete section.  Then adding to your .zshrc conf file: 

$ POWERLEVEL9K_MODE="nerdfont-complete"



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
		
		Fractal
        	Lock Icon : u'\uE0A2',
        	Network Icon : u'\uE0A2',
        	Seperator : u'\uE0C6',
        	Seperator Thin : u'\uE0C6'
        



![preview](img/fontforge.png)

Dependancies & Productivity Upgrades/Addons

Shell Mod : Oh-My-Zsh

$ curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

Terminal Multiplexor & Oh-My-Tmux

$ sudo apt install tmux
$ cd
$ git clone https://github.com/gpakosz/.tmux.git
$ ln -s -f .tmux/.tmux.conf
$ cp .tmux/.tmux.conf.local .	

	*then you do need to edit you tmux.conf.local file in some way, I usually just scroll down and set the segments, but literally if you just go all the way to the bottom and set mouse on by default that'll do*

$ sudo nano .tmux/.tmux.conf.local (save your work!)
$ tmux (all done!)

Tilix (My personal choice but should work with just about any terminal app)

don't underestimate the usefulness of these, 

###	     PRODUCTIVITY ADDONS           ###
### Syntax Highlighting & Autosuggestions ###

Command Syntax Highlighting & Auto-Suggestions based on command history
Download zsh-autosuggestions && zsh-syntax-highlighting

$ git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

Activate the newly downloaded plugins by appending into your .zshrc file.

$ nano ~/.zshrc		

Then find the line and append, I prefer to do it vertically.  Originally you'll come to "plugins=(git)" and you want it to read like so:

$ plugins=(
git
zsh-autosuggestions
zsh-syntax-highlighting
)
