import requests
try:
    r = requests.get('http://localhost')
    if r.status_code != 200:
        print("Health check failed")
except Exception as e:
    print("Exception occurred:", e)
