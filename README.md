These scripts work together to randomize the generation of computer music in Sonic-Pi (http://www.sonic-pi.net). 

The first step in the chain is the node-RED json file, which creates multiple nodes, the important ones being a Twitter watcher to respond to instances of specific search terms, and an exec node to receive triggers and launch shell scripts on the host machine. Those shell scripts in turn call up Ruby files to generate audio in Sonic-Pi.

By careful selection of search terms, you can achieve multiple instances of .rb file execution, creating additional layers of audio.
The relative density created by each .rb file will contribute to the overall density or sparcity of the soundscape.

This method of algorithmic composition requires an installation of node-RED (https://nodered.org), the Twitter node (https://www.npmjs.com/package/node-red-node-twitter), Sonic-Pi (http://www.sonic-pi.net),
and the command line untility sonic-pi-cli (https://github.com/Widdershin/sonic-pi-cli).

Copy the json file and paste it from the clipboard into a new flow in your node-red instance. Log into the Twitter node using valid account credentials. Adjust the exec node pathways to target the shell scripts where they exist on your machine.

See the runner.sh and stopper.sh shell script examples. Adjust the syntax as necessary for your system.
