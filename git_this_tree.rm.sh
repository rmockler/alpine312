find ./ -name .git -printf "cd %h;ls \$PWD/%f -d ;git remote add sshorigin git@bitbucket.org:$USERACC/%P;\n"|sh
find ./ -name .git -printf "cd %h;ls \$PWD/%f -d ;git remote set-url sshorigin git@bitbucket.org:$USERACC/%P;\n"|sh
find ./ -name .git -printf "cd %h;ls \$PWD/%f -d ;git remote add bitb git@bitbucket.org:$USERACC/%P;\n"|sh
find ./ -name .git -printf "cd %h;ls \$PWD/%f -d ;git remote set-url bitb git@bitbucket.org:$USERACC/%P;\n"|sh
find ./ -name .git -printf "cd %h;ls \$PWD/%f -d ;git remote add gith git@github.com:$USERACC/%P;\n"|sh
find ./ -name .git -printf "cd %h;ls \$PWD/%f -d ;git remote set-url gith git@github.com:$USERACC/%P;\n"|sh
find ./ -name .git -printf "cd %h;pwd;git status;\n"|sh
find ./ -name .git -printf "cd %h;pwd;git push sshorigin;\n"|sh
find ./ -name .git -printf "cd %h;pwd;git status;\n"|sh
find ./ -name .git -printf "cd %h;pwd;git add *;\n"|sh
find ./ -name .git -printf "cd %h;pwd;git commit -m 'more updates via ssh';\n"|sh
find ./ -name .git -printf "cd %h;pwd;git status;\n"|sh
find ./ -name .git -printf "cd %h;pwd;git push sshorigin;\n"|sh
find ./ -name .git -printf "cd %h;pwd;git push git;\n"|sh
