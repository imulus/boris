module.exports = Morale;

function Morale (value,updated) {
  this.value = value;
  if (this.value < 0) this.value = 0;
  if (this.value > 100) this.value = 100;
  this.updated = updated || new Date().getTime();
}

Morale.prototype.toString = function() {
  return [this.value, this.updated].join(",")
}

Morale.prototype.toJSON = function() {
  return {
    value: this.value,
    updated: this.updated
  }
}

Morale.fromString = function(string) {
  var values = string.split(",");
  return new Morale(parseInt(values[0]), parseInt(values[1]));
}

Morale.fromJSON = function(json) {
  var morale = JSON.parse(json);
  return new Morale(parseInt(morale.value), parseInt(morale.updated));
}
