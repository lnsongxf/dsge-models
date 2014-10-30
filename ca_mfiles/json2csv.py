## take a JSON file of results and turn it into a CSV file
# (Michele) I add also this file for the CA model where was missing (maybe it is not useful as the save_results.py does it on its own).

from json import load

# pull JSON data into python dict
json_data = open('ca_results.json')
data = load(json_data)
json_data.close()

# create csv file to write to
f = open('../public/ca_results.csv','w')
for key in data.keys():
    f.write(str(key) + ', ' + str(data[key])[1:-1] + '\n')    
f.close()


