import flask
import json

app = flask.Flask(__name__)

@app.route("/", methods=["POST"])
def hook():
  data = json.loads(flask.request.data)
  return flask.jsonify(status=True, message=json.dumps(data, indent=4))
  # return flask.jsonify(status=True, message="My message")


@app.route("/")
def main():
  return flask.jsonify(status=True, message="got a GET request")


if __name__ == "__main__":
  app.run()

