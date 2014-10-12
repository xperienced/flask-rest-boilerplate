ENVBIN=$(CURDIR)/env/bin
PIP=$(ENVBIN)/pip
PYTHON=$(ENVBIN)/python

all: env

help:
	@egrep "^# target:" [Mm]akefile

env: requirements.txt $(ENVBIN)
	$(PIP) install -M -r requirements.txt
	touch env

$(ENVBIN):
	virtualenv --no-site-packages env

.PHONY: run
run: env/ test.py
	$(PYTHON) test.py