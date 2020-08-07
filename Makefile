deploy:
	git push
	git -C themes/forty fetch origin
	git -C themes/forty rebase origin/master
	rm -rf public
	hugo
	scp -r public/* ansible@eldraine:sites/magic.afri.cz/
	ssh eldraine -l ansible chgrp -R nginx sites/magic.afri.cz/
