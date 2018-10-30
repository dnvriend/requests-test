import requests
from requests.auth import HTTPBasicAuth


def test_make_request():
    resp = requests.get('http://httpbin.org:80/anything', timeout=1)
    resp = requests.get('https://httpbin.org/anything', timeout=1)


def test_make_request_with_basic_auth():
    resp = requests.get('https://httpbin.org/anything', auth=HTTPBasicAuth('user', 'secret'))
