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

# https://attend.unist.ac.kr/atdc/login_access?{pass=Aktl7891011@, idno=nurs, uuid=ffffffff-9cba-bfaf-ffff-ffff99d603a9}

# data = {
#     'menu': '',
#     'idno': '',
#     'iddi': '1',
#     'psco': '',
#     'sjco': '',
#     'iden': '',
#     'yyse': '2019090',
#     '_csrf': '1d0272f4-df43-4070-b56a-4e4968509ff0'
# }

data = {
    'idno': 'nurs',
    'pass': 'Aktl7891011@',
    'uuid': 'ffffffff-9cba-bfaf-ffff-ffff99d603a9'
}

response = requests.post('https://attend.unist.ac.kr/atdc/login_access',
                         headers=headers, cookies=cookies, data=data)

# response = requests.post('https://attend.unist.ac.kr/atdc/atdc/stud_menu',
#                          headers=headers, cookies=cookies, data=data)

print(response.json())
