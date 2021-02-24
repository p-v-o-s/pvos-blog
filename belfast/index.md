---
layout: layout.njk
---

## Belfast Tide Level Monitoring

### Creating a new data feed on belfast.pvos.org

1. Create a new data feed at [belfast.pvos.org](http://belfast.pvos.org)
2. Make note of: the feed's PUBLIC_KEY and PRIVATE_KEY (e.g. copy them from the site, paste them into a local text editor)
3. Your data is now available at "http://belfast.pvos.org/data/[PUBLIC_KEY].  See below for how to add new data.

### Posting new data to a belfast.pvos.org feed

New data can be added to your feed via HTTP POST; note that you will need both the PUBLIC_KEY and PRIVATE_KEY for your feed in order to be allowed to post new data. 

Below is an example of a Python script to post new values:


```
import requests
import random # only used to generate example data

# credentials for belfast.pvos.org (for this particular sensor feed)
public_key = "[YOUR PUBLIC_KEY]"
private_key = "[YOUR PRIVATE_KEY]"

# these will stay fixed:
base_url = "http://belfast.pvos.org/data/"
full_url = base_url+public_key

# example data:
distance = random.randint(10,20)

# the JSON object we'll be POST-ing to 'full_url' ...
# NOTE: we must include the private_key as one of the parameters;
# and 'distance_meters' is one of several possible parameters in the postgres database.
myobj = {"private_key":private_key, "distance_meters":distance}

x = requests.post(full_url, data = myobj)
print (distance)
print(x.text)
```
