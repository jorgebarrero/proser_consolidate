"use strict";



module.exports = function(InvReport) {
  //**********************REMOTE METHOD AUXILIAR REPORT**********************/

  InvReport.agentsAuxiliarReport = async function(userSelection) {
    return agentsAuxiliar.agentsAuxiliarReport(userSelection);
  };

  InvReport.remoteMethod("agentsAuxiliarReport", {
    accepts: {
      arg: "userSelection",
      type: "userSelection",
      http: { source: "body" }
    },
    returns: { type: "array", root: "true" },
    description: ["Returns values of auxiliar report"]
  });

};
