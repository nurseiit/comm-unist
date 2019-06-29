import requests

cookies = {
    'JSESSIONID': 'DDBB37F8024C09AEDACE7325348C91F1',
}

headers = {
    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:66.0) Gecko/20100101 Firefox/66.0',
    'Accept': 'application/json, text/javascript, */*; q=0.01',
    'Accept-Language': 'en-US,en;q=0.5',
    'Referer': 'https://attend.unist.ac.kr/atdc/atdc',
    'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
    'X-Requested-With': 'XMLHttpRequest',
    'DNT': '1',
    'Connection': 'keep-alive',
}

data = {
    'idno': '20172001',
    'psco': 'ECE',
    'sjco': 'CSE20101',
    'mac': 'MAC Address?',
    'date': '20190416143520',  # 'yyyyMMddHHmmss',
    'uuid': 'My UUID Can be Random, I think',
    'check': '1',  # '1 or 3, should be 1 when correct',
    'auth': 'NEED TO FIGURE OUT'
}

response = requests.post('https://attend.unist.ac.kr/atdc/atdc_chk',
                         headers=headers, cookies=cookies, data=data)

print(response.json())
