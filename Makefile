deploy:
	git -C themes/forty fetch origin
	git -C themes/forty rebase origin/master
	rm -rf public
	hugo
	scp -r public/* ansible@eldraine:sites/magic.afri.cz/