#!/usr/bin/env python3
from cortexutils.responder import Responder
import requests

class Shuffle(Responder):
    def __init__(self):
        Responder.__init__(self)
        self.api_key = self.get_param("config.api_key", "")
        self.url = self.get_param("config.url", "")
        self.workflow_id = self.get_param("config.workflow_id", "")

    def run(self):
        Responder.run(self)

        # Extract data from the Cortex input
        input_data = self.get_data()

        # Construct the request payload
        payload = {
            "execution_argument": input_data,
            "start": ""
        }

        # Construct the request URL
        parsed_url = "%s/api/v1/workflows/%s/execute" % (self.url, self.workflow_id)

        # Set the request headers
        headers = {
            "Authorization": "Bearer %s" % self.api_key,
            "Content-Type": "application/json"
        }

        # Make the POST request with the payload
        r = requests.post(parsed_url, headers=headers, json=payload)

        # Handle the response
        if r.status_code == 200:
            self.report({"Message": "Executed workflow"})
        else:
            self.error(r.status_code)

if __name__ == '__main__':
    Shuffle().run()
