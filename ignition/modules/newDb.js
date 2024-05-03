const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");



module.exports = buildModule("StudentDatabase", (m) => {


  const students = m.contract("StudentDatabase");

  return { students };
});