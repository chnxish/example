import aiohttp
import asyncio
import requests
import time

now = lambda: time.time()

def requests_parse_url(url):
    resp = requests.get(url)
    print(resp.status_code)

def requests_run():
    url = 'https://www.douban.com/search?q={}'
    for i in range(1, 101):
        requests_parse_url(url.format(i))

async def aiohttp_parse_url(url):
    async with aiohttp.ClientSession() as session:
        async with session.get(url) as resp:
            print(resp.status)

async def aiohttp_run():
    url = 'https://www.douban.com/search?q={}'
    tasks = [aiohttp_parse_url(url.format(x)) for x in range(1, 101)]
    await asyncio.wait(tasks)

if __name__ == '__main__':
    start_time = now()
    requests_run()
    print('Use requests: {}'.format(now() - start_time))
    start_time = now()
    loop = asyncio.get_event_loop()
    loop.run_until_complete(aiohttp_run())
    print('Use aiohttp: {}'.format(now() - start_time))
