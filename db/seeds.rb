User.create!([
  {name: "Test name", email: "test@test.com", password_digest: "$2a$12$5ADbgxezP/GD9TRsuHTs3.p3LoKMSoL11pCi/WRbfkP/Q87Hfee5O"},
  {name: "Ian Silber", email: "ian@test.com", password_digest: "$2a$12$OJs0vWSPNdOoba9ZEtDp6.zbMMMPdqkjtWGMHmWmCQa/mKvCJUI2C"}
])
Position.create!([
  {asset: "ETHBTC", amount: 12, price: "0", user_id: 1},
  {asset: "LUNAUSDT", amount: 107, price: "0", user_id: 1},
  {asset: "BTCUSDT", amount: 1, price: "0", user_id: 1},
  {asset: "BTCUSDT", amount: 1, price: "0", user_id: 2}
])