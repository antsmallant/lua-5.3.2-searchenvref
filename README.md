# lua hack

## About
this is a demo, showing how to get all field names that a function used to index from the upvalue _ENV.


## Usage
* chmod +x ./runtest && ./runtest


## The functions added to do the job
ldblib.c : db_searchenvref  
ldebug.c : luaG_searchenvref