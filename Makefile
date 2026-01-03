install : 
	#install the library 
	pip install -r requirements.txt 
lin  : 
    #pylint
test : 
    #tesst 
deploy : 
    #deploy 

all : install lin test deploy 
