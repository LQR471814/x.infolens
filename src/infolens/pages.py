import requests


def dump_content():
    # crawl_result = requests.post(
    #     "http://127.0.0.1:3000/crawl",
    #     json={
    #         "url": "https://firecrawl.dev",
    #     },
    #     headers={"Content-Type": "application/json"},
    # ).json()
    #
    # if not crawl_result.success:
    #     raise Exception(f"request failed: {crawl_result}")

    # url = crawl_result.url
    # url = "http://127.0.0.1:3000/v1/crawl/46f375c4-963f-4b8e-88c4-1a647c4c35a0"
    url = "http://127.0.0.1:3000/v1/crawl/fb388d9d-53c2-4ebe-a151-f903b98dd21e"

    content = requests.get(url).json()
    for i, page in enumerate(content['data']):
        with open(f"tmp/{i}.md", "w") as f:
            f.write(f"{page['metadata']['url']}\n\n======\n\n{page['markdown']}")
