ENVBIN=$(CURDIR)/env/bin
PIP=$(ENVBIN)/pip
PYTHON=$(ENVBIN)/python

all: env

# target: help - Display callable targets
help:
	echo "Callable targets:"
	@egrep "^# target:" [Mm]akefile | sed 's/# target: //'

env: requirements.txt $(ENVBIN)
	$(PIP) install -M -r requirements.txt
	touch env

$(ENVBIN):
	virtualenv --no-site-packages env

# target: run - Run application server
.PHONY: run
run: env/ test.py
	$(PYTHON) test.py