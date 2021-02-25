---
layout: layout.njk
---


## Using [belfast.pvos.org](http://belfast.pvos.org)

<iframe width="560" height="315" src="https://www.youtube.com/embed/UAZAA2opqYc" frameborder="0" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Creating a new data feed

1. Create a new data feed at [belfast.pvos.org](http://belfast.pvos.org)
2. Make note of: the feed's PUBLIC_KEY and PRIVATE_KEY (e.g. copy them from the site, paste them into a local text editor)
3. Your data is now available at "http://belfast.pvos.org/data/[PUBLIC_KEY]".  See below for how to add new data.

### Posting data

New data can be added to your feed via HTTP POST; note that you will need both the PUBLIC_KEY and PRIVATE_KEY for your feed in order to be allowed to post new data. 

Every POST must include the "private_key" field, and may additionally include any of the field names that are in the belfast.pvos.org database.  

#### Allowed parameters

As of 24 FEB 2021, the allowed parameters in the database are the following:

```
temperature_c, humidity_rh, distance_meters, pressure_mbar, battery_volts, gps_lat, gps_lon, gps_alt, distance_meters_1, distance_meters_2, distance_meters_3, temperature_c_1, temperature_c_2, temperature_c_3, voltage_1, voltage_2, voltage_3, aux_1, aux_2, aux_3, log
```

And an example JSON object to send to the server sending all parameters would look like this:

```
{"private_key":"[PRIVATE_KEY]", "temperature_c":0, "humidity_rh":0, "distance_meters":0, "pressure_mbar":0, "battery_volts":0, "gps_lat":0, "gps_lon":0, "gps_alt":0, "distance_meters_1":0, "distance_meters_2":0, "distance_meters_3":0, "temperature_c_1":0, "temperature_c_2":0, "temperature_c_3":0, "voltage_1":0, "voltage_2":0, "voltage_3":0, "aux_1":0, "aux_2":0, "aux_3":0, "log":"LOG MESSAGE}
```

#### Example Python script 

Below is an example of a Python script to post a new (random) distance value to belfast.pvos.org:

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
### Analyzing data

An example Jupyter notebook for importing CSV data from belfast.pvos.org and plotting it is in the 'jupyter' folder in the gitlab repo -- [here](https://gitlab.com/p-v-o-s/agroeco/belfast-feed/-/blob/master/jupyter/cross_compare.ipynb)

![](/img/belfast/jupyter.png)
