PATH=$PATH:$(pwd)/Commands

make

mv .Secret/Arrest/arrest Commands/arrest
mv .Secret/Commands/commands Commands/commands
mv .Secret/Talkto/talkto Commands/talkto
mv .Secret/Investigate/investigate Commands/investigate
mv .Secret/Notes/notes Commands/notes

mv .Secret/Login/login .Secret/Andre_House/Laptop/login
mv .Secret/Database/libdatabase.a .Secret/machine_learning/libdatabase.a
chmod -r Mystery/Chapter_1/SIPD/Computer/police_report.txt