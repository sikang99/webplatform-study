#
# Makefile for python-study
#
.PHONY: usage edit build clean git
VERSION=0.0.0.3
#----------------------------------------------------------------------------------
usage:
	@echo "make [edit|build]"
#----------------------------------------------------------------------------------
edit e:
	@echo "make (edit:e) [history]"
edit-go eg:
	
edit-history eh:
	vi HISTORY.md
#----------------------------------------------------------------------------------
build b:
#----------------------------------------------------------------------------------
clean:
	rm -f bin/*
	docker system prune -f
#----------------------------------------------------------------------------------
run r:
	@echo "make (run:r) []"

#----------------------------------------------------------------------------------
venv v:
	@echo "> make (venv) [create|activate|deactivate|require|list]"

venv-create vc:
	python3 -m venv .venv

venv-activate va:
	@echo "source .venv/bin/activate"

venv-deactivate vd:
	@echo "deactivate"

venv-require vr:
	@pip freeze > requirements.txt  
	@cat requirements.txt

venv-list vl:
	@python3 -m pip install --upgrade pip
	@pip list

#----------------------------------------------------------------------------------
git g:
	@echo "make (git:g) [update|store]"
git-update gu:
	git add .
	git commit -a -m "$(VERSION),$(USER)"
	git push
git-store gs:
	git config credential.helper store
#----------------------------------------------------------------------------------

