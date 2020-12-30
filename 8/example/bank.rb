require "./deep_freezable"

class Bank
  extend DeepFreezable

  CURRENCIES = deep_freeze({
    "japan": "yen",
    "US": "doller",
    "India": "rupee"
  })
end