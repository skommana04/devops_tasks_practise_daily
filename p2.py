import json

try:
    with open ("servers.json", "r") as file:
        #for file to dic we use json.load()
        #for sting to dictionary we use json.loads()
        #content = file.read()--read as string
        #data = json.loads(content)--covert string to dictionary
        content = json.load(file)  #directly converts file to dictionary
        a = content['servers']
        print("High cpu servers are:")
        for i in a:
            if i["cpu"] > 80:
                print(f"{i['name']} : {i['cpu']}%")
        #print(a)
except FileNotFoundError:
    print("Error: file not found")
except json.JSONDecodeError:
    print("Error: Invalid JSON format")
except Exception as e:
    print(f"Unexpected error: {e}")

