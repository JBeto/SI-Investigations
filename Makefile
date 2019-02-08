target: investigate notes talkto arrest commands login

investigate:
	g++ -std=c++17 .Secret/Investigate/investigate.cpp  .Secret/Investigate/game.cpp -o .Secret/Investigate/investigate -lstdc++fs 

notes:
	g++ -std=c++17 .Secret/Notes/notes.cpp  .Secret/Notes/game.cpp -o .Secret/Notes/notes -lstdc++fs 

talkto:
	g++ -std=c++17 .Secret/Talkto/talkto.cpp  .Secret/Talkto/game.cpp -o .Secret/Talkto/talkto -lstdc++fs 

arrest:
	g++ -std=c++17 .Secret/Arrest/arrest.cpp -o .Secret/Arrest/arrest

commands:
	g++ -std=c++17 .Secret/Commands/commands.cpp -o .Secret/Commands/commands

login:
	g++ -std=c++17 .Secret/Login/login.cpp -o .Secret/Login/login