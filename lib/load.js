module.exports = Load;

function Load (user, value, updated) {
  this.user = user;
  this.value = value;
  if (this.value < 0) this.value = 0;
  if (this.value > 100) this.value = 100;
  this.updated = updated || new Date().getTime();
}

Load.fromJSON = function(json) {
  var payload = JSON.parse(json);
  return new Load(payload.name, parseInt(payload.load), Date.parse(payload.updated_at));
}

Load.fromResponseObject = function(responseObject) {
	return new Load(responseObject.name, parseInt(responseObject.load), Date.parse(responseObject.updated_at));
}