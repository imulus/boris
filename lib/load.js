module.exports = Load;

function Load (user, slackName, value, updated) {
  this.user = user;
  this.slackName = slackName;
  this.value = value;
  if (this.value < 0) this.value = 0;
  if (this.value > 100) this.value = 100;
  this.updated = updated || new Date().getTime();
}

Load.fromJSON = function(json) {
  var payload = JSON.parse(json);
  return new Load(payload.name, json.slack_name, parseInt(payload.load), Date.parse(payload.updated_at));
}

Load.fromResponseObject = function(responseObject) {
	return new Load(responseObject.name, responseObject.slack_name, parseInt(responseObject.load), Date.parse(responseObject.updated_at));
}