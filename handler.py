import requests

URL = "top-secret URL"


def esep_webhook(event, context):
    issue_url = event["issue"]["html_url"]
    payload = {"text": f"Issue Created: {issue_url}"}

    response = requests.post(URL, json=payload)
    return response.text
