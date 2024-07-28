# FZF WIKI
A simple personal wiki implementation using Fzf
## About the project
The script implements a simple Terminal User Interfact powered by fzf that manages a wiki collection of notes.
FZF WIKI includes the following features:
- Creation of wiki notes based on standard template
- Search of notes in the wiki collection that contain a search term
- Preview of the notes and access to the note in edit mode

## Getting started
Follow the directions below to install the script on your machine.

### Requirements
FZF WIKI requires Neovim, Zsh and Fzf (3.8 or above); however the script can be easily adjusted to work in other shells and use other text editors.

### Installation
1. Clone the repo on your machine
2. Run the Make script with the command:

''' bash
make install WIKIDIR=<wiki_directory> SCRIPTDIR=<install_directory
'''

where WIKIDIR is the directory where you want to save the wiki collection of notes; SCRIPTDIR is folder where you wish to save your the script.
Note that the during the installation the script is modified to point towards the WIKIDIR, so when you launch the script FZF WIKI knows where your notes are.

Since the script works with Zsh, you will need to source the script during the Zsh initialisation, this can be done by adding this line in your *zshrc* file:

''' bash
source /path/to/script
'''

I also like to set up a key binding for the script, this could be done by adding this line in your *zshrc* file:

''' bash
bindkey '^[[15~' wiki		#this adds a key binding to <F5> 
'''

## Usage
When FZF WIKI is launched you will find an Fzf interface listing the content of your WIKIDIR with preview. 
Files can then be filtered by typing the search term in the prompt, note that this won't filter based on the name of the file, it will instead filter based on the text contained in the notes.

A file can be accessed in edit mode by selecting it in the list, closing the editor will take you back to the Fzf interface.

A new note can be created by typing in the prompt the title of the desired note and pressing CTRL-w; this will create a new file with the desired title in the wiki collection folder, it will then open the file in edit mode - the file is also pre-formatted with some basic front matter. 
Saving the file will take you back to the Fzf interface.

That's it! 

## Roadmap
The project does not have a roadmap, I just wanted a quick tool to handles my notes.

## Contributing
If you would like to suggest some changes to make FZF WIKI cooler, please fork the repo and create a pull request.

## Licence 
Distributed under the MIT License.

## Contact
Christian Valdivia Torres  <c.valdivia.torres@gmail.com>


